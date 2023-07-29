part of 'schedule.dart';

enum ScheduleType {
  possible(id: 'possible', text: '候補日'),
  implementation(id: 'implementation', text: '卓日'),
  preparation(id: 'preparation', text: '予備日');

  const ScheduleType({
    required this.id,
    required this.text,
  });

  factory ScheduleType.fromId(String id) {
    return ScheduleType.values.firstWhere(
      (type) => type.id == id,
      orElse: () => ScheduleType.implementation,
    );
  }

  final String id;
  final String text;
}
