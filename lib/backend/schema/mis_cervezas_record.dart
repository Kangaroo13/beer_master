import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mis_cervezas_record.g.dart';

abstract class MisCervezasRecord
    implements Built<MisCervezasRecord, MisCervezasRecordBuilder> {
  static Serializer<MisCervezasRecord> get serializer =>
      _$misCervezasRecordSerializer;

  String? get nombre;

  String? get titulo;

  String? get opnion;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MisCervezasRecordBuilder builder) => builder
    ..nombre = ''
    ..titulo = ''
    ..opnion = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('misCervezas');

  static Stream<MisCervezasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MisCervezasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MisCervezasRecord._();
  factory MisCervezasRecord([void Function(MisCervezasRecordBuilder) updates]) =
      _$MisCervezasRecord;

  static MisCervezasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMisCervezasRecordData({
  String? nombre,
  String? titulo,
  String? opnion,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    MisCervezasRecord.serializer,
    MisCervezasRecord(
      (m) => m
        ..nombre = nombre
        ..titulo = titulo
        ..opnion = opnion
        ..image = image,
    ),
  );

  return firestoreData;
}
