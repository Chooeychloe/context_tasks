// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $TasksTable extends Tasks with TableInfo<$TasksTable, Task> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TasksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _priorityMeta = const VerificationMeta(
    'priority',
  );
  @override
  late final GeneratedColumn<int> priority = GeneratedColumn<int>(
    'priority',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dueAtMeta = const VerificationMeta('dueAt');
  @override
  late final GeneratedColumn<DateTime> dueAt = GeneratedColumn<DateTime>(
    'due_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _latitudeMeta = const VerificationMeta(
    'latitude',
  );
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
    'latitude',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _longitudeMeta = const VerificationMeta(
    'longitude',
  );
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
    'longitude',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _radiusMetersMeta = const VerificationMeta(
    'radiusMeters',
  );
  @override
  late final GeneratedColumn<double> radiusMeters = GeneratedColumn<double>(
    'radius_meters',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(100),
  );
  static const VerificationMeta _locationLabelMeta = const VerificationMeta(
    'locationLabel',
  );
  @override
  late final GeneratedColumn<String> locationLabel = GeneratedColumn<String>(
    'location_label',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _completedMeta = const VerificationMeta(
    'completed',
  );
  @override
  late final GeneratedColumn<bool> completed = GeneratedColumn<bool>(
    'completed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("completed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    notes,
    priority,
    dueAt,
    latitude,
    longitude,
    radiusMeters,
    locationLabel,
    completed,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tasks';
  @override
  VerificationContext validateIntegrity(
    Insertable<Task> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('priority')) {
      context.handle(
        _priorityMeta,
        priority.isAcceptableOrUnknown(data['priority']!, _priorityMeta),
      );
    } else if (isInserting) {
      context.missing(_priorityMeta);
    }
    if (data.containsKey('due_at')) {
      context.handle(
        _dueAtMeta,
        dueAt.isAcceptableOrUnknown(data['due_at']!, _dueAtMeta),
      );
    }
    if (data.containsKey('latitude')) {
      context.handle(
        _latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta),
      );
    }
    if (data.containsKey('longitude')) {
      context.handle(
        _longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta),
      );
    }
    if (data.containsKey('radius_meters')) {
      context.handle(
        _radiusMetersMeta,
        radiusMeters.isAcceptableOrUnknown(
          data['radius_meters']!,
          _radiusMetersMeta,
        ),
      );
    }
    if (data.containsKey('location_label')) {
      context.handle(
        _locationLabelMeta,
        locationLabel.isAcceptableOrUnknown(
          data['location_label']!,
          _locationLabelMeta,
        ),
      );
    }
    if (data.containsKey('completed')) {
      context.handle(
        _completedMeta,
        completed.isAcceptableOrUnknown(data['completed']!, _completedMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Task map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Task(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      title:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}title'],
          )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      priority:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}priority'],
          )!,
      dueAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}due_at'],
      ),
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitude'],
      ),
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitude'],
      ),
      radiusMeters:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}radius_meters'],
          )!,
      locationLabel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_label'],
      ),
      completed:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}completed'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(attachedDatabase, alias);
  }
}

class Task extends DataClass implements Insertable<Task> {
  final int id;
  final String title;
  final String? notes;
  final int priority;
  final DateTime? dueAt;
  final double? latitude;
  final double? longitude;
  final double radiusMeters;
  final String? locationLabel;
  final bool completed;
  final DateTime createdAt;
  const Task({
    required this.id,
    required this.title,
    this.notes,
    required this.priority,
    this.dueAt,
    this.latitude,
    this.longitude,
    required this.radiusMeters,
    this.locationLabel,
    required this.completed,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['priority'] = Variable<int>(priority);
    if (!nullToAbsent || dueAt != null) {
      map['due_at'] = Variable<DateTime>(dueAt);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double>(longitude);
    }
    map['radius_meters'] = Variable<double>(radiusMeters);
    if (!nullToAbsent || locationLabel != null) {
      map['location_label'] = Variable<String>(locationLabel);
    }
    map['completed'] = Variable<bool>(completed);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      id: Value(id),
      title: Value(title),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      priority: Value(priority),
      dueAt:
          dueAt == null && nullToAbsent ? const Value.absent() : Value(dueAt),
      latitude:
          latitude == null && nullToAbsent
              ? const Value.absent()
              : Value(latitude),
      longitude:
          longitude == null && nullToAbsent
              ? const Value.absent()
              : Value(longitude),
      radiusMeters: Value(radiusMeters),
      locationLabel:
          locationLabel == null && nullToAbsent
              ? const Value.absent()
              : Value(locationLabel),
      completed: Value(completed),
      createdAt: Value(createdAt),
    );
  }

