import 'package:cloud_firestore/cloud_firestore.dart';

import 'database_service.dart';

class FireStoreService extends DatabaseService {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  @override
  Future<void> addData(
      {required String path, required Map<String, dynamic> data}) async {
    await fireStore.collection(path).add(data);
  }
}
