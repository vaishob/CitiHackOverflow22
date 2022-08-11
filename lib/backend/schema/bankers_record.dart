import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bankers_record.g.dart';

abstract class BankersRecord
    implements Built<BankersRecord, BankersRecordBuilder> {
  static Serializer<BankersRecord> get serializer => _$bankersRecordSerializer;

  @BuiltValueField(wireName: 'Fund_tier')
  String? get fundTier;

  @BuiltValueField(wireName: 'Fund_desc')
  String? get fundDesc;

  @BuiltValueField(wireName: 'Banker_name')
  String? get bankerName;

  @BuiltValueField(wireName: 'Banker_email')
  String? get bankerEmail;

  @BuiltValueField(wireName: 'crown_pic')
  String? get crownPic;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BankersRecordBuilder builder) => builder
    ..fundTier = ''
    ..fundDesc = ''
    ..bankerName = ''
    ..bankerEmail = ''
    ..crownPic = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bankers');

  static Stream<BankersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BankersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BankersRecord._();
  factory BankersRecord([void Function(BankersRecordBuilder) updates]) =
      _$BankersRecord;

  static BankersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBankersRecordData({
  String? fundTier,
  String? fundDesc,
  String? bankerName,
  String? bankerEmail,
  String? crownPic,
}) {
  final firestoreData = serializers.toFirestore(
    BankersRecord.serializer,
    BankersRecord(
      (b) => b
        ..fundTier = fundTier
        ..fundDesc = fundDesc
        ..bankerName = bankerName
        ..bankerEmail = bankerEmail
        ..crownPic = crownPic,
    ),
  );

  return firestoreData;
}
