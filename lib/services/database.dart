import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  addUserInfoToDB(
      String userID,
        Map<String,dynamic> userRegMap) {
    FirebaseFirestore.instance.collection("User").doc(userID).set(
      userRegMap);
  }

  Future<Stream<QuerySnapshot>> getUserByEmail(String email) async {
    return FirebaseFirestore.instance
        .collection("User")
        .where("email id", isEqualTo: email)
        .snapshots();
  }
}