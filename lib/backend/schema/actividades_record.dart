import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'actividades_record.g.dart';

abstract class ActividadesRecord
    implements Built<ActividadesRecord, ActividadesRecordBuilder> {
  static Serializer<ActividadesRecord> get serializer =>
      _$actividadesRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'fecha_inicio')
  DateTime get fechaInicio;

  @nullable
  @BuiltValueField(wireName: 'fecha_limite')
  DateTime get fechaLimite;

  @nullable
  @BuiltValueField(wireName: 'num_personas')
  int get numPersonas;

  @nullable
  int get precio;

  @nullable
  String get lugar;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ActividadesRecordBuilder builder) => builder
    ..numPersonas = 0
    ..precio = 0
    ..lugar = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Actividades');

  static Stream<ActividadesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ActividadesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ActividadesRecord._();
  factory ActividadesRecord([void Function(ActividadesRecordBuilder) updates]) =
      _$ActividadesRecord;

  static ActividadesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createActividadesRecordData({
  DateTime fechaInicio,
  DateTime fechaLimite,
  int numPersonas,
  int precio,
  String lugar,
}) =>
    serializers.toFirestore(
        ActividadesRecord.serializer,
        ActividadesRecord((a) => a
          ..fechaInicio = fechaInicio
          ..fechaLimite = fechaLimite
          ..numPersonas = numPersonas
          ..precio = precio
          ..lugar = lugar));
