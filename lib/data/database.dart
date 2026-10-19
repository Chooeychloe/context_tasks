import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get notes => text().nullable()();
  IntColumn get priority => integer()(); // 1 = low, 2 = medium, 3 = high
  DateTimeColumn get dueAt => dateTime().nullable()();
  RealColumn get latitude => real().nullable()();
  RealColumn get longitude => real().nullable()();
  RealColumn get radiusMeters => real().withDefault(const Constant(100))();
  TextColumn get locationLabel => text().nullable()(); // e.g. "Home", "Campus"
  BoolColumn get completed => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

// One row per notification the system delivers (your core research data)
class NotificationEvents extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get taskId => integer().references(Tasks, #id)();
  TextColumn get mode => text()(); // 'baseline' | 'adaptive'
  TextColumn get trigger => text()(); // 'time' | 'geofence' | 'deferred'
  DateTimeColumn get scheduledAt => dateTime()();
  DateTimeColumn get deliveredAt => dateTime().nullable()();
  DateTimeColumn get respondedAt => dateTime().nullable()();
  TextColumn get response =>
      text().nullable()(); // 'done' | 'snooze' | 'dismiss' | 'tap' | 'ignored'
  IntColumn get latencySeconds => integer().nullable()();
  TextColumn get contextJson => text().withDefault(const Constant('{}'))();
}

// Periodic or on-event context snapshots (for later modeling)
class ContextSnapshots extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get capturedAt => dateTime().withDefault(currentDateAndTime)();
  TextColumn get activity => text().nullable()(); // still, walking, in_vehicle
  RealColumn get latitude => real().nullable()();
  RealColumn get longitude => real().nullable()();
  IntColumn get batteryLevel => integer().nullable()();
  TextColumn get extraJson => text().withDefault(const Constant('{}'))();
}

@DriftDatabase(tables: [Tasks, NotificationEvents, ContextSnapshots])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'context_tasks'));

  @override
  int get schemaVersion => 1;
}
