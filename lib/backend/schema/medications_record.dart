import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicationsRecord extends FirestoreRecord {
  MedicationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "dosage" field.
  String? _dosage;
  String get dosage => _dosage ?? '';
  bool hasDosage() => _dosage != null;

  // "reminderTime" field.
  String? _reminderTime;
  String get reminderTime => _reminderTime ?? '';
  bool hasReminderTime() => _reminderTime != null;

  // "iconName" field.
  String? _iconName;
  String get iconName => _iconName ?? '';
  bool hasIconName() => _iconName != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _dosage = snapshotData['dosage'] as String?;
    _reminderTime = snapshotData['reminderTime'] as String?;
    _iconName = snapshotData['iconName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medications');

  static Stream<MedicationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicationsRecord.fromSnapshot(s));

  static Future<MedicationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicationsRecord.fromSnapshot(s));

  static MedicationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicationsRecordData({
  String? name,
  String? dosage,
  String? reminderTime,
  String? iconName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'dosage': dosage,
      'reminderTime': reminderTime,
      'iconName': iconName,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicationsRecordDocumentEquality implements Equality<MedicationsRecord> {
  const MedicationsRecordDocumentEquality();

  @override
  bool equals(MedicationsRecord? e1, MedicationsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.dosage == e2?.dosage &&
        e1?.reminderTime == e2?.reminderTime &&
        e1?.iconName == e2?.iconName;
  }

  @override
  int hash(MedicationsRecord? e) => const ListEquality()
      .hash([e?.name, e?.dosage, e?.reminderTime, e?.iconName]);

  @override
  bool isValidKey(Object? o) => o is MedicationsRecord;
}
