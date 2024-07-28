import 'package:cloud_firestore/cloud_firestore.dart';

extension SnapShotExtension on QuerySnapshot<Map<String, dynamic>> {
  List<T> getList<T>(T Function(Map<String, dynamic> data) fromJson) {
    return docs.map((e) => fromJson({...e.data(), 'id': e.id})).toList();
  }
}

extension StringExtension on String {
  String get capitalize {
    return this[0].toUpperCase() + substring(1);
  }
}