  factory Task.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Task(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      notes: serializer.fromJson<String?>(json['notes']),
      priority: serializer.fromJson<int>(json['priority']),
      dueAt: serializer.fromJson<DateTime?>(json['dueAt']),
      latitude: serializer.fromJson<double?>(json['latitude']),
      longitude: serializer.fromJson<double?>(json['longitude']),
      radiusMeters: serializer.fromJson<double>(json['radiusMeters']),
      locationLabel: serializer.fromJson<String?>(json['locationLabel']),
      completed: serializer.fromJson<bool>(json['completed']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'notes': serializer.toJson<String?>(notes),
      'priority': serializer.toJson<int>(priority),
      'dueAt': serializer.toJson<DateTime?>(dueAt),
      'latitude': serializer.toJson<double?>(latitude),
      'longitude': serializer.toJson<double?>(longitude),
      'radiusMeters': serializer.toJson<double>(radiusMeters),
      'locationLabel': serializer.toJson<String?>(locationLabel),
      'completed': serializer.toJson<bool>(completed),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Task copyWith({
    int? id,
    String? title,
    Value<String?> notes = const Value.absent(),
    int? priority,
    Value<DateTime?> dueAt = const Value.absent(),
    Value<double?> latitude = const Value.absent(),
    Value<double?> longitude = const Value.absent(),
    double? radiusMeters,
    Value<String?> locationLabel = const Value.absent(),
    bool? completed,
    DateTime? createdAt,
  }) => Task(
    id: id ?? this.id,
    title: title ?? this.title,
    notes: notes.present ? notes.value : this.notes,
    priority: priority ?? this.priority,
    dueAt: dueAt.present ? dueAt.value : this.dueAt,
    latitude: latitude.present ? latitude.value : this.latitude,
    longitude: longitude.present ? longitude.value : this.longitude,
    radiusMeters: radiusMeters ?? this.radiusMeters,
    locationLabel:
        locationLabel.present ? locationLabel.value : this.locationLabel,
    completed: completed ?? this.completed,
    createdAt: createdAt ?? this.createdAt,
  );
  Task copyWithCompanion(TasksCompanion data) {
    return Task(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      notes: data.notes.present ? data.notes.value : this.notes,
      priority: data.priority.present ? data.priority.value : this.priority,
      dueAt: data.dueAt.present ? data.dueAt.value : this.dueAt,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      radiusMeters:
          data.radiusMeters.present
              ? data.radiusMeters.value
              : this.radiusMeters,
      locationLabel:
          data.locationLabel.present
              ? data.locationLabel.value
              : this.locationLabel,
      completed: data.completed.present ? data.completed.value : this.completed,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Task(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('notes: $notes, ')
          ..write('priority: $priority, ')
          ..write('dueAt: $dueAt, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('radiusMeters: $radiusMeters, ')
          ..write('locationLabel: $locationLabel, ')
          ..write('completed: $completed, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    notes,
    priority,
    dueAt,
    latitude,
    longitude,
    radiusMeters,
    locationLabel,
    completed,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Task &&
          other.id == this.id &&
          other.title == this.title &&
          other.notes == this.notes &&
          other.priority == this.priority &&
          other.dueAt == this.dueAt &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.radiusMeters == this.radiusMeters &&
          other.locationLabel == this.locationLabel &&
          other.completed == this.completed &&
          other.createdAt == this.createdAt);
}

class TasksCompanion extends UpdateCompanion<Task> {
  final Value<int> id;
  final Value<String> title;
  final Value<String?> notes;
  final Value<int> priority;
  final Value<DateTime?> dueAt;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<double> radiusMeters;
  final Value<String?> locationLabel;
  final Value<bool> completed;
  final Value<DateTime> createdAt;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.notes = const Value.absent(),
    this.priority = const Value.absent(),
    this.dueAt = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.radiusMeters = const Value.absent(),
    this.locationLabel = const Value.absent(),
    this.completed = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  TasksCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.notes = const Value.absent(),
    required int priority,
    this.dueAt = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.radiusMeters = const Value.absent(),
    this.locationLabel = const Value.absent(),
    this.completed = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : title = Value(title),
       priority = Value(priority);
  static Insertable<Task> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? notes,
    Expression<int>? priority,
    Expression<DateTime>? dueAt,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<double>? radiusMeters,
    Expression<String>? locationLabel,
    Expression<bool>? completed,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (notes != null) 'notes': notes,
      if (priority != null) 'priority': priority,
      if (dueAt != null) 'due_at': dueAt,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (radiusMeters != null) 'radius_meters': radiusMeters,
      if (locationLabel != null) 'location_label': locationLabel,
      if (completed != null) 'completed': completed,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  TasksCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String?>? notes,
    Value<int>? priority,
    Value<DateTime?>? dueAt,
    Value<double?>? latitude,
    Value<double?>? longitude,
    Value<double>? radiusMeters,
    Value<String?>? locationLabel,
    Value<bool>? completed,
    Value<DateTime>? createdAt,
  }) {
    return TasksCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      notes: notes ?? this.notes,
      priority: priority ?? this.priority,
      dueAt: dueAt ?? this.dueAt,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      radiusMeters: radiusMeters ?? this.radiusMeters,
      locationLabel: locationLabel ?? this.locationLabel,
      completed: completed ?? this.completed,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (priority.present) {
      map['priority'] = Variable<int>(priority.value);
    }
    if (dueAt.present) {
      map['due_at'] = Variable<DateTime>(dueAt.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (radiusMeters.present) {
      map['radius_meters'] = Variable<double>(radiusMeters.value);
    }
    if (locationLabel.present) {
      map['location_label'] = Variable<String>(locationLabel.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('notes: $notes, ')
          ..write('priority: $priority, ')
          ..write('dueAt: $dueAt, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('radiusMeters: $radiusMeters, ')
          ..write('locationLabel: $locationLabel, ')
          ..write('completed: $completed, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $NotificationEventsTable extends NotificationEvents
    with TableInfo<$NotificationEventsTable, NotificationEvent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotificationEventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<int> taskId = GeneratedColumn<int>(
    'task_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modeMeta = const VerificationMeta('mode');
  @override
  late final GeneratedColumn<String> mode = GeneratedColumn<String>(
    'mode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _triggerMeta = const VerificationMeta(
    'trigger',
  );
  @override
  late final GeneratedColumn<String> trigger = GeneratedColumn<String>(
    'trigger',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scheduledAtMeta = const VerificationMeta(
    'scheduledAt',
  );
  @override
  late final GeneratedColumn<DateTime> scheduledAt = GeneratedColumn<DateTime>(
    'scheduled_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deliveredAtMeta = const VerificationMeta(
    'deliveredAt',
  );
  @override
  late final GeneratedColumn<DateTime> deliveredAt = GeneratedColumn<DateTime>(
    'delivered_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _respondedAtMeta = const VerificationMeta(
    'respondedAt',
  );
  @override
  late final GeneratedColumn<DateTime> respondedAt = GeneratedColumn<DateTime>(
    'responded_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _responseMeta = const VerificationMeta(
    'response',
  );
  @override
  late final GeneratedColumn<String> response = GeneratedColumn<String>(
    'response',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _latencySecondsMeta = const VerificationMeta(
    'latencySeconds',
  );
  @override
  late final GeneratedColumn<int> latencySeconds = GeneratedColumn<int>(
    'latency_seconds',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _contextJsonMeta = const VerificationMeta(
    'contextJson',
  );
  @override
  late final GeneratedColumn<String> contextJson = GeneratedColumn<String>(
    'context_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('{}'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    taskId,
    mode,
    trigger,
    scheduledAt,
    deliveredAt,
    respondedAt,
    response,
    latencySeconds,
    contextJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'notification_events';
  @override
  VerificationContext validateIntegrity(
    Insertable<NotificationEvent> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('task_id')) {
      context.handle(
        _taskIdMeta,
        taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta),
      );
    } else if (isInserting) {
      context.missing(_taskIdMeta);
    }
    if (data.containsKey('mode')) {
      context.handle(
        _modeMeta,
        mode.isAcceptableOrUnknown(data['mode']!, _modeMeta),
      );
    } else if (isInserting) {
      context.missing(_modeMeta);
    }
    if (data.containsKey('trigger')) {
      context.handle(
        _triggerMeta,
        trigger.isAcceptableOrUnknown(data['trigger']!, _triggerMeta),
      );
    } else if (isInserting) {
      context.missing(_triggerMeta);
    }
    if (data.containsKey('scheduled_at')) {
      context.handle(
        _scheduledAtMeta,
        scheduledAt.isAcceptableOrUnknown(
          data['scheduled_at']!,
          _scheduledAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_scheduledAtMeta);
    }
    if (data.containsKey('delivered_at')) {
      context.handle(
        _deliveredAtMeta,
        deliveredAt.isAcceptableOrUnknown(
          data['delivered_at']!,
          _deliveredAtMeta,
        ),
      );
    }
    if (data.containsKey('responded_at')) {
      context.handle(
        _respondedAtMeta,
        respondedAt.isAcceptableOrUnknown(
          data['responded_at']!,
          _respondedAtMeta,
        ),
      );
    }
    if (data.containsKey('response')) {
      context.handle(
        _responseMeta,
        response.isAcceptableOrUnknown(data['response']!, _responseMeta),
      );
    }
    if (data.containsKey('latency_seconds')) {
      context.handle(
        _latencySecondsMeta,
        latencySeconds.isAcceptableOrUnknown(
          data['latency_seconds']!,
          _latencySecondsMeta,
        ),
      );
    }
    if (data.containsKey('context_json')) {
      context.handle(
        _contextJsonMeta,
        contextJson.isAcceptableOrUnknown(
          data['context_json']!,
          _contextJsonMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NotificationEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NotificationEvent(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      taskId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}task_id'],
          )!,
      mode:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}mode'],
          )!,
      trigger:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}trigger'],
          )!,
      scheduledAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}scheduled_at'],
          )!,
      deliveredAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}delivered_at'],
      ),
      respondedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}responded_at'],
      ),
      response: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}response'],
      ),
      latencySeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}latency_seconds'],
      ),
      contextJson:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}context_json'],
          )!,
    );
  }

