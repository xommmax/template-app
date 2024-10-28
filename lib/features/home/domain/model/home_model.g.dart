// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$HomeModelImpl',
      json,
      ($checkedConvert) {
        final val = _$HomeModelImpl(
          id: $checkedConvert('id', (v) => v as String),
          data: $checkedConvert('data', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
    };
