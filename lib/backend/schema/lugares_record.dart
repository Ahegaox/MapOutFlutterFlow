import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'lugares_record.g.dart';

abstract class LugaresRecord
    implements Built<LugaresRecord, LugaresRecordBuilder> {
  static Serializer<LugaresRecord> get serializer => _$lugaresRecordSerializer;

  @nullable
  String get direccion;

  @nullable
  String get nombre;

  @nullable
  String get descripcion;

  @nullable
  LatLng get geoposicion;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LugaresRecordBuilder builder) => builder
    ..direccion = ''
    ..nombre = ''
    ..descripcion = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Lugares');

  static Stream<LugaresRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LugaresRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  LugaresRecord._();
  factory LugaresRecord([void Function(LugaresRecordBuilder) updates]) =
      _$LugaresRecord;

  static LugaresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLugaresRecordData({
  String direccion,
  String nombre,
  String descripcion,
  LatLng geoposicion,
}) =>
    serializers.toFirestore(
        LugaresRecord.serializer,
        LugaresRecord((l) => l
          ..direccion = direccion
          ..nombre = nombre
          ..descripcion = descripcion
          ..geoposicion = geoposicion));
