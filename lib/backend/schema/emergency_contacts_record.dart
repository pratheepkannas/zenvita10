import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmergencyContactsRecord extends FirestoreRecord {
  EmergencyContactsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "relation" field.
  String? _relation;
  String get relation => _relation ?? '';
  bool hasRelation() => _relation != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _relation = snapshotData['relation'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('emergency_contacts');

  static Stream<EmergencyContactsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmergencyContactsRecord.fromSnapshot(s));

  static Future<EmergencyContactsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EmergencyContactsRecord.fromSnapshot(s));

  static EmergencyContactsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmergencyContactsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmergencyContactsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmergencyContactsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmergencyContactsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmergencyContactsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmergencyContactsRecordData({
  String? name,
  String? relation,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'relation': relation,
      'phoneNumber': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmergencyContactsRecordDocumentEquality
    implements Equality<EmergencyContactsRecord> {
  const EmergencyContactsRecordDocumentEquality();

  @override
  bool equals(EmergencyContactsRecord? e1, EmergencyContactsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.relation == e2?.relation &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(EmergencyContactsRecord? e) =>
      const ListEquality().hash([e?.name, e?.relation, e?.phoneNumber]);

  @override
  bool isValidKey(Object? o) => o is EmergencyContactsRecord;
}
