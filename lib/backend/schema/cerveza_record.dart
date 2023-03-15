import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cerveza_record.g.dart';

abstract class CervezaRecord
    implements Built<CervezaRecord, CervezaRecordBuilder> {
  static Serializer<CervezaRecord> get serializer => _$cervezaRecordSerializer;

  String? get nombre;

  String? get marca;

  String? get tipo;

  String? get embalaje;

  String? get distribuidora;

  String? get pais;

  @BuiltValueField(wireName: 'precio_de_venda')
  double? get precioDeVenda;

  @BuiltValueField(wireName: 'precio_de_compra')
  double? get precioDeCompra;

  int? get cantidad;

  @BuiltValueField(wireName: 'disponibilidad_inmediata')
  bool? get disponibilidadInmediata;

  String? get image;

  BuiltList<String>? get maridaje;

  @BuiltValueField(wireName: 'porcentaje_de_alcohol')
  double? get porcentajeDeAlcohol;

  String? get marketing;

  String? get titulo;

  String? get emoji;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CervezaRecordBuilder builder) => builder
    ..nombre = ''
    ..marca = ''
    ..tipo = ''
    ..embalaje = ''
    ..distribuidora = ''
    ..pais = ''
    ..precioDeVenda = 0.0
    ..precioDeCompra = 0.0
    ..cantidad = 0
    ..disponibilidadInmediata = false
    ..image = ''
    ..maridaje = ListBuilder()
    ..porcentajeDeAlcohol = 0.0
    ..marketing = ''
    ..titulo = ''
    ..emoji = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cerveza');

  static Stream<CervezaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CervezaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CervezaRecord._();
  factory CervezaRecord([void Function(CervezaRecordBuilder) updates]) =
      _$CervezaRecord;

  static CervezaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCervezaRecordData({
  String? nombre,
  String? marca,
  String? tipo,
  String? embalaje,
  String? distribuidora,
  String? pais,
  double? precioDeVenda,
  double? precioDeCompra,
  int? cantidad,
  bool? disponibilidadInmediata,
  String? image,
  double? porcentajeDeAlcohol,
  String? marketing,
  String? titulo,
  String? emoji,
}) {
  final firestoreData = serializers.toFirestore(
    CervezaRecord.serializer,
    CervezaRecord(
      (c) => c
        ..nombre = nombre
        ..marca = marca
        ..tipo = tipo
        ..embalaje = embalaje
        ..distribuidora = distribuidora
        ..pais = pais
        ..precioDeVenda = precioDeVenda
        ..precioDeCompra = precioDeCompra
        ..cantidad = cantidad
        ..disponibilidadInmediata = disponibilidadInmediata
        ..image = image
        ..maridaje = null
        ..porcentajeDeAlcohol = porcentajeDeAlcohol
        ..marketing = marketing
        ..titulo = titulo
        ..emoji = emoji,
    ),
  );

  return firestoreData;
}
