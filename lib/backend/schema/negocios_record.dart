import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'negocios_record.g.dart';

abstract class NegociosRecord
    implements Built<NegociosRecord, NegociosRecordBuilder> {
  static Serializer<NegociosRecord> get serializer =>
      _$negociosRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'fecha_registro')
  DateTime get fechaRegistro;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'nombre_empresa')
  String get nombreEmpresa;

  @nullable
  String get direccion;

  @nullable
  String get ciudad;

  @nullable
  String get pais;

  @nullable
  bool get premium;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NegociosRecordBuilder builder) => builder
    ..email = ''
    ..nombreEmpresa = ''
    ..direccion = ''
    ..ciudad = ''
    ..pais = ''
    ..premium = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Negocios');

  static Stream<NegociosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<NegociosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  NegociosRecord._();
  factory NegociosRecord([void Function(NegociosRecordBuilder) updates]) =
      _$NegociosRecord;

  static NegociosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNegociosRecordData({
  DateTime fechaRegistro,
  String email,
  String nombreEmpresa,
  String direccion,
  String ciudad,
  String pais,
  bool premium,
}) =>
    serializers.toFirestore(
        NegociosRecord.serializer,
        NegociosRecord((n) => n
          ..fechaRegistro = fechaRegistro
          ..email = email
          ..nombreEmpresa = nombreEmpresa
          ..direccion = direccion
          ..ciudad = ciudad
          ..pais = pais
          ..premium = premium));
