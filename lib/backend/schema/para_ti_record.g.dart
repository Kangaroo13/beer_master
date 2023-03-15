// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'para_ti_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParaTiRecord> _$paraTiRecordSerializer =
    new _$ParaTiRecordSerializer();

class _$ParaTiRecordSerializer implements StructuredSerializer<ParaTiRecord> {
  @override
  final Iterable<Type> types = const [ParaTiRecord, _$ParaTiRecord];
  @override
  final String wireName = 'ParaTiRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ParaTiRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.marketing;
    if (value != null) {
      result
        ..add('marketing')
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
    value = object.precio;
    if (value != null) {
      result
        ..add('precio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.marca;
    if (value != null) {
      result
        ..add('marca')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pais;
    if (value != null) {
      result
        ..add('pais')
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
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
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
  ParaTiRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParaTiRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'marketing':
          result.marketing = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'marca':
          result.marca = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pais':
          result.pais = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
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

class _$ParaTiRecord extends ParaTiRecord {
  @override
  final String? marketing;
  @override
  final String? titulo;
  @override
  final double? precio;
  @override
  final String? nombre;
  @override
  final String? marca;
  @override
  final String? pais;
  @override
  final String? image;
  @override
  final String? icon;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ParaTiRecord([void Function(ParaTiRecordBuilder)? updates]) =>
      (new ParaTiRecordBuilder()..update(updates))._build();

  _$ParaTiRecord._(
      {this.marketing,
      this.titulo,
      this.precio,
      this.nombre,
      this.marca,
      this.pais,
      this.image,
      this.icon,
      this.ffRef})
      : super._();

  @override
  ParaTiRecord rebuild(void Function(ParaTiRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParaTiRecordBuilder toBuilder() => new ParaTiRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParaTiRecord &&
        marketing == other.marketing &&
        titulo == other.titulo &&
        precio == other.precio &&
        nombre == other.nombre &&
        marca == other.marca &&
        pais == other.pais &&
        image == other.image &&
        icon == other.icon &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, marketing.hashCode),
                                    titulo.hashCode),
                                precio.hashCode),
                            nombre.hashCode),
                        marca.hashCode),
                    pais.hashCode),
                image.hashCode),
            icon.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParaTiRecord')
          ..add('marketing', marketing)
          ..add('titulo', titulo)
          ..add('precio', precio)
          ..add('nombre', nombre)
          ..add('marca', marca)
          ..add('pais', pais)
          ..add('image', image)
          ..add('icon', icon)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ParaTiRecordBuilder
    implements Builder<ParaTiRecord, ParaTiRecordBuilder> {
  _$ParaTiRecord? _$v;

  String? _marketing;
  String? get marketing => _$this._marketing;
  set marketing(String? marketing) => _$this._marketing = marketing;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _marca;
  String? get marca => _$this._marca;
  set marca(String? marca) => _$this._marca = marca;

  String? _pais;
  String? get pais => _$this._pais;
  set pais(String? pais) => _$this._pais = pais;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ParaTiRecordBuilder() {
    ParaTiRecord._initializeBuilder(this);
  }

  ParaTiRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _marketing = $v.marketing;
      _titulo = $v.titulo;
      _precio = $v.precio;
      _nombre = $v.nombre;
      _marca = $v.marca;
      _pais = $v.pais;
      _image = $v.image;
      _icon = $v.icon;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParaTiRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParaTiRecord;
  }

  @override
  void update(void Function(ParaTiRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParaTiRecord build() => _build();

  _$ParaTiRecord _build() {
    final _$result = _$v ??
        new _$ParaTiRecord._(
            marketing: marketing,
            titulo: titulo,
            precio: precio,
            nombre: nombre,
            marca: marca,
            pais: pais,
            image: image,
            icon: icon,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
