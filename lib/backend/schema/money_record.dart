import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'money_record.g.dart';

abstract class MoneyRecord implements Built<MoneyRecord, MoneyRecordBuilder> {
  static Serializer<MoneyRecord> get serializer => _$moneyRecordSerializer;

  String? get email;

  String? get outgoing;

  int? get remaining;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MoneyRecordBuilder builder) => builder
    ..email = ''
    ..outgoing = ''
    ..remaining = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('money');

  static Stream<MoneyRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MoneyRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MoneyRecord._();
  factory MoneyRecord([void Function(MoneyRecordBuilder) updates]) =
      _$MoneyRecord;

  static MoneyRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMoneyRecordData({
  String? email,
  String? outgoing,
  int? remaining,
}) {
  final firestoreData = serializers.toFirestore(
    MoneyRecord.serializer,
    MoneyRecord(
      (m) => m
        ..email = email
        ..outgoing = outgoing
        ..remaining = remaining,
    ),
  );

  return firestoreData;
}
