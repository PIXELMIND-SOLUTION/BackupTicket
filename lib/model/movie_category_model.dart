// // class MovieCategory {
// //   final String id;
// //   final String name;
// //   final String imageUrl;
// //   final List<String> tags;
// //   final String? description;
// //   final DateTime createdAt;
// //   final DateTime? updatedAt;
// //   final bool isActive;
// //   final int movieCount;

// //   MovieCategory({
// //     required this.id,
// //     required this.name,
// //     required this.imageUrl,
// //     required this.tags,
// //     this.description,
// //     required this.createdAt,
// //     this.updatedAt,
// //     this.isActive = true,
// //     this.movieCount = 0,
// //   });

// //   // Convert from JSON
// //   factory MovieCategory.fromJson(Map<String, dynamic> json) {
// //     return MovieCategory(
// //       id: json['id'] as String,
// //       name: json['name'] as String,
// //       imageUrl: json['imageUrl'] as String,
// //       tags: (json['tags'] as List<dynamic>?)
// //               ?.map((tag) => tag.toString())
// //               .toList() ??
// //           [],
// //       description: json['description'] as String?,
// //       createdAt: DateTime.parse(json['createdAt'] as String),
// //       updatedAt: json['updatedAt'] != null
// //           ? DateTime.parse(json['updatedAt'] as String)
// //           : null,
// //       isActive: json['isActive'] as bool? ?? true,
// //       movieCount: json['movieCount'] as int? ?? 0,
// //     );
// //   }

// //   // Convert to JSON
// //   Map<String, dynamic> toJson() {
// //     return {
// //       'id': id,
// //       'name': name,
// //       'imageUrl': imageUrl,
// //       'tags': tags,
// //       'description': description,
// //       'createdAt': createdAt.toIso8601String(),
// //       'updatedAt': updatedAt?.toIso8601String(),
// //       'isActive': isActive,
// //       'movieCount': movieCount,
// //     };
// //   }

// //   // Copy with method for immutability
// //   MovieCategory copyWith({
// //     String? id,
// //     String? name,
// //     String? imageUrl,
// //     List<String>? tags,
// //     String? description,
// //     DateTime? createdAt,
// //     DateTime? updatedAt,
// //     bool? isActive,
// //     int? movieCount,
// //   }) {
// //     return MovieCategory(
// //       id: id ?? this.id,
// //       name: name ?? this.name,
// //       imageUrl: imageUrl ?? this.imageUrl,
// //       tags: tags ?? this.tags,
// //       description: description ?? this.description,
// //       createdAt: createdAt ?? this.createdAt,
// //       updatedAt: updatedAt ?? this.updatedAt,
// //       isActive: isActive ?? this.isActive,
// //       movieCount: movieCount ?? this.movieCount,
// //     );
// //   }

// //   @override
// //   String toString() {
// //     return 'MovieCategory(id: $id, name: $name, tags: $tags, movieCount: $movieCount)';
// //   }

// //   @override
// //   bool operator ==(Object other) {
// //     if (identical(this, other)) return true;
// //     return other is MovieCategory && other.id == id;
// //   }

// //   @override
// //   int get hashCode => id.hashCode;
// // }














// import 'package:cloud_firestore/cloud_firestore.dart';

// class MovieCategory {
//   final String id;
//   final String name;
//   final String imageUrl;
//   final List<String> tags;
//   final String? description;
//   final DateTime createdAt;
//   final DateTime? updatedAt;
//   final bool isActive;
//   final int movieCount;

//   MovieCategory({
//     required this.id,
//     required this.name,
//     required this.imageUrl,
//     required this.tags,
//     this.description,
//     required this.createdAt,
//     this.updatedAt,
//     this.isActive = true,
//     this.movieCount = 0,
//   });

//   // ------------------------------------------
//   // FIXED: Convert from Firestore JSON
//   // Handles Timestamp OR String safely
//   // ------------------------------------------
//   factory MovieCategory.fromJson(Map<String, dynamic> json, String docId) {
//     return MovieCategory(
//       id: docId,
//       name: json['name'] ?? '',
//       imageUrl: json['imageUrl'] ?? '',
//       tags: (json['tags'] as List<dynamic>?)
//               ?.map((tag) => tag.toString())
//               .toList() ??
//           [],

