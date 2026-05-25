import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '';
  bool hasNickname() => _nickname != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "emergencyContactName" field.
  String? _emergencyContactName;
  String get emergencyContactName => _emergencyContactName ?? '';
  bool hasEmergencyContactName() => _emergencyContactName != null;

  // "emergencyPhone" field.
  String? _emergencyPhone;
  String get emergencyPhone => _emergencyPhone ?? '';
  bool hasEmergencyPhone() => _emergencyPhone != null;

  // "profileImageUrl" field.
  String? _profileImageUrl;
  String get profileImageUrl => _profileImageUrl ?? '';
  bool hasProfileImageUrl() => _profileImageUrl != null;

  void _initializeFields() {
    _fullName = snapshotData['fullName'] as String?;
    _nickname = snapshotData['nickname'] as String?;
    _email = snapshotData['email'] as String?;
    _phone = snapshotData['phone'] as String?;
    _emergencyContactName = snapshotData['emergencyContactName'] as String?;
    _emergencyPhone = snapshotData['emergencyPhone'] as String?;
    _profileImageUrl = snapshotData['profileImageUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? fullName,
  String? nickname,
  String? email,
  String? phone,
  String? emergencyContactName,
  String? emergencyPhone,
  String? profileImageUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fullName': fullName,
      'nickname': nickname,
      'email': email,
      'phone': phone,
      'emergencyContactName': emergencyContactName,
      'emergencyPhone': emergencyPhone,
      'profileImageUrl': profileImageUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.fullName == e2?.fullName &&
        e1?.nickname == e2?.nickname &&
        e1?.email == e2?.email &&
        e1?.phone == e2?.phone &&
        e1?.emergencyContactName == e2?.emergencyContactName &&
        e1?.emergencyPhone == e2?.emergencyPhone &&
        e1?.profileImageUrl == e2?.profileImageUrl;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.fullName,
        e?.nickname,
        e?.email,
        e?.phone,
        e?.emergencyContactName,
        e?.emergencyPhone,
        e?.profileImageUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
