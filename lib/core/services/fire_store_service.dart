import 'package:cloud_firestore/cloud_firestore.dart';
import 'database_service.dart';

class FireStoreService extends DatabaseService {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? documentId}) async {
    if (documentId == null) {
      await fireStore.collection(path).add(data);
    } else {
      await fireStore.collection(path).doc(documentId).set(data);
    }
  }

  @override
  Future<dynamic> getData({
    required String path,
    String? documentId,
    Map<String, dynamic>? query,
  }) async {
    if (documentId != null) {
      var data = await fireStore.collection(path).doc(documentId).get();
      return data.data() as Map<String, dynamic>;
    } else {
      Query<Map<String, dynamic>> data = fireStore.collection(
        path,
      );
      if (query != null) {
        if (query['orderBy'] != null) {
          data = data.orderBy('bestSeller', descending: query['descending']);
        }
        if (query['limit'] != null) {
          data = data.limit(query['limit']);
        }
      }
      var result = await data.get();
      return result.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<bool> checkIfDocumentExists(
      {required String path, required String documentId}) async {
    var data = await fireStore.collection(path).doc(documentId).get();
    return data.exists;
  }
}