//       description: json['description'],

//       createdAt: json['createdAt'] is Timestamp
//           ? (json['createdAt'] as Timestamp).toDate()
//           : DateTime.tryParse(json['createdAt'] ?? '') ?? DateTime.now(),

//       updatedAt: json['updatedAt'] is Timestamp
//           ? (json['updatedAt'] as Timestamp).toDate()
//           : (json['updatedAt'] != null
//               ? DateTime.tryParse(json['updatedAt'])
//               : null),

//       isActive: json['isActive'] ?? true,

//       movieCount: json['movieCount'] is int
//           ? json['movieCount']
//           : int.tryParse(json['movieCount']?.toString() ?? "0") ?? 0,
//     );
//   }

//   // Convert to JSON (safe for Firestore)
//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'imageUrl': imageUrl,
//       'tags': tags,
//       'description': description,
//       'createdAt': createdAt,
//       'updatedAt': updatedAt,
//       'isActive': isActive,
//       'movieCount': movieCount,
//     };
//   }

//   MovieCategory copyWith({
//     String? id,
//     String? name,
//     String? imageUrl,
//     List<String>? tags,
//     String? description,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     bool? isActive,
//     int? movieCount,
//   }) {
//     return MovieCategory(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       imageUrl: imageUrl ?? this.imageUrl,
//       tags: tags ?? this.tags,
//       description: description ?? this.description,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//       isActive: isActive ?? this.isActive,
//       movieCount: movieCount ?? this.movieCount,
//     );
//   }

//   @override
//   String toString() {
//     return 'MovieCategory(id: $id, name: $name, tags: $tags, movieCount: $movieCount)';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     return other is MovieCategory && other.id == id;
//   }

//   @override
//   int get hashCode => id.hashCode;
// }













import 'package:cloud_firestore/cloud_firestore.dart';

class MovieCategory {
  final String id;
  final String name;
  final String imageUrl;
  final List<String> tags;
  final String? description;
  final List<String> languages; // New: Array of languages
  final DateTime createdAt;
  final DateTime? updatedAt;
  final bool isActive;
  final int movieCount;

  MovieCategory({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.tags,
    this.description,
    required this.languages, // Required field
    required this.createdAt,
    this.updatedAt,
    this.isActive = true,
    this.movieCount = 0,
  });

  factory MovieCategory.fromJson(Map<String, dynamic> json, String docId) {
    return MovieCategory(
      id: docId,
      name: json['name'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      tags: (json['tags'] as List<dynamic>?)
              ?.map((tag) => tag.toString())
              .toList() ??
          [],
      description: json['description'],
      
      // Parse languages array
      languages: (json['languages'] as List<dynamic>?)
              ?.map((lang) => lang.toString())
              .toList() ??
          [],

      createdAt: json['createdAt'] is Timestamp
          ? (json['createdAt'] as Timestamp).toDate()
          : DateTime.tryParse(json['createdAt'] ?? '') ?? DateTime.now(),

      updatedAt: json['updatedAt'] is Timestamp
          ? (json['updatedAt'] as Timestamp).toDate()
          : (json['updatedAt'] != null
              ? DateTime.tryParse(json['updatedAt'])
              : null),

      isActive: json['isActive'] ?? true,

      movieCount: json['movieCount'] is int
          ? json['movieCount']
          : int.tryParse(json['movieCount']?.toString() ?? "0") ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'tags': tags,
      'description': description,
      'languages': languages, // Include in JSON
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'isActive': isActive,
      'movieCount': movieCount,
    };
  }

  MovieCategory copyWith({
    String? id,
    String? name,
    String? imageUrl,
    List<String>? tags,
    String? description,
    List<String>? languages,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isActive,
    int? movieCount,
  }) {
    return MovieCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      tags: tags ?? this.tags,
      description: description ?? this.description,
      languages: languages ?? this.languages,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isActive: isActive ?? this.isActive,
      movieCount: movieCount ?? this.movieCount,
    );
  }

  @override
  String toString() {
    return 'MovieCategory(id: $id, name: $name, tags: $tags, languages: $languages, movieCount: $movieCount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MovieCategory && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}