// import 'dart:io';
// import 'dart:typed_data';
// import 'package:backup_ticket/model/movie_category_model.dart';
// import 'package:backup_ticket/services/cloudinary_image_services.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// // import 'cloudinary_service.dart'; // Your cloudinary service
// // import 'movie_category.dart'; // Your model class

// class MovieCategoryProvider with ChangeNotifier {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final String _collectionName = 'movie_categories';

//   List<MovieCategory> _categories = [];
//   bool _isLoading = false;
//   String? _error;

//   // Getters
//   List<MovieCategory> get categories => _categories;
//   bool get isLoading => _isLoading;
//   String? get error => _error;

//   // Fetch all categories
//   // Future<void> fetchCategories() async {
//   //   _isLoading = true;
//   //   _error = null;
//   //   notifyListeners();

//   //   try {
//   //     final querySnapshot = await _firestore
//   //         .collection(_collectionName)
//   //         .orderBy('createdAt', descending: true)
//   //         .get();

//   //     _categories = querySnapshot.docs
//   //         .map((doc) => MovieCategory.fromJson({
//   //               'id': doc.id,
//   //               ...doc.data(),
//   //             }))
//   //         .toList();

//   //     _error = null;
//   //   } catch (e) {
//   //     _error = 'Failed to fetch categories: $e';
//   //     debugPrint(_error);
//   //   } finally {
//   //     _isLoading = false;
//   //     notifyListeners();
//   //   }
//   // }


//   Future<void> fetchCategories() async {
//   _isLoading = true;
//   _error = null;
//   notifyListeners();

//   try {
//     final querySnapshot = await _firestore
//         .collection(_collectionName)
//         .orderBy('createdAt', descending: true)
//         .get();

//     _categories = querySnapshot.docs
//         .map((doc) => MovieCategory.fromJson(
//               doc.data() as Map<String, dynamic>, // Map
//               doc.id,                             // Document ID
//             ))
//         .toList();

//     _error = null;
//   } catch (e) {
//     _error = 'Failed to fetch categories: $e';
//     debugPrint(_error);
//   } finally {
//     _isLoading = false;
//     notifyListeners();
//   }
// }


//   // Create category with image upload (for mobile/desktop)
//   Future<bool> createCategory({
//     required String name,
//     required File? imageFile,
//     required List<String> tags,
//     required List<String>languages,
//     String? description,
//   }) async {
//     _isLoading = true;
//     _error = null;
//     notifyListeners();

//     try {
//       // Upload image to Cloudinary
//       String? imageUrl;
//       if (imageFile != null) {
//         imageUrl = await CloudinaryService.uploadImage(imageFile);
//         if (imageUrl == null) {
//           throw Exception('Failed to upload image');
//         }
//       } else {
//         throw Exception('Image is required');
//       }

//       // Create category document
//       final categoryData = {
//         'name': name,
//         'imageUrl': imageUrl,
//         'tags': tags,
//         'description': description,
//         'createdAt': FieldValue.serverTimestamp(),
//         'updatedAt': null,
//         'isActive': true,
//         'movieCount': 0,
//       };

//       final docRef = await _firestore.collection(_collectionName).add(categoryData);

//       // Create local category object
//       final newCategory = MovieCategory(
//         id: docRef.id,
//         name: name,
//         imageUrl: imageUrl,
//         tags: tags,
//         description: description,
//         createdAt: DateTime.now(),
//         isActive: true,
//         movieCount: 0,
//         languages: 
//       );

//       _categories.insert(0, newCategory);
//       _error = null;
//       notifyListeners();
//       return true;
//     } catch (e) {
//       _error = 'Failed to create category: $e';
//       debugPrint(_error);
//       notifyListeners();
//       return false;
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }

//   // Create category with image bytes (for web)
//   Future<bool> createCategoryFromBytes({
//     required String name,
//     required Uint8List? imageBytes,
//     required String fileName,
//     required List<String> tags,
//     String? description,
//   }) async {
//     _isLoading = true;
//     _error = null;
//     notifyListeners();

//     try {
//       // Upload image to Cloudinary
//       String? imageUrl;
//       if (imageBytes != null) {
//         imageUrl = await CloudinaryService.uploadImageFromBytes(imageBytes, fileName);
//         if (imageUrl == null) {
//           throw Exception('Failed to upload image');
//         }
//       } else {
//         throw Exception('Image is required');
//       }

