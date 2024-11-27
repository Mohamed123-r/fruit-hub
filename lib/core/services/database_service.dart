import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

abstract class DatabaseService {
  Future<void> addData(
      {required String path, required Map<String, dynamic> data, String? documentId});

  Future<Map<String, dynamic>> getData(
      {required String path, required String documentId});

  Future<bool> checkIfDocumentExists(
      {required String path, required String documentId});

}