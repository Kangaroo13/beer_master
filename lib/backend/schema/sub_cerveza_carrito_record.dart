import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sub_cerveza_carrito_record.g.dart';

abstract class SubCervezaCarritoRecord
    implements Built<SubCervezaCarritoRecord, SubCervezaCarritoRecordBuilder> {
  static Serializer<SubCervezaCarritoRecord> get serializer =>
      _$subCervezaCarritoRecordSerializer;

  DocumentReference? get producto;

  int? get cantidad;

  double? get subtotal;

  DocumentReference? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SubCervezaCarritoRecordBuilder builder) =>
      builder
        ..cantidad = 0
        ..subtotal = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subCervezaCarrito');

  static Stream<SubCervezaCarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SubCervezaCarritoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SubCervezaCarritoRecord._();
  factory SubCervezaCarritoRecord(
          [void Function(SubCervezaCarritoRecordBuilder) updates]) =
      _$SubCervezaCarritoRecord;

  static SubCervezaCarritoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSubCervezaCarritoRecordData({
  DocumentReference? producto,
  int? cantidad,
  double? subtotal,
  DocumentReference? image,
}) {
  final firestoreData = serializers.toFirestore(
    SubCervezaCarritoRecord.serializer,
    SubCervezaCarritoRecord(
      (s) => s
        ..producto = producto
        ..cantidad = cantidad
        ..subtotal = subtotal
        ..image = image,
    ),
  );

  return firestoreData;
}