//       // Create category document
//       final categoryData = {
//         'name': name,
//         'imageUrl': imageUrl,
//         'tags': tags,
//         'description': description,
//         'createdAt': FieldValue.serverTimestamp(),
//         'updatedAt': null,
//         'isActive': true,
//         'movieCount': 0,
//       };

//       final docRef = await _firestore.collection(_collectionName).add(categoryData);

//       // Create local category object
//       final newCategory = MovieCategory(
//         id: docRef.id,
//         name: name,
//         imageUrl: imageUrl,
//         tags: tags,
//         description: description,
//         createdAt: DateTime.now(),
//         isActive: true,
//         movieCount: 0,
//       );

//       _categories.insert(0, newCategory);
//       _error = null;
//       notifyListeners();
//       return true;
//     } catch (e) {
//       _error = 'Failed to create category: $e';
//       debugPrint(_error);
//       notifyListeners();
//       return false;
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }

//   // Update category
//   Future<bool> updateCategory({
//     required String categoryId,
//     String? name,
//     File? imageFile,
//     Uint8List? imageBytes,
//     String? fileName,
//     List<String>? tags,
//     String? description,
//     bool? isActive,
//   }) async {
//     _isLoading = true;
//     _error = null;
//     notifyListeners();

//     try {
//       final categoryIndex = _categories.indexWhere((cat) => cat.id == categoryId);
//       if (categoryIndex == -1) {
//         throw Exception('Category not found');
//       }

//       final existingCategory = _categories[categoryIndex];
//       String? newImageUrl = existingCategory.imageUrl;

//       // Upload new image if provided
//       if (imageFile != null) {
//         // Delete old image
//         await CloudinaryService.deleteImage(existingCategory.imageUrl);
        
//         // Upload new image
//         newImageUrl = await CloudinaryService.uploadImage(imageFile);
//         if (newImageUrl == null) {
//           throw Exception('Failed to upload new image');
//         }
//       } else if (imageBytes != null && fileName != null) {
//         // Delete old image
//         await CloudinaryService.deleteImage(existingCategory.imageUrl);
        
//         // Upload new image from bytes
//         newImageUrl = await CloudinaryService.uploadImageFromBytes(imageBytes, fileName);
//         if (newImageUrl == null) {
//           throw Exception('Failed to upload new image');
//         }
//       }

//       // Update category document
//       final updateData = <String, dynamic>{
//         'updatedAt': FieldValue.serverTimestamp(),
//       };

//       if (name != null) updateData['name'] = name;
//       if (newImageUrl != existingCategory.imageUrl) updateData['imageUrl'] = newImageUrl;
//       if (tags != null) updateData['tags'] = tags;
//       if (description != null) updateData['description'] = description;
//       if (isActive != null) updateData['isActive'] = isActive;

//       await _firestore.collection(_collectionName).doc(categoryId).update(updateData);

//       // Update local category
//       _categories[categoryIndex] = existingCategory.copyWith(
//         name: name ?? existingCategory.name,
//         imageUrl: newImageUrl,
//         tags: tags ?? existingCategory.tags,
//         description: description ?? existingCategory.description,
//         isActive: isActive ?? existingCategory.isActive,
//         updatedAt: DateTime.now(),
//       );

//       _error = null;
//       notifyListeners();
//       return true;
//     } catch (e) {
//       _error = 'Failed to update category: $e';
//       debugPrint(_error);
//       notifyListeners();
//       return false;
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }

//   // Delete category
//   Future<bool> deleteCategory(String categoryId) async {
//     _isLoading = true;
//     _error = null;
//     notifyListeners();

//     try {
//       final categoryIndex = _categories.indexWhere((cat) => cat.id == categoryId);
//       if (categoryIndex == -1) {
//         throw Exception('Category not found');
//       }

//       final category = _categories[categoryIndex];

//       // Delete image from Cloudinary
//       await CloudinaryService.deleteImage(category.imageUrl);

//       // Delete from Firestore
//       await _firestore.collection(_collectionName).doc(categoryId).delete();

//       // Remove from local list
//       _categories.removeAt(categoryIndex);