  @override
  $NotificationEventsTable createAlias(String alias) {
    return $NotificationEventsTable(attachedDatabase, alias);
  }
}

class NotificationEvent extends DataClass
    implements Insertable<NotificationEvent> {
  final int id;
  final int taskId;
  final String mode;
  final String trigger;
  final DateTime scheduledAt;
  final DateTime? deliveredAt;
  final DateTime? respondedAt;
  final String? response;
  final int? latencySeconds;
  final String contextJson;
  const NotificationEvent({
    required this.id,
    required this.taskId,
    required this.mode,
    required this.trigger,
    required this.scheduledAt,
    this.deliveredAt,
    this.respondedAt,
    this.response,
    this.latencySeconds,
    required this.contextJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['task_id'] = Variable<int>(taskId);
    map['mode'] = Variable<String>(mode);
    map['trigger'] = Variable<String>(trigger);
    map['scheduled_at'] = Variable<DateTime>(scheduledAt);
    if (!nullToAbsent || deliveredAt != null) {
      map['delivered_at'] = Variable<DateTime>(deliveredAt);
    }
    if (!nullToAbsent || respondedAt != null) {
      map['responded_at'] = Variable<DateTime>(respondedAt);
    }
    if (!nullToAbsent || response != null) {
      map['response'] = Variable<String>(response);
    }
    if (!nullToAbsent || latencySeconds != null) {
      map['latency_seconds'] = Variable<int>(latencySeconds);
    }
    map['context_json'] = Variable<String>(contextJson);
    return map;
  }

  NotificationEventsCompanion toCompanion(bool nullToAbsent) {
    return NotificationEventsCompanion(
      id: Value(id),
      taskId: Value(taskId),
      mode: Value(mode),
      trigger: Value(trigger),
      scheduledAt: Value(scheduledAt),
      deliveredAt:
          deliveredAt == null && nullToAbsent
              ? const Value.absent()
              : Value(deliveredAt),
      respondedAt:
          respondedAt == null && nullToAbsent
              ? const Value.absent()
              : Value(respondedAt),
      response:
          response == null && nullToAbsent
              ? const Value.absent()
              : Value(response),
      latencySeconds:
          latencySeconds == null && nullToAbsent
              ? const Value.absent()
              : Value(latencySeconds),
      contextJson: Value(contextJson),
    );
  }

  factory NotificationEvent.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NotificationEvent(
      id: serializer.fromJson<int>(json['id']),
      taskId: serializer.fromJson<int>(json['taskId']),
      mode: serializer.fromJson<String>(json['mode']),
      trigger: serializer.fromJson<String>(json['trigger']),
      scheduledAt: serializer.fromJson<DateTime>(json['scheduledAt']),
      deliveredAt: serializer.fromJson<DateTime?>(json['deliveredAt']),
      respondedAt: serializer.fromJson<DateTime?>(json['respondedAt']),
      response: serializer.fromJson<String?>(json['response']),
      latencySeconds: serializer.fromJson<int?>(json['latencySeconds']),
      contextJson: serializer.fromJson<String>(json['contextJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'taskId': serializer.toJson<int>(taskId),
      'mode': serializer.toJson<String>(mode),
      'trigger': serializer.toJson<String>(trigger),
      'scheduledAt': serializer.toJson<DateTime>(scheduledAt),
      'deliveredAt': serializer.toJson<DateTime?>(deliveredAt),
      'respondedAt': serializer.toJson<DateTime?>(respondedAt),
      'response': serializer.toJson<String?>(response),
      'latencySeconds': serializer.toJson<int?>(latencySeconds),
      'contextJson': serializer.toJson<String>(contextJson),
    };
  }

  NotificationEvent copyWith({
    int? id,
    int? taskId,
    String? mode,
    String? trigger,
    DateTime? scheduledAt,
    Value<DateTime?> deliveredAt = const Value.absent(),
    Value<DateTime?> respondedAt = const Value.absent(),
    Value<String?> response = const Value.absent(),
    Value<int?> latencySeconds = const Value.absent(),
    String? contextJson,
  }) => NotificationEvent(
    id: id ?? this.id,
    taskId: taskId ?? this.taskId,
    mode: mode ?? this.mode,
    trigger: trigger ?? this.trigger,
    scheduledAt: scheduledAt ?? this.scheduledAt,
    deliveredAt: deliveredAt.present ? deliveredAt.value : this.deliveredAt,
    respondedAt: respondedAt.present ? respondedAt.value : this.respondedAt,
    response: response.present ? response.value : this.response,
    latencySeconds:
        latencySeconds.present ? latencySeconds.value : this.latencySeconds,
    contextJson: contextJson ?? this.contextJson,
  );
  NotificationEvent copyWithCompanion(NotificationEventsCompanion data) {
    return NotificationEvent(
      id: data.id.present ? data.id.value : this.id,
      taskId: data.taskId.present ? data.taskId.value : this.taskId,
      mode: data.mode.present ? data.mode.value : this.mode,
      trigger: data.trigger.present ? data.trigger.value : this.trigger,
      scheduledAt:
          data.scheduledAt.present ? data.scheduledAt.value : this.scheduledAt,
      deliveredAt:
          data.deliveredAt.present ? data.deliveredAt.value : this.deliveredAt,
      respondedAt:
          data.respondedAt.present ? data.respondedAt.value : this.respondedAt,
      response: data.response.present ? data.response.value : this.response,
      latencySeconds:
          data.latencySeconds.present
              ? data.latencySeconds.value
              : this.latencySeconds,
      contextJson:
          data.contextJson.present ? data.contextJson.value : this.contextJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NotificationEvent(')
          ..write('id: $id, ')
          ..write('taskId: $taskId, ')
          ..write('mode: $mode, ')
          ..write('trigger: $trigger, ')
          ..write('scheduledAt: $scheduledAt, ')
          ..write('deliveredAt: $deliveredAt, ')
          ..write('respondedAt: $respondedAt, ')
          ..write('response: $response, ')
          ..write('latencySeconds: $latencySeconds, ')
          ..write('contextJson: $contextJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    taskId,
    mode,
    trigger,
    scheduledAt,
    deliveredAt,
    respondedAt,
    response,
    latencySeconds,
    contextJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NotificationEvent &&
          other.id == this.id &&
          other.taskId == this.taskId &&
          other.mode == this.mode &&
          other.trigger == this.trigger &&
          other.scheduledAt == this.scheduledAt &&
          other.deliveredAt == this.deliveredAt &&
          other.respondedAt == this.respondedAt &&
          other.response == this.response &&
          other.latencySeconds == this.latencySeconds &&
          other.contextJson == this.contextJson);
}

class NotificationEventsCompanion extends UpdateCompanion<NotificationEvent> {
  final Value<int> id;
  final Value<int> taskId;
  final Value<String> mode;
  final Value<String> trigger;
  final Value<DateTime> scheduledAt;
  final Value<DateTime?> deliveredAt;
  final Value<DateTime?> respondedAt;
  final Value<String?> response;
  final Value<int?> latencySeconds;
  final Value<String> contextJson;
  const NotificationEventsCompanion({
    this.id = const Value.absent(),
    this.taskId = const Value.absent(),
    this.mode = const Value.absent(),
    this.trigger = const Value.absent(),
    this.scheduledAt = const Value.absent(),
    this.deliveredAt = const Value.absent(),
    this.respondedAt = const Value.absent(),
    this.response = const Value.absent(),
    this.latencySeconds = const Value.absent(),
    this.contextJson = const Value.absent(),
  });
  NotificationEventsCompanion.insert({
    this.id = const Value.absent(),
    required int taskId,
    required String mode,
    required String trigger,
    required DateTime scheduledAt,
    this.deliveredAt = const Value.absent(),
    this.respondedAt = const Value.absent(),
    this.response = const Value.absent(),
    this.latencySeconds = const Value.absent(),
    this.contextJson = const Value.absent(),
  }) : taskId = Value(taskId),
       mode = Value(mode),
       trigger = Value(trigger),
       scheduledAt = Value(scheduledAt);
  static Insertable<NotificationEvent> custom({
    Expression<int>? id,
    Expression<int>? taskId,
    Expression<String>? mode,
    Expression<String>? trigger,
    Expression<DateTime>? scheduledAt,
    Expression<DateTime>? deliveredAt,
    Expression<DateTime>? respondedAt,
    Expression<String>? response,
    Expression<int>? latencySeconds,
    Expression<String>? contextJson,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (taskId != null) 'task_id': taskId,
      if (mode != null) 'mode': mode,
      if (trigger != null) 'trigger': trigger,
      if (scheduledAt != null) 'scheduled_at': scheduledAt,
      if (deliveredAt != null) 'delivered_at': deliveredAt,
      if (respondedAt != null) 'responded_at': respondedAt,
      if (response != null) 'response': response,
      if (latencySeconds != null) 'latency_seconds': latencySeconds,
      if (contextJson != null) 'context_json': contextJson,
    });
  }

  NotificationEventsCompanion copyWith({
    Value<int>? id,
    Value<int>? taskId,
    Value<String>? mode,
    Value<String>? trigger,
    Value<DateTime>? scheduledAt,
    Value<DateTime?>? deliveredAt,
    Value<DateTime?>? respondedAt,
    Value<String?>? response,
    Value<int?>? latencySeconds,
    Value<String>? contextJson,
  }) {
    return NotificationEventsCompanion(
      id: id ?? this.id,
      taskId: taskId ?? this.taskId,
      mode: mode ?? this.mode,
      trigger: trigger ?? this.trigger,
      scheduledAt: scheduledAt ?? this.scheduledAt,
      deliveredAt: deliveredAt ?? this.deliveredAt,
      respondedAt: respondedAt ?? this.respondedAt,
      response: response ?? this.response,
      latencySeconds: latencySeconds ?? this.latencySeconds,
      contextJson: contextJson ?? this.contextJson,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (taskId.present) {
      map['task_id'] = Variable<int>(taskId.value);
    }
    if (mode.present) {
      map['mode'] = Variable<String>(mode.value);
    }
    if (trigger.present) {
      map['trigger'] = Variable<String>(trigger.value);
    }
    if (scheduledAt.present) {
      map['scheduled_at'] = Variable<DateTime>(scheduledAt.value);
    }
    if (deliveredAt.present) {
      map['delivered_at'] = Variable<DateTime>(deliveredAt.value);
    }
    if (respondedAt.present) {
      map['responded_at'] = Variable<DateTime>(respondedAt.value);
    }
    if (response.present) {
      map['response'] = Variable<String>(response.value);
    }
    if (latencySeconds.present) {
      map['latency_seconds'] = Variable<int>(latencySeconds.value);
    }
    if (contextJson.present) {
      map['context_json'] = Variable<String>(contextJson.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotificationEventsCompanion(')
          ..write('id: $id, ')
          ..write('taskId: $taskId, ')
          ..write('mode: $mode, ')
          ..write('trigger: $trigger, ')
          ..write('scheduledAt: $scheduledAt, ')
          ..write('deliveredAt: $deliveredAt, ')
          ..write('respondedAt: $respondedAt, ')
          ..write('response: $response, ')
          ..write('latencySeconds: $latencySeconds, ')
          ..write('contextJson: $contextJson')
          ..write(')'))
        .toString();
  }
}

class $ContextSnapshotsTable extends ContextSnapshots
    with TableInfo<$ContextSnapshotsTable, ContextSnapshot> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContextSnapshotsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _capturedAtMeta = const VerificationMeta(
    'capturedAt',
  );
  @override
  late final GeneratedColumn<DateTime> capturedAt = GeneratedColumn<DateTime>(
    'captured_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _activityMeta = const VerificationMeta(
    'activity',
  );
  @override
  late final GeneratedColumn<String> activity = GeneratedColumn<String>(
    'activity',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _latitudeMeta = const VerificationMeta(
    'latitude',
  );
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
    'latitude',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _longitudeMeta = const VerificationMeta(
    'longitude',
  );
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
    'longitude',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _batteryLevelMeta = const VerificationMeta(
    'batteryLevel',
  );
  @override
  late final GeneratedColumn<int> batteryLevel = GeneratedColumn<int>(
    'battery_level',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _extraJsonMeta = const VerificationMeta(
    'extraJson',
  );
  @override
  late final GeneratedColumn<String> extraJson = GeneratedColumn<String>(
    'extra_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('{}'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    capturedAt,
    activity,
    latitude,
    longitude,
    batteryLevel,
    extraJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'context_snapshots';
  @override
  VerificationContext validateIntegrity(
    Insertable<ContextSnapshot> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('captured_at')) {
      context.handle(
        _capturedAtMeta,
        capturedAt.isAcceptableOrUnknown(data['captured_at']!, _capturedAtMeta),
      );
    }
    if (data.containsKey('activity')) {
      context.handle(
        _activityMeta,
        activity.isAcceptableOrUnknown(data['activity']!, _activityMeta),
      );
    }
    if (data.containsKey('latitude')) {
      context.handle(
        _latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta),
      );
    }
    if (data.containsKey('longitude')) {
      context.handle(
        _longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta),
      );
    }
    if (data.containsKey('battery_level')) {
      context.handle(
        _batteryLevelMeta,
        batteryLevel.isAcceptableOrUnknown(
          data['battery_level']!,
          _batteryLevelMeta,
        ),
      );
    }
    if (data.containsKey('extra_json')) {
      context.handle(
        _extraJsonMeta,
        extraJson.isAcceptableOrUnknown(data['extra_json']!, _extraJsonMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ContextSnapshot map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ContextSnapshot(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      capturedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}captured_at'],
          )!,
      activity: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}activity'],
      ),
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitude'],
      ),
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitude'],
      ),
      batteryLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}battery_level'],
      ),
      extraJson:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}extra_json'],
          )!,
    );
  }

  @override
  $ContextSnapshotsTable createAlias(String alias) {
    return $ContextSnapshotsTable(attachedDatabase, alias);
  }
}

