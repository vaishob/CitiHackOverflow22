// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MoneyRecord> _$moneyRecordSerializer = new _$MoneyRecordSerializer();

class _$MoneyRecordSerializer implements StructuredSerializer<MoneyRecord> {
  @override
  final Iterable<Type> types = const [MoneyRecord, _$MoneyRecord];
  @override
  final String wireName = 'MoneyRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MoneyRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.outgoing;
    if (value != null) {
      result
        ..add('outgoing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.remaining;
    if (value != null) {
      result
        ..add('remaining')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  MoneyRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoneyRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'outgoing':
          result.outgoing = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'remaining':
          result.remaining = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$MoneyRecord extends MoneyRecord {
  @override
  final String? email;
  @override
  final String? outgoing;
  @override
  final int? remaining;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MoneyRecord([void Function(MoneyRecordBuilder)? updates]) =>
      (new MoneyRecordBuilder()..update(updates))._build();

  _$MoneyRecord._({this.email, this.outgoing, this.remaining, this.ffRef})
      : super._();

  @override
  MoneyRecord rebuild(void Function(MoneyRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoneyRecordBuilder toBuilder() => new MoneyRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoneyRecord &&
        email == other.email &&
        outgoing == other.outgoing &&
        remaining == other.remaining &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, email.hashCode), outgoing.hashCode), remaining.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MoneyRecord')
          ..add('email', email)
          ..add('outgoing', outgoing)
          ..add('remaining', remaining)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MoneyRecordBuilder implements Builder<MoneyRecord, MoneyRecordBuilder> {
  _$MoneyRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _outgoing;
  String? get outgoing => _$this._outgoing;
  set outgoing(String? outgoing) => _$this._outgoing = outgoing;

  int? _remaining;
  int? get remaining => _$this._remaining;
  set remaining(int? remaining) => _$this._remaining = remaining;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MoneyRecordBuilder() {
    MoneyRecord._initializeBuilder(this);
  }

  MoneyRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _outgoing = $v.outgoing;
      _remaining = $v.remaining;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoneyRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MoneyRecord;
  }

  @override
  void update(void Function(MoneyRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MoneyRecord build() => _build();

  _$MoneyRecord _build() {
    final _$result = _$v ??
        new _$MoneyRecord._(
            email: email,
            outgoing: outgoing,
            remaining: remaining,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
