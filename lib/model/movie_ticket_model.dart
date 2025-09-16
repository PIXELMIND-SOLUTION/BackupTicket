import 'package:cloud_firestore/cloud_firestore.dart';

class MovieTicket {
  final String? id;
  final String fullName;
  final String phoneNumber;
  final String email;
  final String gender;
  final String movieName;
  final String theatrePlace;
  final DateTime showDate;
  final String showTime;
  final double pricePerTicket;
  final String ticketType;
  final int numberOfTickets;
  final double totalPrice;
  final String? ticketImageUrl;
  final bool agreeToTerms;
  final DateTime createdAt;
  final String status;
  MovieTicket({
    this.id,
    required this.fullName,
    required this.phoneNumber,
    required this.email,
    required this.gender,
    required this.movieName,
    required this.theatrePlace,
    required this.showDate,
    required this.showTime,
    required this.pricePerTicket,
    required this.ticketType,
    required this.numberOfTickets,
    required this.totalPrice,
    this.ticketImageUrl,
    required this.agreeToTerms,
    required this.createdAt,
    this.status = 'pending',
  });

  // Convert MovieTicket to Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'phoneNumber': phoneNumber,
      'email': email,
      'gender': gender,
      'movieName': movieName,
      'theatrePlace': theatrePlace,
      'showDate': Timestamp.fromDate(showDate),
      'showTime': showTime,
      'pricePerTicket': pricePerTicket,
      'ticketType': ticketType,
      'numberOfTickets': numberOfTickets,
      'totalPrice': totalPrice,
      'ticketImageUrl': ticketImageUrl,
      'agreeToTerms': agreeToTerms,
      'createdAt': Timestamp.fromDate(createdAt),
      'status': status,
    };
  }

  // Create MovieTicket from Firestore document
  factory MovieTicket.fromMap(Map<String, dynamic> map, String documentId) {
    return MovieTicket(
      id: documentId,
      fullName: map['fullName'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      email: map['email'] ?? '',
      gender: map['gender'] ?? '',
      movieName: map['movieName'] ?? '',
      theatrePlace: map['theatrePlace'] ?? '',
      showDate: (map['showDate'] as Timestamp).toDate(),
      showTime: map['showTime'] ?? '',
      pricePerTicket: (map['pricePerTicket'] ?? 0.0).toDouble(),
      ticketType: map['ticketType'] ?? '',
      numberOfTickets: map['numberOfTickets'] ?? 0,
      totalPrice: (map['totalPrice'] ?? 0.0).toDouble(),
      ticketImageUrl: map['ticketImageUrl'],
      agreeToTerms: map['agreeToTerms'] ?? false,
      createdAt: (map['createdAt'] as Timestamp).toDate(),
      status: map['status'] ?? 'pending',
    );
  }

  // Create a copy of MovieTicket with updated fields
  MovieTicket copyWith({
    String? id,
    String? fullName,
    String? phoneNumber,
    String? email,
    String? gender,
    String? movieName,
    String? theatrePlace,
    DateTime? showDate,
    String? showTime,
    double? pricePerTicket,
    String? ticketType,
    int? numberOfTickets,
    double? totalPrice,
    String? ticketImageUrl,
    bool? agreeToTerms,
    DateTime? createdAt,
    String? status,
  }) {
    return MovieTicket(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      movieName: movieName ?? this.movieName,
      theatrePlace: theatrePlace ?? this.theatrePlace,
      showDate: showDate ?? this.showDate,
      showTime: showTime ?? this.showTime,
      pricePerTicket: pricePerTicket ?? this.pricePerTicket,
      ticketType: ticketType ?? this.ticketType,
      numberOfTickets: numberOfTickets ?? this.numberOfTickets,
      totalPrice: totalPrice ?? this.totalPrice,
      ticketImageUrl: ticketImageUrl ?? this.ticketImageUrl,
      agreeToTerms: agreeToTerms ?? this.agreeToTerms,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
    );
  }
}
