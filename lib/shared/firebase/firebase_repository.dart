import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pratik_portfolio/shared/extensions.dart';

class FirebaseRepository {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  Future<void> addDocument(
      {required String collectionName,
      String? path,
      required Map<String, dynamic> data}) async {
    db.collection(collectionName).doc(path).set(data);
  }

  Future<List<T>> getDocuments<T>(
      {required String collectionName,
      required T Function(Map<String, dynamic>) fromJson}) async {
    final snapshot = await db.collection(collectionName).get();
    return snapshot.getList<T>(fromJson);
  }
}
