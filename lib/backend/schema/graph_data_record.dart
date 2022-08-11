import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'graph_data_record.g.dart';

abstract class GraphDataRecord
    implements Built<GraphDataRecord, GraphDataRecordBuilder> {
  static Serializer<GraphDataRecord> get serializer =>
      _$graphDataRecordSerializer;

  @BuiltValueField(wireName: 'x_data')
  double? get xData;

  @BuiltValueField(wireName: 'y_data')
  double? get yData;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GraphDataRecordBuilder builder) => builder
    ..xData = 0.0
    ..yData = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('GraphData');

  static Stream<GraphDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GraphDataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GraphDataRecord._();
  factory GraphDataRecord([void Function(GraphDataRecordBuilder) updates]) =
      _$GraphDataRecord;

  static GraphDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGraphDataRecordData({
  double? xData,
  double? yData,
}) {
  final firestoreData = serializers.toFirestore(
    GraphDataRecord.serializer,
    GraphDataRecord(
      (g) => g
        ..xData = xData
        ..yData = yData,
    ),
  );

  return firestoreData;
}
