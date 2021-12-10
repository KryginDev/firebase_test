// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationDTO _$_$_NotificationDTOFromJson(Map<String, dynamic> json) {
  return _$_NotificationDTO(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    time: const TimestampConverter().fromJson(json['time'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_NotificationDTOToJson(_$_NotificationDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'time': const TimestampConverter().toJson(instance.time),
    };
