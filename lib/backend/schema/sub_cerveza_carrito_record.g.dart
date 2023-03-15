// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_cerveza_carrito_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubCervezaCarritoRecord> _$subCervezaCarritoRecordSerializer =
    new _$SubCervezaCarritoRecordSerializer();

class _$SubCervezaCarritoRecordSerializer
    implements StructuredSerializer<SubCervezaCarritoRecord> {
  @override
  final Iterable<Type> types = const [
    SubCervezaCarritoRecord,
    _$SubCervezaCarritoRecord
  ];
  @override
  final String wireName = 'SubCervezaCarritoRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SubCervezaCarritoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.producto;
    if (value != null) {
      result
        ..add('producto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.cantidad;
    if (value != null) {
      result
        ..add('cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.subtotal;
    if (value != null) {
      result
        ..add('subtotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  SubCervezaCarritoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubCervezaCarritoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'producto':
          result.producto = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'subtotal':
          result.subtotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$SubCervezaCarritoRecord extends SubCervezaCarritoRecord {
  @override
  final DocumentReference<Object?>? producto;
  @override
  final int? cantidad;
  @override
  final double? subtotal;
  @override
  final DocumentReference<Object?>? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SubCervezaCarritoRecord(
          [void Function(SubCervezaCarritoRecordBuilder)? updates]) =>
      (new SubCervezaCarritoRecordBuilder()..update(updates))._build();

  _$SubCervezaCarritoRecord._(
      {this.producto, this.cantidad, this.subtotal, this.image, this.ffRef})
      : super._();

  @override
  SubCervezaCarritoRecord rebuild(
          void Function(SubCervezaCarritoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubCervezaCarritoRecordBuilder toBuilder() =>
      new SubCervezaCarritoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubCervezaCarritoRecord &&
        producto == other.producto &&
        cantidad == other.cantidad &&
        subtotal == other.subtotal &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, producto.hashCode), cantidad.hashCode),
                subtotal.hashCode),
            image.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubCervezaCarritoRecord')
          ..add('producto', producto)
          ..add('cantidad', cantidad)
          ..add('subtotal', subtotal)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SubCervezaCarritoRecordBuilder
    implements
        Builder<SubCervezaCarritoRecord, SubCervezaCarritoRecordBuilder> {
  _$SubCervezaCarritoRecord? _$v;

  DocumentReference<Object?>? _producto;
  DocumentReference<Object?>? get producto => _$this._producto;
  set producto(DocumentReference<Object?>? producto) =>
      _$this._producto = producto;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  double? _subtotal;
  double? get subtotal => _$this._subtotal;
  set subtotal(double? subtotal) => _$this._subtotal = subtotal;

  DocumentReference<Object?>? _image;
  DocumentReference<Object?>? get image => _$this._image;
  set image(DocumentReference<Object?>? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SubCervezaCarritoRecordBuilder() {
    SubCervezaCarritoRecord._initializeBuilder(this);
  }

  SubCervezaCarritoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _producto = $v.producto;
      _cantidad = $v.cantidad;
      _subtotal = $v.subtotal;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubCervezaCarritoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubCervezaCarritoRecord;
  }

  @override
  void update(void Function(SubCervezaCarritoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubCervezaCarritoRecord build() => _build();

  _$SubCervezaCarritoRecord _build() {
    final _$result = _$v ??
        new _$SubCervezaCarritoRecord._(
            producto: producto,
            cantidad: cantidad,
            subtotal: subtotal,
            image: image,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
