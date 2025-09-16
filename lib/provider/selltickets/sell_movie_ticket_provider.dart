// import 'dart:io';
// import 'package:backup_ticket/model/movie_ticket_model.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/foundation.dart';
// import 'package:image_picker/image_picker.dart';

// class MovieTicketProvider with ChangeNotifier {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final FirebaseStorage _storage = FirebaseStorage.instance;
//   final String _collectionName = 'movie_tickets';

//   List<MovieTicket> _tickets = [];
//   bool _isLoading = false;
//   String? _error;

//   // Getters
//   List<MovieTicket> get tickets => _tickets;
//   bool get isLoading => _isLoading;
//   String? get error => _error;

//   // Set loading state
//   void _setLoading(bool loading) {
//     _isLoading = loading;
//     notifyListeners();
//   }

//   // Set error state
//   void _setError(String? error) {
//     _error = error;
//     notifyListeners();
//   }

//   // Upload image to Firebase Storage
//   Future<String?> uploadTicketImage(XFile imageFile, String ticketId) async {
//     try {
//       _setLoading(true);
      
//       final ref = _storage.ref().child('ticket_images/$ticketId.jpg');
      
//       if (kIsWeb) {
//         // For web platform
//         await ref.putData(await imageFile.readAsBytes());
//       } else {
//         // For mobile platforms
//         await ref.putFile(File(imageFile.path));
//       }
      
//       final downloadUrl = await ref.getDownloadURL();
//       return downloadUrl;
//     } catch (e) {
//       _setError('Failed to upload image: ${e.toString()}');
//       return null;
//     } finally {
//       _setLoading(false);
//     }
//   }

//   // Create a new movie ticket
//   Future<String?> createMovieTicket(MovieTicket ticket, {XFile? imageFile}) async {
//     try {
//       _setLoading(true);
//       _setError(null);

//       // Add the ticket to Firestore first to get document ID
//       DocumentReference docRef = await _firestore
//           .collection(_collectionName)
//           .add(ticket.toMap());

//       String? imageUrl;
      
//       // Upload image if provided
//       if (imageFile != null) {
//         imageUrl = await uploadTicketImage(imageFile, docRef.id);
        
//         if (imageUrl != null) {
//           // Update the document with image URL
//           await docRef.update({'ticketImageUrl': imageUrl});
//         }
//       }

//       // Fetch updated tickets
//       await fetchAllTickets();
      
//       return docRef.id;
//     } catch (e) {
//       _setError('Failed to create ticket: ${e.toString()}');
//       return null;
//     } finally {
//       _setLoading(false);
//     }
//   }

//   // Fetch all movie tickets
//   Future<void> fetchAllTickets() async {
//     try {
//       _setLoading(true);
//       _setError(null);

//       QuerySnapshot snapshot = await _firestore
//           .collection(_collectionName)
//           .orderBy('createdAt', descending: true)
//           .get();

//       _tickets = snapshot.docs.map((doc) {
//         return MovieTicket.fromMap(
//           doc.data() as Map<String, dynamic>,
//           doc.id,
//         );
//       }).toList();

//       notifyListeners();
//     } catch (e) {
//       _setError('Failed to fetch tickets: ${e.toString()}');
//     } finally {
//       _setLoading(false);
//     }
//   }

//   // Fetch tickets by user email
//   Future<List<MovieTicket>> fetchTicketsByUser(String email) async {
//     try {
//       _setLoading(true);
//       _setError(null);

//       QuerySnapshot snapshot = await _firestore
//           .collection(_collectionName)
//           .where('email', isEqualTo: email)
//           .orderBy('createdAt', descending: true)
//           .get();

//       List<MovieTicket> userTickets = snapshot.docs.map((doc) {
//         return MovieTicket.fromMap(
//           doc.data() as Map<String, dynamic>,
//           doc.id,
//         );
//       }).toList();

//       return userTickets;
//     } catch (e) {
//       _setError('Failed to fetch user tickets: ${e.toString()}');
//       return [];
//     } finally {
//       _setLoading(false);
//     }
//   }

//   // Update ticket status (for admin use)
//   Future<bool> updateTicketStatus(String ticketId, String status) async {
//     try {
//       _setLoading(true);
//       _setError(null);

//       await _firestore
//           .collection(_collectionName)
//           .doc(ticketId)
//           .update({'status': status});

//       // Update local list
//       int index = _tickets.indexWhere((ticket) => ticket.id == ticketId);
//       if (index != -1) {
//         _tickets[index] = _tickets[index].copyWith(status: status);
//         notifyListeners();
//       }

//       return true;
//     } catch (e) {
//       _setError('Failed to update ticket status: ${e.toString()}');
//       return false;
//     } finally {
//       _setLoading(false);
//     }
//   }

