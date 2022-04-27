import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_data_record.g.dart';

abstract class UsersDataRecord
    implements Built<UsersDataRecord, UsersDataRecordBuilder> {
  static Serializer<UsersDataRecord> get serializer =>
      _$usersDataRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'full_name')
  String get fullName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersDataRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..fullName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usersData');

  static Stream<UsersDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersDataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersDataRecord._();
  factory UsersDataRecord([void Function(UsersDataRecordBuilder) updates]) =
      _$UsersDataRecord;

  static UsersDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersDataRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String fullName,
}) =>
    serializers.toFirestore(
        UsersDataRecord.serializer,
        UsersDataRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..fullName = fullName));
