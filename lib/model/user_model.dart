// class UserModel {
//   final String id;
//   final String name;
//   final String mobileNumber;
//   final String email;

//   UserModel({
//     required this.id,
//     required this.name,
//     required this.mobileNumber,
//     required this.email,
//   });

//   // Factory constructor to create a UserModel from JSON
//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     return UserModel(
//       id: json['id'] ?? '',
//       name: json['name'] ?? '',
//       mobileNumber: json['mobileNumber'] ?? '',
//       email: json['email'] ?? '',
//     );
//   }

//   // Convert UserModel to JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'mobileNumber': mobileNumber,
//       'email': email,
//     };
//   }
// }
















class Location {
  final double latitude;
  final double longitude;

  Location({
    required this.latitude,
    required this.longitude,
  });

  // Factory constructor to create Location from JSON
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      latitude: (json['latitude'] ?? 0.0).toDouble(),
      longitude: (json['longitude'] ?? 0.0).toDouble(),
    );
  }

  // Convert Location to JSON
  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  String toString() {
    return 'Location(latitude: $latitude, longitude: $longitude)';
  }
}

class UserModel {
  final String id;
  final String name;
  final String mobileNumber;
  final String email;
  final String?profileImage;
  final List<Location> locations;

  UserModel({
    required this.id,
    required this.name,
    required this.mobileNumber,
    required this.email,
    required this.locations,
    this.profileImage,
  });

  // Factory constructor to create a UserModel from JSON
  factory UserModel.fromJson(Map<String, dynamic> json) {
    List<Location> locationList = [];
    if (json['locations'] != null) {
      locationList = (json['locations'] as List)
          .map((locationJson) => Location.fromJson(locationJson))
          .toList();
    }

    return UserModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      mobileNumber: json['mobileNumber'] ?? '',
      email: json['email'] ?? '',
      profileImage: json['profileImage'],
      locations: locationList,
    );
  }

  // Convert UserModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'mobileNumber': mobileNumber,
      'email': email,
      'profileImage':profileImage,
      'locations': locations.map((location) => location.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, mobileNumber: $mobileNumber, email: $email, locations: $locations)';
  }
}
