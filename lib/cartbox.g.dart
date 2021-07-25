// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartbox.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartBoxAdapter extends TypeAdapter<CartBox> {
  @override
  final int typeId = 0;

  @override
  CartBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartBox(
      fields[0] as String,
      fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CartBox obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
