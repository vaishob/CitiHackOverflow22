// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trades_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TradesRecord> _$tradesRecordSerializer =
    new _$TradesRecordSerializer();

class _$TradesRecordSerializer implements StructuredSerializer<TradesRecord> {
  @override
  final Iterable<Type> types = const [TradesRecord, _$TradesRecord];
  @override
  final String wireName = 'TradesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TradesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.balance;
    if (value != null) {
      result
        ..add('balance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stockName;
    if (value != null) {
      result
        ..add('stock_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  TradesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'balance':
          result.balance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'stock_name':
          result.stockName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$TradesRecord extends TradesRecord {
  @override
  final double? balance;
  @override
  final DateTime? timestamp;
  @override
  final String? email;
  @override
  final String? stockName;
  @override
  final String? time;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TradesRecord([void Function(TradesRecordBuilder)? updates]) =>
      (new TradesRecordBuilder()..update(updates))._build();

  _$TradesRecord._(
      {this.balance,
      this.timestamp,
      this.email,
      this.stockName,
      this.time,
      this.ffRef})
      : super._();

  @override
  TradesRecord rebuild(void Function(TradesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradesRecordBuilder toBuilder() => new TradesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradesRecord &&
        balance == other.balance &&
        timestamp == other.timestamp &&
        email == other.email &&
        stockName == other.stockName &&
        time == other.time &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, balance.hashCode), timestamp.hashCode),
                    email.hashCode),
                stockName.hashCode),
            time.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TradesRecord')
          ..add('balance', balance)
          ..add('timestamp', timestamp)
          ..add('email', email)
          ..add('stockName', stockName)
          ..add('time', time)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TradesRecordBuilder
    implements Builder<TradesRecord, TradesRecordBuilder> {
  _$TradesRecord? _$v;

  double? _balance;
  double? get balance => _$this._balance;
  set balance(double? balance) => _$this._balance = balance;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _stockName;
  String? get stockName => _$this._stockName;
  set stockName(String? stockName) => _$this._stockName = stockName;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TradesRecordBuilder() {
    TradesRecord._initializeBuilder(this);
  }

  TradesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _balance = $v.balance;
      _timestamp = $v.timestamp;
      _email = $v.email;
      _stockName = $v.stockName;
      _time = $v.time;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradesRecord;
  }

  @override
  void update(void Function(TradesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradesRecord build() => _build();

  _$TradesRecord _build() {
    final _$result = _$v ??
        new _$TradesRecord._(
            balance: balance,
            timestamp: timestamp,
            email: email,
            stockName: stockName,
            time: time,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
