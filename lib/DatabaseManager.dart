
import 'package:cloud_firestore/cloud_firestore.dart';


class DatabseManager {
  final CollectionReference doctorInfo =
      Firestore.instance.collection('doctorInfo');
  Future<void> createDoctorData(
      String dname, String dspeciality, String demail, String uid) async {
    return doctorInfo.document(uid).setData({
      'dname': dname,
      'dspeciality': dspeciality,
      'demail': demail,
    });
  }
}