//   // Delete a movie ticket
//   Future<bool> deleteMovieTicket(String ticketId) async {
//     try {
//       _setLoading(true);
//       _setError(null);

//       // Find the ticket to get image URL
//       MovieTicket? ticket = _tickets.firstWhere(
//         (t) => t.id == ticketId,
//         orElse: () => throw Exception('Ticket not found'),
//       );

//       // Delete image from storage if it exists
//       if (ticket.ticketImageUrl != null && ticket.ticketImageUrl!.isNotEmpty) {
//         try {
//           await _storage.refFromURL(ticket.ticketImageUrl!).delete();
//         } catch (e) {
//           print('Failed to delete image: $e');
//         }
//       }

//       // Delete document from Firestore
//       await _firestore.collection(_collectionName).doc(ticketId).delete();

//       // Remove from local list
//       _tickets.removeWhere((ticket) => ticket.id == ticketId);
//       notifyListeners();

//       return true;
//     } catch (e) {
//       _setError('Failed to delete ticket: ${e.toString()}');
//       return false;
//     } finally {
//       _setLoading(false);
//     }
//   }

//   // Get tickets by status
//   List<MovieTicket> getTicketsByStatus(String status) {
//     return _tickets.where((ticket) => ticket.status == status).toList();
//   }

//   // Get tickets by date range
//   List<MovieTicket> getTicketsByDateRange(DateTime startDate, DateTime endDate) {
//     return _tickets.where((ticket) {
//       return ticket.showDate.isAfter(startDate.subtract(const Duration(days: 1))) &&
//              ticket.showDate.isBefore(endDate.add(const Duration(days: 1)));
//     }).toList();
//   }

//   // Stream tickets for real-time updates
//   Stream<List<MovieTicket>> streamTickets() {
//     return _firestore
//         .collection(_collectionName)
//         .orderBy('createdAt', descending: true)
//         .snapshots()
//         .map((snapshot) {
//       return snapshot.docs.map((doc) {
//         return MovieTicket.fromMap(
//           doc.data() as Map<String, dynamic>,
//           doc.id,
//         );
//       }).toList();
//     });
//   }

//   // Stream tickets by user
//   Stream<List<MovieTicket>> streamUserTickets(String email) {
//     return _firestore
//         .collection(_collectionName)
//         .where('email', isEqualTo: email)
//         .orderBy('createdAt', descending: true)
//         .snapshots()
//         .map((snapshot) {
//       return snapshot.docs.map((doc) {
//         return MovieTicket.fromMap(
//           doc.data() as Map<String, dynamic>,
//           doc.id,
//         );
//       }).toList();
//     });
//   }

//   // Clear error
//   void clearError() {
//     _setError(null);
//   }
// }













import 'dart:io';
import 'package:backup_ticket/model/movie_ticket_model.dart';
import 'package:backup_ticket/services/cloudinary_image_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