class ContextSnapshot extends DataClass implements Insertable<ContextSnapshot> {
  final int id;
  final DateTime capturedAt;
  final String? activity;
  final double? latitude;
  final double? longitude;
  final int? batteryLevel;
  final String extraJson;
  const ContextSnapshot({
    required this.id,
    required this.capturedAt,
    this.activity,
    this.latitude,
    this.longitude,
    this.batteryLevel,
    required this.extraJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['captured_at'] = Variable<DateTime>(capturedAt);
    if (!nullToAbsent || activity != null) {
      map['activity'] = Variable<String>(activity);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double>(longitude);
    }
    if (!nullToAbsent || batteryLevel != null) {
      map['battery_level'] = Variable<int>(batteryLevel);
    }
    map['extra_json'] = Variable<String>(extraJson);
    return map;
  }

  ContextSnapshotsCompanion toCompanion(bool nullToAbsent) {
    return ContextSnapshotsCompanion(
      id: Value(id),
      capturedAt: Value(capturedAt),
      activity:
          activity == null && nullToAbsent
              ? const Value.absent()
              : Value(activity),
      latitude:
          latitude == null && nullToAbsent
              ? const Value.absent()
              : Value(latitude),
      longitude:
          longitude == null && nullToAbsent
              ? const Value.absent()
              : Value(longitude),
      batteryLevel:
          batteryLevel == null && nullToAbsent
              ? const Value.absent()
              : Value(batteryLevel),
      extraJson: Value(extraJson),
    );
  }

  factory ContextSnapshot.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContextSnapshot(
      id: serializer.fromJson<int>(json['id']),
      capturedAt: serializer.fromJson<DateTime>(json['capturedAt']),
      activity: serializer.fromJson<String?>(json['activity']),
      latitude: serializer.fromJson<double?>(json['latitude']),
      longitude: serializer.fromJson<double?>(json['longitude']),
      batteryLevel: serializer.fromJson<int?>(json['batteryLevel']),
      extraJson: serializer.fromJson<String>(json['extraJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'capturedAt': serializer.toJson<DateTime>(capturedAt),
      'activity': serializer.toJson<String?>(activity),
      'latitude': serializer.toJson<double?>(latitude),
      'longitude': serializer.toJson<double?>(longitude),
      'batteryLevel': serializer.toJson<int?>(batteryLevel),
      'extraJson': serializer.toJson<String>(extraJson),
    };
  }

  ContextSnapshot copyWith({
    int? id,
    DateTime? capturedAt,
    Value<String?> activity = const Value.absent(),
    Value<double?> latitude = const Value.absent(),
    Value<double?> longitude = const Value.absent(),
    Value<int?> batteryLevel = const Value.absent(),
    String? extraJson,
  }) => ContextSnapshot(
    id: id ?? this.id,
    capturedAt: capturedAt ?? this.capturedAt,
    activity: activity.present ? activity.value : this.activity,
    latitude: latitude.present ? latitude.value : this.latitude,
    longitude: longitude.present ? longitude.value : this.longitude,
    batteryLevel: batteryLevel.present ? batteryLevel.value : this.batteryLevel,
    extraJson: extraJson ?? this.extraJson,
  );
  ContextSnapshot copyWithCompanion(ContextSnapshotsCompanion data) {
    return ContextSnapshot(
      id: data.id.present ? data.id.value : this.id,
      capturedAt:
          data.capturedAt.present ? data.capturedAt.value : this.capturedAt,
      activity: data.activity.present ? data.activity.value : this.activity,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      batteryLevel:
          data.batteryLevel.present
              ? data.batteryLevel.value
              : this.batteryLevel,
      extraJson: data.extraJson.present ? data.extraJson.value : this.extraJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ContextSnapshot(')
          ..write('id: $id, ')
          ..write('capturedAt: $capturedAt, ')
          ..write('activity: $activity, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('batteryLevel: $batteryLevel, ')
          ..write('extraJson: $extraJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    capturedAt,
    activity,
    latitude,
    longitude,
    batteryLevel,
    extraJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContextSnapshot &&
          other.id == this.id &&
          other.capturedAt == this.capturedAt &&
          other.activity == this.activity &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.batteryLevel == this.batteryLevel &&
          other.extraJson == this.extraJson);
}

class ContextSnapshotsCompanion extends UpdateCompanion<ContextSnapshot> {
  final Value<int> id;
  final Value<DateTime> capturedAt;
  final Value<String?> activity;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<int?> batteryLevel;
  final Value<String> extraJson;
  const ContextSnapshotsCompanion({
    this.id = const Value.absent(),
    this.capturedAt = const Value.absent(),
    this.activity = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.batteryLevel = const Value.absent(),
    this.extraJson = const Value.absent(),
  });
  ContextSnapshotsCompanion.insert({
    this.id = const Value.absent(),
    this.capturedAt = const Value.absent(),
    this.activity = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.batteryLevel = const Value.absent(),
    this.extraJson = const Value.absent(),
  });
  static Insertable<ContextSnapshot> custom({
    Expression<int>? id,
    Expression<DateTime>? capturedAt,
    Expression<String>? activity,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<int>? batteryLevel,
    Expression<String>? extraJson,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (capturedAt != null) 'captured_at': capturedAt,
      if (activity != null) 'activity': activity,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (batteryLevel != null) 'battery_level': batteryLevel,
      if (extraJson != null) 'extra_json': extraJson,
    });
  }

  ContextSnapshotsCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? capturedAt,
    Value<String?>? activity,
    Value<double?>? latitude,
    Value<double?>? longitude,
    Value<int?>? batteryLevel,
    Value<String>? extraJson,
  }) {
    return ContextSnapshotsCompanion(
      id: id ?? this.id,
      capturedAt: capturedAt ?? this.capturedAt,
      activity: activity ?? this.activity,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      batteryLevel: batteryLevel ?? this.batteryLevel,
      extraJson: extraJson ?? this.extraJson,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (capturedAt.present) {
      map['captured_at'] = Variable<DateTime>(capturedAt.value);
    }
    if (activity.present) {
      map['activity'] = Variable<String>(activity.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (batteryLevel.present) {
      map['battery_level'] = Variable<int>(batteryLevel.value);
    }
    if (extraJson.present) {
      map['extra_json'] = Variable<String>(extraJson.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContextSnapshotsCompanion(')
          ..write('id: $id, ')
          ..write('capturedAt: $capturedAt, ')
          ..write('activity: $activity, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('batteryLevel: $batteryLevel, ')
          ..write('extraJson: $extraJson')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TasksTable tasks = $TasksTable(this);
  late final $NotificationEventsTable notificationEvents =
      $NotificationEventsTable(this);
  late final $ContextSnapshotsTable contextSnapshots = $ContextSnapshotsTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    tasks,
    notificationEvents,
    contextSnapshots,
  ];
}

typedef $$TasksTableCreateCompanionBuilder =
    TasksCompanion Function({
      Value<int> id,
      required String title,
      Value<String?> notes,
      required int priority,
      Value<DateTime?> dueAt,
      Value<double?> latitude,
      Value<double?> longitude,
      Value<double> radiusMeters,
      Value<String?> locationLabel,
      Value<bool> completed,
      Value<DateTime> createdAt,
    });
typedef $$TasksTableUpdateCompanionBuilder =
    TasksCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<String?> notes,
      Value<int> priority,
      Value<DateTime?> dueAt,
      Value<double?> latitude,
      Value<double?> longitude,
      Value<double> radiusMeters,
      Value<String?> locationLabel,
      Value<bool> completed,
      Value<DateTime> createdAt,
    });

class $$TasksTableFilterComposer extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get priority => $composableBuilder(
    column: $table.priority,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dueAt => $composableBuilder(
    column: $table.dueAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get radiusMeters => $composableBuilder(
    column: $table.radiusMeters,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get locationLabel => $composableBuilder(
    column: $table.locationLabel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TasksTableOrderingComposer
    extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get priority => $composableBuilder(
    column: $table.priority,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dueAt => $composableBuilder(
    column: $table.dueAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get radiusMeters => $composableBuilder(
    column: $table.radiusMeters,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get locationLabel => $composableBuilder(
    column: $table.locationLabel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TasksTableAnnotationComposer
    extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<int> get priority =>
      $composableBuilder(column: $table.priority, builder: (column) => column);

  GeneratedColumn<DateTime> get dueAt =>
      $composableBuilder(column: $table.dueAt, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<double> get radiusMeters => $composableBuilder(
    column: $table.radiusMeters,
    builder: (column) => column,
  );

  GeneratedColumn<String> get locationLabel => $composableBuilder(
    column: $table.locationLabel,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get completed =>
      $composableBuilder(column: $table.completed, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$TasksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TasksTable,
          Task,
          $$TasksTableFilterComposer,
          $$TasksTableOrderingComposer,
          $$TasksTableAnnotationComposer,
          $$TasksTableCreateCompanionBuilder,
          $$TasksTableUpdateCompanionBuilder,
          (Task, BaseReferences<_$AppDatabase, $TasksTable, Task>),
          Task,
          PrefetchHooks Function()
        > {
  $$TasksTableTableManager(_$AppDatabase db, $TasksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$TasksTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$TasksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$TasksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> priority = const Value.absent(),
                Value<DateTime?> dueAt = const Value.absent(),
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                Value<double> radiusMeters = const Value.absent(),
                Value<String?> locationLabel = const Value.absent(),
                Value<bool> completed = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => TasksCompanion(
                id: id,
                title: title,
                notes: notes,
                priority: priority,
                dueAt: dueAt,
                latitude: latitude,
                longitude: longitude,
                radiusMeters: radiusMeters,
                locationLabel: locationLabel,
                completed: completed,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                Value<String?> notes = const Value.absent(),
                required int priority,
                Value<DateTime?> dueAt = const Value.absent(),
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                Value<double> radiusMeters = const Value.absent(),
                Value<String?> locationLabel = const Value.absent(),
                Value<bool> completed = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => TasksCompanion.insert(
                id: id,
                title: title,
                notes: notes,
                priority: priority,
                dueAt: dueAt,
                latitude: latitude,
                longitude: longitude,
                radiusMeters: radiusMeters,
                locationLabel: locationLabel,
                completed: completed,
                createdAt: createdAt,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TasksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TasksTable,
      Task,
      $$TasksTableFilterComposer,
      $$TasksTableOrderingComposer,
      $$TasksTableAnnotationComposer,
      $$TasksTableCreateCompanionBuilder,
      $$TasksTableUpdateCompanionBuilder,
      (Task, BaseReferences<_$AppDatabase, $TasksTable, Task>),
      Task,
      PrefetchHooks Function()
    >;
typedef $$NotificationEventsTableCreateCompanionBuilder =
    NotificationEventsCompanion Function({
      Value<int> id,
      required int taskId,
      required String mode,
      required String trigger,
      required DateTime scheduledAt,
      Value<DateTime?> deliveredAt,
      Value<DateTime?> respondedAt,
      Value<String?> response,
      Value<int?> latencySeconds,
      Value<String> contextJson,
    });
typedef $$NotificationEventsTableUpdateCompanionBuilder =
    NotificationEventsCompanion Function({
      Value<int> id,
      Value<int> taskId,
      Value<String> mode,
      Value<String> trigger,
      Value<DateTime> scheduledAt,
      Value<DateTime?> deliveredAt,
      Value<DateTime?> respondedAt,
      Value<String?> response,
      Value<int?> latencySeconds,
      Value<String> contextJson,
    });

class $$NotificationEventsTableFilterComposer
    extends Composer<_$AppDatabase, $NotificationEventsTable> {
  $$NotificationEventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get taskId => $composableBuilder(
    column: $table.taskId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get trigger => $composableBuilder(
    column: $table.trigger,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get scheduledAt => $composableBuilder(
    column: $table.scheduledAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deliveredAt => $composableBuilder(
    column: $table.deliveredAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get respondedAt => $composableBuilder(
    column: $table.respondedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get response => $composableBuilder(
    column: $table.response,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get latencySeconds => $composableBuilder(
    column: $table.latencySeconds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get contextJson => $composableBuilder(
    column: $table.contextJson,
    builder: (column) => ColumnFilters(column),
  );
}

class $$NotificationEventsTableOrderingComposer
    extends Composer<_$AppDatabase, $NotificationEventsTable> {
  $$NotificationEventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get taskId => $composableBuilder(
    column: $table.taskId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get trigger => $composableBuilder(
    column: $table.trigger,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get scheduledAt => $composableBuilder(
    column: $table.scheduledAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deliveredAt => $composableBuilder(
    column: $table.deliveredAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get respondedAt => $composableBuilder(
    column: $table.respondedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get response => $composableBuilder(
    column: $table.response,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get latencySeconds => $composableBuilder(
    column: $table.latencySeconds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get contextJson => $composableBuilder(
    column: $table.contextJson,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$NotificationEventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $NotificationEventsTable> {
  $$NotificationEventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get taskId =>
      $composableBuilder(column: $table.taskId, builder: (column) => column);

  GeneratedColumn<String> get mode =>
      $composableBuilder(column: $table.mode, builder: (column) => column);

  GeneratedColumn<String> get trigger =>
      $composableBuilder(column: $table.trigger, builder: (column) => column);

  GeneratedColumn<DateTime> get scheduledAt => $composableBuilder(
    column: $table.scheduledAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get deliveredAt => $composableBuilder(
    column: $table.deliveredAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get respondedAt => $composableBuilder(
    column: $table.respondedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get response =>
      $composableBuilder(column: $table.response, builder: (column) => column);

  GeneratedColumn<int> get latencySeconds => $composableBuilder(
    column: $table.latencySeconds,
    builder: (column) => column,
  );

  GeneratedColumn<String> get contextJson => $composableBuilder(
    column: $table.contextJson,
    builder: (column) => column,
  );
}

class $$NotificationEventsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $NotificationEventsTable,
          NotificationEvent,
          $$NotificationEventsTableFilterComposer,
          $$NotificationEventsTableOrderingComposer,
          $$NotificationEventsTableAnnotationComposer,
          $$NotificationEventsTableCreateCompanionBuilder,
          $$NotificationEventsTableUpdateCompanionBuilder,
          (
            NotificationEvent,
            BaseReferences<
              _$AppDatabase,
              $NotificationEventsTable,
              NotificationEvent
            >,
          ),
          NotificationEvent,
          PrefetchHooks Function()
        > {
  $$NotificationEventsTableTableManager(
    _$AppDatabase db,
    $NotificationEventsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$NotificationEventsTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$NotificationEventsTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$NotificationEventsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> taskId = const Value.absent(),
                Value<String> mode = const Value.absent(),
                Value<String> trigger = const Value.absent(),
                Value<DateTime> scheduledAt = const Value.absent(),
                Value<DateTime?> deliveredAt = const Value.absent(),
                Value<DateTime?> respondedAt = const Value.absent(),
                Value<String?> response = const Value.absent(),
                Value<int?> latencySeconds = const Value.absent(),
                Value<String> contextJson = const Value.absent(),
              }) => NotificationEventsCompanion(
                id: id,
                taskId: taskId,
                mode: mode,
                trigger: trigger,
                scheduledAt: scheduledAt,
                deliveredAt: deliveredAt,
                respondedAt: respondedAt,
                response: response,
                latencySeconds: latencySeconds,
                contextJson: contextJson,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int taskId,
                required String mode,
                required String trigger,
                required DateTime scheduledAt,
                Value<DateTime?> deliveredAt = const Value.absent(),
                Value<DateTime?> respondedAt = const Value.absent(),
                Value<String?> response = const Value.absent(),
                Value<int?> latencySeconds = const Value.absent(),
                Value<String> contextJson = const Value.absent(),
              }) => NotificationEventsCompanion.insert(
                id: id,
                taskId: taskId,
                mode: mode,
                trigger: trigger,
                scheduledAt: scheduledAt,
                deliveredAt: deliveredAt,
                respondedAt: respondedAt,
                response: response,
                latencySeconds: latencySeconds,
                contextJson: contextJson,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$NotificationEventsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $NotificationEventsTable,
      NotificationEvent,
      $$NotificationEventsTableFilterComposer,
      $$NotificationEventsTableOrderingComposer,
      $$NotificationEventsTableAnnotationComposer,
      $$NotificationEventsTableCreateCompanionBuilder,
      $$NotificationEventsTableUpdateCompanionBuilder,
      (
        NotificationEvent,
        BaseReferences<
          _$AppDatabase,
          $NotificationEventsTable,
          NotificationEvent
        >,
      ),
      NotificationEvent,
      PrefetchHooks Function()
    >;
typedef $$ContextSnapshotsTableCreateCompanionBuilder =
    ContextSnapshotsCompanion Function({
      Value<int> id,
      Value<DateTime> capturedAt,
      Value<String?> activity,
      Value<double?> latitude,
      Value<double?> longitude,
      Value<int?> batteryLevel,
      Value<String> extraJson,
    });
typedef $$ContextSnapshotsTableUpdateCompanionBuilder =
    ContextSnapshotsCompanion Function({
      Value<int> id,
      Value<DateTime> capturedAt,
      Value<String?> activity,
      Value<double?> latitude,
      Value<double?> longitude,
      Value<int?> batteryLevel,
      Value<String> extraJson,
    });

class $$ContextSnapshotsTableFilterComposer
    extends Composer<_$AppDatabase, $ContextSnapshotsTable> {
  $$ContextSnapshotsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get capturedAt => $composableBuilder(
    column: $table.capturedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get activity => $composableBuilder(
    column: $table.activity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get batteryLevel => $composableBuilder(
    column: $table.batteryLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get extraJson => $composableBuilder(
    column: $table.extraJson,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ContextSnapshotsTableOrderingComposer
    extends Composer<_$AppDatabase, $ContextSnapshotsTable> {
  $$ContextSnapshotsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get capturedAt => $composableBuilder(
    column: $table.capturedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get activity => $composableBuilder(
    column: $table.activity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get batteryLevel => $composableBuilder(
    column: $table.batteryLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get extraJson => $composableBuilder(
    column: $table.extraJson,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ContextSnapshotsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ContextSnapshotsTable> {
  $$ContextSnapshotsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get capturedAt => $composableBuilder(
    column: $table.capturedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get activity =>
      $composableBuilder(column: $table.activity, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<int> get batteryLevel => $composableBuilder(
    column: $table.batteryLevel,
    builder: (column) => column,
  );

  GeneratedColumn<String> get extraJson =>
      $composableBuilder(column: $table.extraJson, builder: (column) => column);
}

class $$ContextSnapshotsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ContextSnapshotsTable,
          ContextSnapshot,
          $$ContextSnapshotsTableFilterComposer,
          $$ContextSnapshotsTableOrderingComposer,
          $$ContextSnapshotsTableAnnotationComposer,
          $$ContextSnapshotsTableCreateCompanionBuilder,
          $$ContextSnapshotsTableUpdateCompanionBuilder,
          (
            ContextSnapshot,
            BaseReferences<
              _$AppDatabase,
              $ContextSnapshotsTable,
              ContextSnapshot
            >,
          ),
          ContextSnapshot,
          PrefetchHooks Function()
        > {
  $$ContextSnapshotsTableTableManager(
    _$AppDatabase db,
    $ContextSnapshotsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () =>
                  $$ContextSnapshotsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$ContextSnapshotsTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$ContextSnapshotsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> capturedAt = const Value.absent(),
                Value<String?> activity = const Value.absent(),
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                Value<int?> batteryLevel = const Value.absent(),
                Value<String> extraJson = const Value.absent(),
              }) => ContextSnapshotsCompanion(
                id: id,
                capturedAt: capturedAt,
                activity: activity,
                latitude: latitude,
                longitude: longitude,
                batteryLevel: batteryLevel,
                extraJson: extraJson,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> capturedAt = const Value.absent(),
                Value<String?> activity = const Value.absent(),
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                Value<int?> batteryLevel = const Value.absent(),
                Value<String> extraJson = const Value.absent(),
              }) => ContextSnapshotsCompanion.insert(
                id: id,
                capturedAt: capturedAt,
                activity: activity,
                latitude: latitude,
                longitude: longitude,
                batteryLevel: batteryLevel,
                extraJson: extraJson,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ContextSnapshotsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ContextSnapshotsTable,
      ContextSnapshot,
      $$ContextSnapshotsTableFilterComposer,
      $$ContextSnapshotsTableOrderingComposer,
      $$ContextSnapshotsTableAnnotationComposer,
      $$ContextSnapshotsTableCreateCompanionBuilder,
      $$ContextSnapshotsTableUpdateCompanionBuilder,
      (
        ContextSnapshot,
        BaseReferences<_$AppDatabase, $ContextSnapshotsTable, ContextSnapshot>,
      ),
      ContextSnapshot,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TasksTableTableManager get tasks =>
      $$TasksTableTableManager(_db, _db.tasks);
  $$NotificationEventsTableTableManager get notificationEvents =>
      $$NotificationEventsTableTableManager(_db, _db.notificationEvents);
  $$ContextSnapshotsTableTableManager get contextSnapshots =>
      $$ContextSnapshotsTableTableManager(_db, _db.contextSnapshots);
}
