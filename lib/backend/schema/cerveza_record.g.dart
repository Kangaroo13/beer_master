// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cerveza_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CervezaRecord> _$cervezaRecordSerializer =
    new _$CervezaRecordSerializer();

class _$CervezaRecordSerializer implements StructuredSerializer<CervezaRecord> {
  @override
  final Iterable<Type> types = const [CervezaRecord, _$CervezaRecord];
  @override
  final String wireName = 'CervezaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CervezaRecord object,
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
    value = object.marca;
    if (value != null) {
      result
        ..add('marca')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tipo;
    if (value != null) {
      result
        ..add('tipo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.embalaje;
    if (value != null) {
      result
        ..add('embalaje')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.distribuidora;
    if (value != null) {
      result
        ..add('distribuidora')
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
    value = object.precioDeVenda;
    if (value != null) {
      result
        ..add('precio_de_venda')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precioDeCompra;
    if (value != null) {
      result
        ..add('precio_de_compra')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cantidad;
    if (value != null) {
      result
        ..add('cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.disponibilidadInmediata;
    if (value != null) {
      result
        ..add('disponibilidad_inmediata')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maridaje;
    if (value != null) {
      result
        ..add('maridaje')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.porcentajeDeAlcohol;
    if (value != null) {
      result
        ..add('porcentaje_de_alcohol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
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
    value = object.emoji;
    if (value != null) {
      result
        ..add('emoji')
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
  CervezaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CervezaRecordBuilder();

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
        case 'marca':
          result.marca = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tipo':
          result.tipo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'embalaje':
          result.embalaje = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'distribuidora':
          result.distribuidora = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pais':
          result.pais = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'precio_de_venda':
          result.precioDeVenda = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'precio_de_compra':
          result.precioDeCompra = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'disponibilidad_inmediata':
          result.disponibilidadInmediata = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'maridaje':
          result.maridaje.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'porcentaje_de_alcohol':
          result.porcentajeDeAlcohol = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'marketing':
          result.marketing = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emoji':
          result.emoji = serializers.deserialize(value,
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

class _$CervezaRecord extends CervezaRecord {
  @override
  final String? nombre;
  @override
  final String? marca;
  @override
  final String? tipo;
  @override
  final String? embalaje;
  @override
  final String? distribuidora;
  @override
  final String? pais;
  @override
  final double? precioDeVenda;
  @override
  final double? precioDeCompra;
  @override
  final int? cantidad;
  @override
  final bool? disponibilidadInmediata;
  @override
  final String? image;
  @override
  final BuiltList<String>? maridaje;
  @override
  final double? porcentajeDeAlcohol;
  @override
  final String? marketing;
  @override
  final String? titulo;
  @override
  final String? emoji;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CervezaRecord([void Function(CervezaRecordBuilder)? updates]) =>
      (new CervezaRecordBuilder()..update(updates))._build();

  _$CervezaRecord._(
      {this.nombre,
      this.marca,
      this.tipo,
      this.embalaje,
      this.distribuidora,
      this.pais,
      this.precioDeVenda,
      this.precioDeCompra,
      this.cantidad,
      this.disponibilidadInmediata,
      this.image,
      this.maridaje,
      this.porcentajeDeAlcohol,
      this.marketing,
      this.titulo,
      this.emoji,
      this.ffRef})
      : super._();

  @override
  CervezaRecord rebuild(void Function(CervezaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CervezaRecordBuilder toBuilder() => new CervezaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CervezaRecord &&
        nombre == other.nombre &&
        marca == other.marca &&
        tipo == other.tipo &&
        embalaje == other.embalaje &&
        distribuidora == other.distribuidora &&
        pais == other.pais &&
        precioDeVenda == other.precioDeVenda &&
        precioDeCompra == other.precioDeCompra &&
        cantidad == other.cantidad &&
        disponibilidadInmediata == other.disponibilidadInmediata &&
        image == other.image &&
        maridaje == other.maridaje &&
        porcentajeDeAlcohol == other.porcentajeDeAlcohol &&
        marketing == other.marketing &&
        titulo == other.titulo &&
        emoji == other.emoji &&
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        nombre
                                                                            .hashCode),
                                                                    marca
                                                                        .hashCode),
                                                                tipo.hashCode),
                                                            embalaje.hashCode),
                                                        distribuidora.hashCode),
                                                    pais.hashCode),
                                                precioDeVenda.hashCode),
                                            precioDeCompra.hashCode),
                                        cantidad.hashCode),
                                    disponibilidadInmediata.hashCode),
                                image.hashCode),
                            maridaje.hashCode),
                        porcentajeDeAlcohol.hashCode),
                    marketing.hashCode),
                titulo.hashCode),
            emoji.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CervezaRecord')
          ..add('nombre', nombre)
          ..add('marca', marca)
          ..add('tipo', tipo)
          ..add('embalaje', embalaje)
          ..add('distribuidora', distribuidora)
          ..add('pais', pais)
          ..add('precioDeVenda', precioDeVenda)
          ..add('precioDeCompra', precioDeCompra)
          ..add('cantidad', cantidad)
          ..add('disponibilidadInmediata', disponibilidadInmediata)
          ..add('image', image)
          ..add('maridaje', maridaje)
          ..add('porcentajeDeAlcohol', porcentajeDeAlcohol)
          ..add('marketing', marketing)
          ..add('titulo', titulo)
          ..add('emoji', emoji)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CervezaRecordBuilder
    implements Builder<CervezaRecord, CervezaRecordBuilder> {
  _$CervezaRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _marca;
  String? get marca => _$this._marca;
  set marca(String? marca) => _$this._marca = marca;

  String? _tipo;
  String? get tipo => _$this._tipo;
  set tipo(String? tipo) => _$this._tipo = tipo;

  String? _embalaje;
  String? get embalaje => _$this._embalaje;
  set embalaje(String? embalaje) => _$this._embalaje = embalaje;

  String? _distribuidora;
  String? get distribuidora => _$this._distribuidora;
  set distribuidora(String? distribuidora) =>
      _$this._distribuidora = distribuidora;

  String? _pais;
  String? get pais => _$this._pais;
  set pais(String? pais) => _$this._pais = pais;

  double? _precioDeVenda;
  double? get precioDeVenda => _$this._precioDeVenda;
  set precioDeVenda(double? precioDeVenda) =>
      _$this._precioDeVenda = precioDeVenda;

  double? _precioDeCompra;
  double? get precioDeCompra => _$this._precioDeCompra;
  set precioDeCompra(double? precioDeCompra) =>
      _$this._precioDeCompra = precioDeCompra;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  bool? _disponibilidadInmediata;
  bool? get disponibilidadInmediata => _$this._disponibilidadInmediata;
  set disponibilidadInmediata(bool? disponibilidadInmediata) =>
      _$this._disponibilidadInmediata = disponibilidadInmediata;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ListBuilder<String>? _maridaje;
  ListBuilder<String> get maridaje =>
      _$this._maridaje ??= new ListBuilder<String>();
  set maridaje(ListBuilder<String>? maridaje) => _$this._maridaje = maridaje;

  double? _porcentajeDeAlcohol;
  double? get porcentajeDeAlcohol => _$this._porcentajeDeAlcohol;
  set porcentajeDeAlcohol(double? porcentajeDeAlcohol) =>
      _$this._porcentajeDeAlcohol = porcentajeDeAlcohol;

  String? _marketing;
  String? get marketing => _$this._marketing;
  set marketing(String? marketing) => _$this._marketing = marketing;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  String? _emoji;
  String? get emoji => _$this._emoji;
  set emoji(String? emoji) => _$this._emoji = emoji;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CervezaRecordBuilder() {
    CervezaRecord._initializeBuilder(this);
  }

  CervezaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _marca = $v.marca;
      _tipo = $v.tipo;
      _embalaje = $v.embalaje;
      _distribuidora = $v.distribuidora;
      _pais = $v.pais;
      _precioDeVenda = $v.precioDeVenda;
      _precioDeCompra = $v.precioDeCompra;
      _cantidad = $v.cantidad;
      _disponibilidadInmediata = $v.disponibilidadInmediata;
      _image = $v.image;
      _maridaje = $v.maridaje?.toBuilder();
      _porcentajeDeAlcohol = $v.porcentajeDeAlcohol;
      _marketing = $v.marketing;
      _titulo = $v.titulo;
      _emoji = $v.emoji;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CervezaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CervezaRecord;
  }

  @override
  void update(void Function(CervezaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CervezaRecord build() => _build();

  _$CervezaRecord _build() {
    _$CervezaRecord _$result;
    try {
      _$result = _$v ??
          new _$CervezaRecord._(
              nombre: nombre,
              marca: marca,
              tipo: tipo,
              embalaje: embalaje,
              distribuidora: distribuidora,
              pais: pais,
              precioDeVenda: precioDeVenda,
              precioDeCompra: precioDeCompra,
              cantidad: cantidad,
              disponibilidadInmediata: disponibilidadInmediata,
              image: image,
              maridaje: _maridaje?.build(),
              porcentajeDeAlcohol: porcentajeDeAlcohol,
              marketing: marketing,
              titulo: titulo,
              emoji: emoji,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'maridaje';
        _maridaje?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CervezaRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