class MovieTicketProvider with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _collectionName = 'movie_tickets';

  List<MovieTicket> _tickets = [];
  bool _isLoading = false;
  String? _error;

  // Getters
  List<MovieTicket> get tickets => _tickets;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // Set loading state
  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  // Set error state
  void _setError(String? error) {
    _error = error;
    notifyListeners();
  }

  // Upload image to Cloudinary
  Future<String?> uploadTicketImage(XFile imageFile) async {
    try {
      _setLoading(true);
      
      String? imageUrl;
      
      if (kIsWeb) {
        // For web platform - you'll need to modify CloudinaryService for web support
        // For now, this will handle mobile/desktop
        final bytes = await imageFile.readAsBytes();
        // You might need to create a temporary file for web or modify CloudinaryService
        imageUrl = await CloudinaryService.uploadImageFromBytes(bytes, imageFile.name);
      } else {
        // For mobile platforms
        final file = File(imageFile.path);
        imageUrl = await CloudinaryService.uploadImage(file);
      }
      
      return imageUrl;
    } catch (e) {
      _setError('Failed to upload image: ${e.toString()}');
      return null;
    } finally {
      _setLoading(false);
    }
  }

  // Create a new movie ticket
  Future<String?> createMovieTicket(MovieTicket ticket, {XFile? imageFile}) async {
    try {
      _setLoading(true);
      _setError(null);

      String? imageUrl;
      
      // Upload image to Cloudinary if provided
      if (imageFile != null) {
        imageUrl = await uploadTicketImage(imageFile);
        
        if (imageUrl == null) {
          _setError('Failed to upload image');
          return null;
        }
      }

      // Create ticket data with image URL
      Map<String, dynamic> ticketData = ticket.toMap();
      if (imageUrl != null) {
        ticketData['ticketImageUrl'] = imageUrl;
      }

      // Add the ticket to Firestore
      DocumentReference docRef = await _firestore
          .collection(_collectionName)
          .add(ticketData);

      // Fetch updated tickets
      await fetchAllTickets();
      
      return docRef.id;
    } catch (e) {
      _setError('Failed to create ticket: ${e.toString()}');
      return null;
    } finally {
      _setLoading(false);
    }
  }

  // Fetch all movie tickets
  Future<void> fetchAllTickets() async {
    try {
      _setLoading(true);
      _setError(null);

      QuerySnapshot snapshot = await _firestore
          .collection(_collectionName)
          .orderBy('createdAt', descending: true)
          .get();

      _tickets = snapshot.docs.map((doc) {
        return MovieTicket.fromMap(
          doc.data() as Map<String, dynamic>,
          doc.id,
        );
      }).toList();

      notifyListeners();
    } catch (e) {
      _setError('Failed to fetch tickets: ${e.toString()}');
    } finally {
      _setLoading(false);
    }
  }

  // Fetch tickets by user email
  Future<List<MovieTicket>> fetchTicketsByUser(String email) async {
    try {
      _setLoading(true);
      _setError(null);

      QuerySnapshot snapshot = await _firestore
          .collection(_collectionName)
          .where('email', isEqualTo: email)
          .orderBy('createdAt', descending: true)
          .get();

      List<MovieTicket> userTickets = snapshot.docs.map((doc) {
        return MovieTicket.fromMap(
          doc.data() as Map<String, dynamic>,
          doc.id,
        );
      }).toList();

      return userTickets;
    } catch (e) {
      _setError('Failed to fetch user tickets: ${e.toString()}');
      return [];
    } finally {
      _setLoading(false);
    }
  }

  // Update ticket status (for admin use)
  Future<bool> updateTicketStatus(String ticketId, String status) async {
    try {
      _setLoading(true);
      _setError(null);

      await _firestore
          .collection(_collectionName)
          .doc(ticketId)
          .update({'status': status});

      // Update local list
      int index = _tickets.indexWhere((ticket) => ticket.id == ticketId);
      if (index != -1) {
        _tickets[index] = _tickets[index].copyWith(status: status);
        notifyListeners();
      }

      return true;
    } catch (e) {
      _setError('Failed to update ticket status: ${e.toString()}');
      return false;
    } finally {
      _setLoading(false);
    }
  }

  // Delete a movie ticket
  Future<bool> deleteMovieTicket(String ticketId) async {
    try {
      _setLoading(true);
      _setError(null);

      // Find the ticket to get image URL
      MovieTicket? ticket = _tickets.firstWhere(
        (t) => t.id == ticketId,
        orElse: () => throw Exception('Ticket not found'),
      );

      // Delete image from Cloudinary if it exists
      if (ticket.ticketImageUrl != null && ticket.ticketImageUrl!.isNotEmpty) {
        try {
          await CloudinaryService.deleteImage(ticket.ticketImageUrl!);
        } catch (e) {
          print('Failed to delete image from Cloudinary: $e');
          // Continue with document deletion even if image deletion fails
        }
      }

      // Delete document from Firestore
      await _firestore.collection(_collectionName).doc(ticketId).delete();

      // Remove from local list
      _tickets.removeWhere((ticket) => ticket.id == ticketId);
      notifyListeners();

      return true;
    } catch (e) {
      _setError('Failed to delete ticket: ${e.toString()}');
      return false;
    } finally {
      _setLoading(false);
    }
  }

  // Get tickets by status
  List<MovieTicket> getTicketsByStatus(String status) {
    return _tickets.where((ticket) => ticket.status == status).toList();
  }

  // Get tickets by date range
  List<MovieTicket> getTicketsByDateRange(DateTime startDate, DateTime endDate) {
    return _tickets.where((ticket) {
      return ticket.showDate.isAfter(startDate.subtract(const Duration(days: 1))) &&
             ticket.showDate.isBefore(endDate.add(const Duration(days: 1)));
    }).toList();
  }

  // Stream tickets for real-time updates
  Stream<List<MovieTicket>> streamTickets() {
    return _firestore
        .collection(_collectionName)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return MovieTicket.fromMap(
          doc.data() as Map<String, dynamic>,
          doc.id,
        );
      }).toList();
    });
  }

  // Stream tickets by user
  Stream<List<MovieTicket>> streamUserTickets(String email) {
    return _firestore
        .collection(_collectionName)
        .where('email', isEqualTo: email)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return MovieTicket.fromMap(
          doc.data() as Map<String, dynamic>,
          doc.id,
        );
      }).toList();
    });
  }

  // Clear error
  void clearError() {
    _setError(null);
  }
}