//       _error = null;
//       notifyListeners();
//       return true;
//     } catch (e) {
//       _error = 'Failed to delete category: $e';
//       debugPrint(_error);
//       notifyListeners();
//       return false;
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }

//   // Get category by ID
//   MovieCategory? getCategoryById(String categoryId) {
//     try {
//       return _categories.firstWhere((cat) => cat.id == categoryId);
//     } catch (e) {
//       return null;
//     }
//   }

//   // Search categories by name or tags
//   List<MovieCategory> searchCategories(String query) {
//     if (query.isEmpty) return _categories;

//     final lowerQuery = query.toLowerCase();
//     return _categories.where((category) {
//       final nameMatch = category.name.toLowerCase().contains(lowerQuery);
//       final tagMatch = category.tags.any((tag) => tag.toLowerCase().contains(lowerQuery));
//       return nameMatch || tagMatch;
//     }).toList();
//   }

//   // Filter active categories
//   List<MovieCategory> get activeCategories {
//     return _categories.where((cat) => cat.isActive).toList();
//   }

//   // Increment movie count for a category
//   Future<bool> incrementMovieCount(String categoryId) async {
//     try {
//       await _firestore.collection(_collectionName).doc(categoryId).update({
//         'movieCount': FieldValue.increment(1),
//       });

//       final categoryIndex = _categories.indexWhere((cat) => cat.id == categoryId);
//       if (categoryIndex != -1) {
//         _categories[categoryIndex] = _categories[categoryIndex].copyWith(
//           movieCount: _categories[categoryIndex].movieCount + 1,
//         );
//         notifyListeners();
//       }

//       return true;
//     } catch (e) {
//       debugPrint('Failed to increment movie count: $e');
//       return false;
//     }
//   }

//   // Decrement movie count for a category
//   Future<bool> decrementMovieCount(String categoryId) async {
//     try {
//       await _firestore.collection(_collectionName).doc(categoryId).update({
//         'movieCount': FieldValue.increment(-1),
//       });

//       final categoryIndex = _categories.indexWhere((cat) => cat.id == categoryId);
//       if (categoryIndex != -1) {
//         final currentCount = _categories[categoryIndex].movieCount;
//         _categories[categoryIndex] = _categories[categoryIndex].copyWith(
//           movieCount: currentCount > 0 ? currentCount - 1 : 0,
//         );
//         notifyListeners();
//       }

//       return true;
//     } catch (e) {
//       debugPrint('Failed to decrement movie count: $e');
//       return false;
//     }
//   }

//   // Clear error
//   void clearError() {
//     _error = null;
//     notifyListeners();
//   }

//   // // Listen to real-time updates
//   // Stream<List<MovieCategory>> getCategoriesStream() {
//   //   return _firestore
//   //       .collection(_collectionName)
//   //       .orderBy('createdAt', descending: true)
//   //       .snapshots()
//   //       .map((snapshot) {
//   //     return snapshot.docs
//   //         .map((doc) => MovieCategory.fromJson({
//   //               'id': doc.id,
//   //               ...doc.data(),
//   //             }))
//   //         .toList();
//   //   });
//   // }


//   Stream<List<MovieCategory>> getCategoriesStream() {
//   return _firestore
//       .collection(_collectionName)
//       .orderBy('createdAt', descending: true)
//       .snapshots()
//       .map((snapshot) {
//     return snapshot.docs.map((doc) {
//       return MovieCategory.fromJson(
//         doc.data(),   // <-- JSON Map
//         doc.id,       // <-- Document ID
//       );
//     }).toList();
//   });
// }

// }














