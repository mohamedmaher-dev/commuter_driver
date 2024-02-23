// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDataModelAdapter extends TypeAdapter<UserDataModel> {
  @override
  final int typeId = 1;

  @override
  UserDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserDataModel(
      isLogin: fields[0] as bool,
      name: fields[2] as String,
      email: fields[3] as String,
      token: fields[4] as String,
      userID: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserDataModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.isLogin)
      ..writeByte(1)
      ..write(obj.userID)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
