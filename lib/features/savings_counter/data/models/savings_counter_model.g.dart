// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savings_counter_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavingsCounterModelAdapter extends TypeAdapter<SavingsCounterModel> {
  @override
  final int typeId = 0;

  @override
  SavingsCounterModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavingsCounterModel(
      goalAmount: fields[0] as double,
      currentSavings: fields[1] as double,
      totalSavings: fields[2] as double,
      unsmokedCigarettesAmount: fields[3] as double,
      isGoalCompleted: fields[4] as bool,
      completedGoalsCount: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, SavingsCounterModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.goalAmount)
      ..writeByte(1)
      ..write(obj.currentSavings)
      ..writeByte(2)
      ..write(obj.totalSavings)
      ..writeByte(3)
      ..write(obj.unsmokedCigarettesAmount)
      ..writeByte(4)
      ..write(obj.isGoalCompleted)
      ..writeByte(5)
      ..write(obj.completedGoalsCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavingsCounterModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
