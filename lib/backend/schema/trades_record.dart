import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'trades_record.g.dart';

abstract class TradesRecord
    implements Built<TradesRecord, TradesRecordBuilder> {
  static Serializer<TradesRecord> get serializer => _$tradesRecordSerializer;

  double? get balance;

  DateTime? get timestamp;

  String? get email;

  @BuiltValueField(wireName: 'stock_name')
  String? get stockName;

  String? get time;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TradesRecordBuilder builder) => builder
    ..balance = 0.0
    ..email = ''
    ..stockName = ''
    ..time = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trades');

  static Stream<TradesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TradesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TradesRecord._();
  factory TradesRecord([void Function(TradesRecordBuilder) updates]) =
      _$TradesRecord;

  static TradesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTradesRecordData({
  double? balance,
  DateTime? timestamp,
  String? email,
  String? stockName,
  String? time,
}) {
  final firestoreData = serializers.toFirestore(
    TradesRecord.serializer,
    TradesRecord(
      (t) => t
        ..balance = balance
        ..timestamp = timestamp
        ..email = email
        ..stockName = stockName
        ..time = time,
    ),
  );

  return firestoreData;
}
