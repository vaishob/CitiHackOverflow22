// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bankers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BankersRecord> _$bankersRecordSerializer =
    new _$BankersRecordSerializer();

class _$BankersRecordSerializer implements StructuredSerializer<BankersRecord> {
  @override
  final Iterable<Type> types = const [BankersRecord, _$BankersRecord];
  @override
  final String wireName = 'BankersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BankersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fundTier;
    if (value != null) {
      result
        ..add('Fund_tier')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fundDesc;
    if (value != null) {
      result
        ..add('Fund_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bankerName;
    if (value != null) {
      result
        ..add('Banker_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bankerEmail;
    if (value != null) {
      result
        ..add('Banker_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.crownPic;
    if (value != null) {
      result
        ..add('crown_pic')
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
  BankersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BankersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Fund_tier':
          result.fundTier = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Fund_desc':
          result.fundDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Banker_name':
          result.bankerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Banker_email':
          result.bankerEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'crown_pic':
          result.crownPic = serializers.deserialize(value,
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

class _$BankersRecord extends BankersRecord {
  @override
  final String? fundTier;
  @override
  final String? fundDesc;
  @override
  final String? bankerName;
  @override
  final String? bankerEmail;
  @override
  final String? crownPic;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BankersRecord([void Function(BankersRecordBuilder)? updates]) =>
      (new BankersRecordBuilder()..update(updates))._build();

  _$BankersRecord._(
      {this.fundTier,
      this.fundDesc,
      this.bankerName,
      this.bankerEmail,
      this.crownPic,
      this.ffRef})
      : super._();

  @override
  BankersRecord rebuild(void Function(BankersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BankersRecordBuilder toBuilder() => new BankersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BankersRecord &&
        fundTier == other.fundTier &&
        fundDesc == other.fundDesc &&
        bankerName == other.bankerName &&
        bankerEmail == other.bankerEmail &&
        crownPic == other.crownPic &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, fundTier.hashCode), fundDesc.hashCode),
                    bankerName.hashCode),
                bankerEmail.hashCode),
            crownPic.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BankersRecord')
          ..add('fundTier', fundTier)
          ..add('fundDesc', fundDesc)
          ..add('bankerName', bankerName)
          ..add('bankerEmail', bankerEmail)
          ..add('crownPic', crownPic)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BankersRecordBuilder
    implements Builder<BankersRecord, BankersRecordBuilder> {
  _$BankersRecord? _$v;

  String? _fundTier;
  String? get fundTier => _$this._fundTier;
  set fundTier(String? fundTier) => _$this._fundTier = fundTier;

  String? _fundDesc;
  String? get fundDesc => _$this._fundDesc;
  set fundDesc(String? fundDesc) => _$this._fundDesc = fundDesc;

  String? _bankerName;
  String? get bankerName => _$this._bankerName;
  set bankerName(String? bankerName) => _$this._bankerName = bankerName;

  String? _bankerEmail;
  String? get bankerEmail => _$this._bankerEmail;
  set bankerEmail(String? bankerEmail) => _$this._bankerEmail = bankerEmail;

  String? _crownPic;
  String? get crownPic => _$this._crownPic;
  set crownPic(String? crownPic) => _$this._crownPic = crownPic;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BankersRecordBuilder() {
    BankersRecord._initializeBuilder(this);
  }

  BankersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fundTier = $v.fundTier;
      _fundDesc = $v.fundDesc;
      _bankerName = $v.bankerName;
      _bankerEmail = $v.bankerEmail;
      _crownPic = $v.crownPic;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BankersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BankersRecord;
  }

  @override
  void update(void Function(BankersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BankersRecord build() => _build();

  _$BankersRecord _build() {
    final _$result = _$v ??
        new _$BankersRecord._(
            fundTier: fundTier,
            fundDesc: fundDesc,
            bankerName: bankerName,
            bankerEmail: bankerEmail,
            crownPic: crownPic,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
