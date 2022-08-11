// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_data_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GraphDataRecord> _$graphDataRecordSerializer =
    new _$GraphDataRecordSerializer();

class _$GraphDataRecordSerializer
    implements StructuredSerializer<GraphDataRecord> {
  @override
  final Iterable<Type> types = const [GraphDataRecord, _$GraphDataRecord];
  @override
  final String wireName = 'GraphDataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GraphDataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.xData;
    if (value != null) {
      result
        ..add('x_data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.yData;
    if (value != null) {
      result
        ..add('y_data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  GraphDataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GraphDataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'x_data':
          result.xData = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'y_data':
          result.yData = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$GraphDataRecord extends GraphDataRecord {
  @override
  final double? xData;
  @override
  final double? yData;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GraphDataRecord([void Function(GraphDataRecordBuilder)? updates]) =>
      (new GraphDataRecordBuilder()..update(updates))._build();

  _$GraphDataRecord._({this.xData, this.yData, this.ffRef}) : super._();

  @override
  GraphDataRecord rebuild(void Function(GraphDataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GraphDataRecordBuilder toBuilder() =>
      new GraphDataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GraphDataRecord &&
        xData == other.xData &&
        yData == other.yData &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, xData.hashCode), yData.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GraphDataRecord')
          ..add('xData', xData)
          ..add('yData', yData)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GraphDataRecordBuilder
    implements Builder<GraphDataRecord, GraphDataRecordBuilder> {
  _$GraphDataRecord? _$v;

  double? _xData;
  double? get xData => _$this._xData;
  set xData(double? xData) => _$this._xData = xData;

  double? _yData;
  double? get yData => _$this._yData;
  set yData(double? yData) => _$this._yData = yData;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GraphDataRecordBuilder() {
    GraphDataRecord._initializeBuilder(this);
  }

  GraphDataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _xData = $v.xData;
      _yData = $v.yData;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GraphDataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GraphDataRecord;
  }

  @override
  void update(void Function(GraphDataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GraphDataRecord build() => _build();

  _$GraphDataRecord _build() {
    final _$result = _$v ??
        new _$GraphDataRecord._(xData: xData, yData: yData, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
