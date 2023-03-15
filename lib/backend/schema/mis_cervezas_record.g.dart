// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mis_cervezas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MisCervezasRecord> _$misCervezasRecordSerializer =
    new _$MisCervezasRecordSerializer();

class _$MisCervezasRecordSerializer
    implements StructuredSerializer<MisCervezasRecord> {
  @override
  final Iterable<Type> types = const [MisCervezasRecord, _$MisCervezasRecord];
  @override
  final String wireName = 'MisCervezasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MisCervezasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.opnion;
    if (value != null) {
      result
        ..add('opnion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
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
  MisCervezasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MisCervezasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'opnion':
          result.opnion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
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

class _$MisCervezasRecord extends MisCervezasRecord {
  @override
  final String? nombre;
  @override
  final String? titulo;
  @override
  final String? opnion;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MisCervezasRecord(
          [void Function(MisCervezasRecordBuilder)? updates]) =>
      (new MisCervezasRecordBuilder()..update(updates))._build();

  _$MisCervezasRecord._(
      {this.nombre, this.titulo, this.opnion, this.image, this.ffRef})
      : super._();

  @override
  MisCervezasRecord rebuild(void Function(MisCervezasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MisCervezasRecordBuilder toBuilder() =>
      new MisCervezasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MisCervezasRecord &&
        nombre == other.nombre &&
        titulo == other.titulo &&
        opnion == other.opnion &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, nombre.hashCode), titulo.hashCode), opnion.hashCode),
            image.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MisCervezasRecord')
          ..add('nombre', nombre)
          ..add('titulo', titulo)
          ..add('opnion', opnion)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MisCervezasRecordBuilder
    implements Builder<MisCervezasRecord, MisCervezasRecordBuilder> {
  _$MisCervezasRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  String? _opnion;
  String? get opnion => _$this._opnion;
  set opnion(String? opnion) => _$this._opnion = opnion;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MisCervezasRecordBuilder() {
    MisCervezasRecord._initializeBuilder(this);
  }

  MisCervezasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _titulo = $v.titulo;
      _opnion = $v.opnion;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MisCervezasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MisCervezasRecord;
  }

  @override
  void update(void Function(MisCervezasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MisCervezasRecord build() => _build();

  _$MisCervezasRecord _build() {
    final _$result = _$v ??
        new _$MisCervezasRecord._(
            nombre: nombre,
            titulo: titulo,
            opnion: opnion,
            image: image,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
