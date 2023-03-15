import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'para_ti_record.g.dart';

abstract class ParaTiRecord
    implements Built<ParaTiRecord, ParaTiRecordBuilder> {
  static Serializer<ParaTiRecord> get serializer => _$paraTiRecordSerializer;

  String? get marketing;

  String? get titulo;

  double? get precio;

  String? get nombre;

  String? get marca;

  String? get pais;

  String? get image;

  String? get icon;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ParaTiRecordBuilder builder) => builder
    ..marketing = ''
    ..titulo = ''
    ..precio = 0.0
    ..nombre = ''
    ..marca = ''
    ..pais = ''
    ..image = ''
    ..icon = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('paraTi');

  static Stream<ParaTiRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ParaTiRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ParaTiRecord._();
  factory ParaTiRecord([void Function(ParaTiRecordBuilder) updates]) =
      _$ParaTiRecord;

  static ParaTiRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createParaTiRecordData({
  String? marketing,
  String? titulo,
  double? precio,
  String? nombre,
  String? marca,
  String? pais,
  String? image,
  String? icon,
}) {
  final firestoreData = serializers.toFirestore(
    ParaTiRecord.serializer,
    ParaTiRecord(
      (p) => p
        ..marketing = marketing
        ..titulo = titulo
        ..precio = precio
        ..nombre = nombre
        ..marca = marca
        ..pais = pais
        ..image = image
        ..icon = icon,
    ),
  );

  return firestoreData;
}
