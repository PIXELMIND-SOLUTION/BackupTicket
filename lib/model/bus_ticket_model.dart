// models/bus_ticket.dart
import 'package:cloud_firestore/cloud_firestore.dart';

class BusTicket {
  final String? id;
  final String fullName;
  final String phoneNumber;
  final String email;
  final String gender;
  final String busName;
  final DateTime dateOfJourney;
  final String boardingTime;
  final String ticketType;
  final int numberOfTickets;
  final double pricePerTicket;
  final double totalPrice;
  final String pickupPoint;
  final String dropPoint;
  final String? ticketImageUrl;
  final DateTime createdAt;
  final String sellerId;
  final String status; // active, sold, cancelled
  
  BusTicket({
    this.id,
    required this.fullName,
    required this.phoneNumber,
    required this.email,
    required this.gender,
    required this.busName,
    required this.dateOfJourney,
    required this.boardingTime,
    required this.ticketType,
    required this.numberOfTickets,
    required this.pricePerTicket,
    required this.totalPrice,
    required this.pickupPoint,
    required this.dropPoint,
    this.ticketImageUrl,
    required this.createdAt,
    required this.sellerId,
    this.status = 'active',
  });

  // Convert to Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'phoneNumber': phoneNumber,
      'email': email,
      'gender': gender,
      'busName': busName,
      'dateOfJourney': Timestamp.fromDate(dateOfJourney),
      'boardingTime': boardingTime,
      'ticketType': ticketType,
      'numberOfTickets': numberOfTickets,
      'pricePerTicket': pricePerTicket,
      'totalPrice': totalPrice,
      'pickupPoint': pickupPoint,
      'dropPoint': dropPoint,
      'ticketImageUrl': ticketImageUrl,
      'createdAt': Timestamp.fromDate(createdAt),
      'sellerId': sellerId,
      'status': status,
    };
  }

  // Create from Firestore document
  factory BusTicket.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return BusTicket(
      id: doc.id,
      fullName: data['fullName'] ?? '',
      phoneNumber: data['phoneNumber'] ?? '',
      email: data['email'] ?? '',
      gender: data['gender'] ?? '',
      busName: data['busName'] ?? '',
      dateOfJourney: (data['dateOfJourney'] as Timestamp).toDate(),
      boardingTime: data['boardingTime'] ?? '',
      ticketType: data['ticketType'] ?? '',
      numberOfTickets: data['numberOfTickets'] ?? 0,
      pricePerTicket: (data['pricePerTicket'] ?? 0).toDouble(),
      totalPrice: (data['totalPrice'] ?? 0).toDouble(),
      pickupPoint: data['pickupPoint'] ?? '',
      dropPoint: data['dropPoint'] ?? '',
      ticketImageUrl: data['ticketImageUrl'],
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      sellerId: data['sellerId'] ?? '',
      status: data['status'] ?? 'active',
    );
  }

  // Create a copy with updated fields
  BusTicket copyWith({
    String? id,
    String? fullName,
    String? phoneNumber,
    String? email,
    String? gender,
    String? busName,
    DateTime? dateOfJourney,
    String? boardingTime,
    String? ticketType,
    int? numberOfTickets,
    double? pricePerTicket,
    double? totalPrice,
    String? pickupPoint,
    String? dropPoint,
    String? ticketImageUrl,
    DateTime? createdAt,
    String? sellerId,
    String? status,
  }) {
    return BusTicket(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      busName: busName ?? this.busName,
      dateOfJourney: dateOfJourney ?? this.dateOfJourney,
      boardingTime: boardingTime ?? this.boardingTime,
      ticketType: ticketType ?? this.ticketType,
      numberOfTickets: numberOfTickets ?? this.numberOfTickets,
      pricePerTicket: pricePerTicket ?? this.pricePerTicket,
      totalPrice: totalPrice ?? this.totalPrice,
      pickupPoint: pickupPoint ?? this.pickupPoint,
      dropPoint: dropPoint ?? this.dropPoint,
      ticketImageUrl: ticketImageUrl ?? this.ticketImageUrl,
      createdAt: createdAt ?? this.createdAt,
      sellerId: sellerId ?? this.sellerId,
      status: status ?? this.status,
    );
  }
}