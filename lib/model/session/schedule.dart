import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';
part 'schedule_type.dart';

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required DateTime startDate,
    @Default(ScheduleType.implementation) ScheduleType type,
    Duration? playTime,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> schedule) => Schedule(
    startDate: (schedule['startDate'] as Timestamp).toDate(),
    type: ScheduleType.fromId(schedule['type'] as String),
    playTime: (schedule['playTime'] != null) ? Duration(minutes: schedule['playTime'] as int) : null,
  );

  @override
  Map<String, dynamic> toJson() => {
    'startDate': startDate,
    'type': type.id,
    if (playTime != null) 'playTime': playTime?.inMinutes,
  };
}