import 'dart:io';
import 'dart:typed_data';
import 'package:backup_ticket/model/movie_category_model.dart';
import 'package:backup_ticket/services/cloudinary_image_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MovieCategoryProvider with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _collectionName = 'movie_categories';

  List<MovieCategory> _categories = [];
  bool _isLoading = false;
  String? _error;

  // Getters
  List<MovieCategory> get categories => _categories;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // Fetch all categories
  Future<void> fetchCategories() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final querySnapshot = await _firestore
          .collection(_collectionName)
          .orderBy('createdAt', descending: true)
          .get();

      _categories = querySnapshot.docs
          .map((doc) => MovieCategory.fromJson(
                doc.data() as Map<String, dynamic>,
                doc.id,
              ))
          .toList();

      _error = null;
    } catch (e) {
      _error = 'Failed to fetch categories: $e';
      debugPrint(_error);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Create category with image upload (for mobile/desktop)
  Future<bool> createCategory({
    required String name,
    required File? imageFile,
    required List<String> tags,
    required List<String> languages,
    String? description,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      // Upload image to Cloudinary
      String? imageUrl;
      if (imageFile != null) {
        imageUrl = await CloudinaryService.uploadImage(imageFile);
        if (imageUrl == null) {
          throw Exception('Failed to upload image');
        }
      } else {
        throw Exception('Image is required');
      }

      // Create category document
      final categoryData = {
        'name': name,
        'imageUrl': imageUrl,
        'tags': tags,
        'languages': languages, // Add languages to Firestore
        'description': description,
        'createdAt': FieldValue.serverTimestamp(),
        'updatedAt': null,
        'isActive': true,
        'movieCount': 0,
      };

      final docRef = await _firestore.collection(_collectionName).add(categoryData);

      // Create local category object
      final newCategory = MovieCategory(
        id: docRef.id,
        name: name,
        imageUrl: imageUrl,
        tags: tags,
        languages: languages, // Add languages
        description: description,
        createdAt: DateTime.now(),
        isActive: true,
        movieCount: 0,
      );

      _categories.insert(0, newCategory);
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = 'Failed to create category: $e';
      debugPrint(_error);
      notifyListeners();
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Create category with image bytes (for web)
  Future<bool> createCategoryFromBytes({
    required String name,
    required Uint8List? imageBytes,
    required String fileName,
    required List<String> tags,
    required List<String> languages, // Add languages parameter
    String? description,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      // Upload image to Cloudinary
      String? imageUrl;
      if (imageBytes != null) {
        imageUrl = await CloudinaryService.uploadImageFromBytes(imageBytes, fileName);
        if (imageUrl == null) {
          throw Exception('Failed to upload image');
        }
      } else {
        throw Exception('Image is required');
      }

      // Create category document
      final categoryData = {
        'name': name,
        'imageUrl': imageUrl,
        'tags': tags,
        'languages': languages, // Add languages to Firestore
        'description': description,
        'createdAt': FieldValue.serverTimestamp(),
        'updatedAt': null,
        'isActive': true,
        'movieCount': 0,
      };

      final docRef = await _firestore.collection(_collectionName).add(categoryData);

      // Create local category object
      final newCategory = MovieCategory(
        id: docRef.id,
        name: name,
        imageUrl: imageUrl,
        tags: tags,
        languages: languages, // Add languages
        description: description,
        createdAt: DateTime.now(),
        isActive: true,
        movieCount: 0,
      );

      _categories.insert(0, newCategory);
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = 'Failed to create category: $e';
      debugPrint(_error);
      notifyListeners();
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Update category
  Future<bool> updateCategory({
    required String categoryId,
    String? name,
    File? imageFile,
    Uint8List? imageBytes,
    String? fileName,
    List<String>? tags,
    List<String>? languages, // Add languages parameter
    String? description,
    bool? isActive,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final categoryIndex = _categories.indexWhere((cat) => cat.id == categoryId);
      if (categoryIndex == -1) {
        throw Exception('Category not found');
      }

      final existingCategory = _categories[categoryIndex];
      String? newImageUrl = existingCategory.imageUrl;

      // Upload new image if provided
      if (imageFile != null) {
        // Delete old image
        await CloudinaryService.deleteImage(existingCategory.imageUrl);
        
        // Upload new image
        newImageUrl = await CloudinaryService.uploadImage(imageFile);
        if (newImageUrl == null) {
          throw Exception('Failed to upload new image');
        }
      } else if (imageBytes != null && fileName != null) {
        // Delete old image
        await CloudinaryService.deleteImage(existingCategory.imageUrl);
        
        // Upload new image from bytes
        newImageUrl = await CloudinaryService.uploadImageFromBytes(imageBytes, fileName);
        if (newImageUrl == null) {
          throw Exception('Failed to upload new image');
        }
      }

      // Update category document
      final updateData = <String, dynamic>{
        'updatedAt': FieldValue.serverTimestamp(),
      };

      if (name != null) updateData['name'] = name;
      if (newImageUrl != existingCategory.imageUrl) updateData['imageUrl'] = newImageUrl;
      if (tags != null) updateData['tags'] = tags;
      if (languages != null) updateData['languages'] = languages; // Add languages
      if (description != null) updateData['description'] = description;
      if (isActive != null) updateData['isActive'] = isActive;

      await _firestore.collection(_collectionName).doc(categoryId).update(updateData);

      // Update local category
      _categories[categoryIndex] = existingCategory.copyWith(
        name: name ?? existingCategory.name,
        imageUrl: newImageUrl,
        tags: tags ?? existingCategory.tags,
        languages: languages ?? existingCategory.languages, // Add languages
        description: description ?? existingCategory.description,
        isActive: isActive ?? existingCategory.isActive,
        updatedAt: DateTime.now(),
      );

      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = 'Failed to update category: $e';
      debugPrint(_error);
      notifyListeners();
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Delete category
  Future<bool> deleteCategory(String categoryId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final categoryIndex = _categories.indexWhere((cat) => cat.id == categoryId);
      if (categoryIndex == -1) {
        throw Exception('Category not found');
      }

      final category = _categories[categoryIndex];

      // Delete image from Cloudinary
      await CloudinaryService.deleteImage(category.imageUrl);

      // Delete from Firestore
      await _firestore.collection(_collectionName).doc(categoryId).delete();

      // Remove from local list
      _categories.removeAt(categoryIndex);

      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = 'Failed to delete category: $e';
      debugPrint(_error);
      notifyListeners();
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Get category by ID
  MovieCategory? getCategoryById(String categoryId) {
    try {
      return _categories.firstWhere((cat) => cat.id == categoryId);
    } catch (e) {
      return null;
    }
  }

  // Search categories by name, tags, or languages
  List<MovieCategory> searchCategories(String query) {
    if (query.isEmpty) return _categories;

    final lowerQuery = query.toLowerCase();
    return _categories.where((category) {
      final nameMatch = category.name.toLowerCase().contains(lowerQuery);
      final tagMatch = category.tags.any((tag) => tag.toLowerCase().contains(lowerQuery));
      final languageMatch = category.languages.any((lang) => lang.toLowerCase().contains(lowerQuery));
      return nameMatch || tagMatch || languageMatch;
    }).toList();
  }

  // Filter categories by specific language
  List<MovieCategory> filterByLanguage(String language) {
    return _categories.where((category) {
      return category.languages.any((lang) => 
        lang.toLowerCase().contains(language.toLowerCase())
      );
    }).toList();
  }

  // Filter active categories
  List<MovieCategory> get activeCategories {
    return _categories.where((cat) => cat.isActive).toList();
  }

  // Increment movie count for a category
  Future<bool> incrementMovieCount(String categoryId) async {
    try {
      await _firestore.collection(_collectionName).doc(categoryId).update({
        'movieCount': FieldValue.increment(1),
      });

      final categoryIndex = _categories.indexWhere((cat) => cat.id == categoryId);
      if (categoryIndex != -1) {
        _categories[categoryIndex] = _categories[categoryIndex].copyWith(
          movieCount: _categories[categoryIndex].movieCount + 1,
        );
        notifyListeners();
      }

      return true;
    } catch (e) {
      debugPrint('Failed to increment movie count: $e');
      return false;
    }
  }

  // Decrement movie count for a category
  Future<bool> decrementMovieCount(String categoryId) async {
    try {
      await _firestore.collection(_collectionName).doc(categoryId).update({
        'movieCount': FieldValue.increment(-1),
      });

      final categoryIndex = _categories.indexWhere((cat) => cat.id == categoryId);
      if (categoryIndex != -1) {
        final currentCount = _categories[categoryIndex].movieCount;
        _categories[categoryIndex] = _categories[categoryIndex].copyWith(
          movieCount: currentCount > 0 ? currentCount - 1 : 0,
        );
        notifyListeners();
      }

      return true;
    } catch (e) {
      debugPrint('Failed to decrement movie count: $e');
      return false;
    }
  }

  // Clear error
  void clearError() {
    _error = null;
    notifyListeners();
  }

  // Listen to real-time updates
  Stream<List<MovieCategory>> getCategoriesStream() {
    return _firestore
        .collection(_collectionName)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return MovieCategory.fromJson(
          doc.data(),
          doc.id,
        );
      }).toList();
    });
  }
}