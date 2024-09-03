// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $WeatherTableTable extends WeatherTable
    with TableInfo<$WeatherTableTable, WeatherTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WeatherTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
      'uid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _coordMeta = const VerificationMeta('coord');
  @override
  late final GeneratedColumnWithTypeConverter<Coordinates?, String> coord =
      GeneratedColumn<String>('coord', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Coordinates?>($WeatherTableTable.$convertercoordn);
  static const VerificationMeta _weatherListMeta =
      const VerificationMeta('weatherList');
  @override
  late final GeneratedColumnWithTypeConverter<WeatherList?, String>
      weatherList = GeneratedColumn<String>('weather_list', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<WeatherList?>(
              $WeatherTableTable.$converterweatherListn);
  static const VerificationMeta _baseMeta = const VerificationMeta('base');
  @override
  late final GeneratedColumn<String> base = GeneratedColumn<String>(
      'base', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mainTemperatureMeta =
      const VerificationMeta('mainTemperature');
  @override
  late final GeneratedColumnWithTypeConverter<MainTemperature?, String>
      mainTemperature = GeneratedColumn<String>(
              'main_temperature', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<MainTemperature?>(
              $WeatherTableTable.$convertermainTemperaturen);
  static const VerificationMeta _visibilityMeta =
      const VerificationMeta('visibility');
  @override
  late final GeneratedColumn<int> visibility = GeneratedColumn<int>(
      'visibility', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _windDetailsMeta =
      const VerificationMeta('windDetails');
  @override
  late final GeneratedColumnWithTypeConverter<WindDetails?, String>
      windDetails = GeneratedColumn<String>('wind_details', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<WindDetails?>(
              $WeatherTableTable.$converterwindDetailsn);
  static const VerificationMeta _cloudDetailsMeta =
      const VerificationMeta('cloudDetails');
  @override
  late final GeneratedColumnWithTypeConverter<CloudDetail?, String>
      cloudDetails = GeneratedColumn<String>('cloud_details', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<CloudDetail?>(
              $WeatherTableTable.$convertercloudDetailsn);
  static const VerificationMeta _dtMeta = const VerificationMeta('dt');
  @override
  late final GeneratedColumn<int> dt = GeneratedColumn<int>(
      'dt', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _sysDetailsMeta =
      const VerificationMeta('sysDetails');
  @override
  late final GeneratedColumnWithTypeConverter<SysDetails?, String> sysDetails =
      GeneratedColumn<String>('sys_details', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<SysDetails?>($WeatherTableTable.$convertersysDetailsn);
  static const VerificationMeta _timezoneMeta =
      const VerificationMeta('timezone');
  @override
  late final GeneratedColumn<int> timezone = GeneratedColumn<int>(
      'timezone', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codMeta = const VerificationMeta('cod');
  @override
  late final GeneratedColumn<int> cod = GeneratedColumn<int>(
      'cod', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        uid,
        coord,
        weatherList,
        base,
        mainTemperature,
        visibility,
        windDetails,
        cloudDetails,
        dt,
        sysDetails,
        timezone,
        id,
        name,
        cod
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'weather_table';
  @override
  VerificationContext validateIntegrity(Insertable<WeatherTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uid')) {
      context.handle(
          _uidMeta, uid.isAcceptableOrUnknown(data['uid']!, _uidMeta));
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    context.handle(_coordMeta, const VerificationResult.success());
    context.handle(_weatherListMeta, const VerificationResult.success());
    if (data.containsKey('base')) {
      context.handle(
          _baseMeta, base.isAcceptableOrUnknown(data['base']!, _baseMeta));
    }
    context.handle(_mainTemperatureMeta, const VerificationResult.success());
    if (data.containsKey('visibility')) {
      context.handle(
          _visibilityMeta,
          visibility.isAcceptableOrUnknown(
              data['visibility']!, _visibilityMeta));
    }
    context.handle(_windDetailsMeta, const VerificationResult.success());
    context.handle(_cloudDetailsMeta, const VerificationResult.success());
    if (data.containsKey('dt')) {
      context.handle(_dtMeta, dt.isAcceptableOrUnknown(data['dt']!, _dtMeta));
    }
    context.handle(_sysDetailsMeta, const VerificationResult.success());
    if (data.containsKey('timezone')) {
      context.handle(_timezoneMeta,
          timezone.isAcceptableOrUnknown(data['timezone']!, _timezoneMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('cod')) {
      context.handle(
          _codMeta, cod.isAcceptableOrUnknown(data['cod']!, _codMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uid};
  @override
  WeatherTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WeatherTableData(
      uid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uid'])!,
      coord: $WeatherTableTable.$convertercoordn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}coord'])),
      weatherList: $WeatherTableTable.$converterweatherListn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}weather_list'])),
      base: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}base']),
      mainTemperature: $WeatherTableTable.$convertermainTemperaturen.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}main_temperature'])),
      visibility: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}visibility']),
      windDetails: $WeatherTableTable.$converterwindDetailsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}wind_details'])),
      cloudDetails: $WeatherTableTable.$convertercloudDetailsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}cloud_details'])),
      dt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}dt']),
      sysDetails: $WeatherTableTable.$convertersysDetailsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}sys_details'])),
      timezone: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}timezone']),
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      cod: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cod']),
    );
  }

  @override
  $WeatherTableTable createAlias(String alias) {
    return $WeatherTableTable(attachedDatabase, alias);
  }

  static TypeConverter<Coordinates, String> $convertercoord = CoordConverter();
  static TypeConverter<Coordinates?, String?> $convertercoordn =
      NullAwareTypeConverter.wrap($convertercoord);
  static TypeConverter<WeatherList, String> $converterweatherList =
      WeatherListConverter();
  static TypeConverter<WeatherList?, String?> $converterweatherListn =
      NullAwareTypeConverter.wrap($converterweatherList);
  static TypeConverter<MainTemperature, String> $convertermainTemperature =
      MainTemperatureConverter();
  static TypeConverter<MainTemperature?, String?> $convertermainTemperaturen =
      NullAwareTypeConverter.wrap($convertermainTemperature);
  static TypeConverter<WindDetails, String> $converterwindDetails =
      WindDetailsConverter();
  static TypeConverter<WindDetails?, String?> $converterwindDetailsn =
      NullAwareTypeConverter.wrap($converterwindDetails);
  static TypeConverter<CloudDetail, String> $convertercloudDetails =
      CloudDetailsConverter();
  static TypeConverter<CloudDetail?, String?> $convertercloudDetailsn =
      NullAwareTypeConverter.wrap($convertercloudDetails);
  static TypeConverter<SysDetails, String> $convertersysDetails =
      SysDetailsConverter();
  static TypeConverter<SysDetails?, String?> $convertersysDetailsn =
      NullAwareTypeConverter.wrap($convertersysDetails);
}

class WeatherTableData extends DataClass
    implements Insertable<WeatherTableData> {
  final String uid;
  final Coordinates? coord;
  final WeatherList? weatherList;
  final String? base;
  final MainTemperature? mainTemperature;
  final int? visibility;
  final WindDetails? windDetails;
  final CloudDetail? cloudDetails;
  final int? dt;
  final SysDetails? sysDetails;
  final int? timezone;
  final int? id;
  final String? name;
  final int? cod;
  const WeatherTableData(
      {required this.uid,
      this.coord,
      this.weatherList,
      this.base,
      this.mainTemperature,
      this.visibility,
      this.windDetails,
      this.cloudDetails,
      this.dt,
      this.sysDetails,
      this.timezone,
      this.id,
      this.name,
      this.cod});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uid'] = Variable<String>(uid);
    if (!nullToAbsent || coord != null) {
      map['coord'] =
          Variable<String>($WeatherTableTable.$convertercoordn.toSql(coord));
    }
    if (!nullToAbsent || weatherList != null) {
      map['weather_list'] = Variable<String>(
          $WeatherTableTable.$converterweatherListn.toSql(weatherList));
    }
    if (!nullToAbsent || base != null) {
      map['base'] = Variable<String>(base);
    }
    if (!nullToAbsent || mainTemperature != null) {
      map['main_temperature'] = Variable<String>(
          $WeatherTableTable.$convertermainTemperaturen.toSql(mainTemperature));
    }
    if (!nullToAbsent || visibility != null) {
      map['visibility'] = Variable<int>(visibility);
    }
    if (!nullToAbsent || windDetails != null) {
      map['wind_details'] = Variable<String>(
          $WeatherTableTable.$converterwindDetailsn.toSql(windDetails));
    }
    if (!nullToAbsent || cloudDetails != null) {
      map['cloud_details'] = Variable<String>(
          $WeatherTableTable.$convertercloudDetailsn.toSql(cloudDetails));
    }
    if (!nullToAbsent || dt != null) {
      map['dt'] = Variable<int>(dt);
    }
    if (!nullToAbsent || sysDetails != null) {
      map['sys_details'] = Variable<String>(
          $WeatherTableTable.$convertersysDetailsn.toSql(sysDetails));
    }
    if (!nullToAbsent || timezone != null) {
      map['timezone'] = Variable<int>(timezone);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || cod != null) {
      map['cod'] = Variable<int>(cod);
    }
    return map;
  }

  WeatherTableCompanion toCompanion(bool nullToAbsent) {
    return WeatherTableCompanion(
      uid: Value(uid),
      coord:
          coord == null && nullToAbsent ? const Value.absent() : Value(coord),
      weatherList: weatherList == null && nullToAbsent
          ? const Value.absent()
          : Value(weatherList),
      base: base == null && nullToAbsent ? const Value.absent() : Value(base),
      mainTemperature: mainTemperature == null && nullToAbsent
          ? const Value.absent()
          : Value(mainTemperature),
      visibility: visibility == null && nullToAbsent
          ? const Value.absent()
          : Value(visibility),
      windDetails: windDetails == null && nullToAbsent
          ? const Value.absent()
          : Value(windDetails),
      cloudDetails: cloudDetails == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudDetails),
      dt: dt == null && nullToAbsent ? const Value.absent() : Value(dt),
      sysDetails: sysDetails == null && nullToAbsent
          ? const Value.absent()
          : Value(sysDetails),
      timezone: timezone == null && nullToAbsent
          ? const Value.absent()
          : Value(timezone),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      cod: cod == null && nullToAbsent ? const Value.absent() : Value(cod),
    );
  }

  factory WeatherTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WeatherTableData(
      uid: serializer.fromJson<String>(json['uid']),
      coord: serializer.fromJson<Coordinates?>(json['coord']),
      weatherList: serializer.fromJson<WeatherList?>(json['weatherList']),
      base: serializer.fromJson<String?>(json['base']),
      mainTemperature:
          serializer.fromJson<MainTemperature?>(json['mainTemperature']),
      visibility: serializer.fromJson<int?>(json['visibility']),
      windDetails: serializer.fromJson<WindDetails?>(json['windDetails']),
      cloudDetails: serializer.fromJson<CloudDetail?>(json['cloudDetails']),
      dt: serializer.fromJson<int?>(json['dt']),
      sysDetails: serializer.fromJson<SysDetails?>(json['sysDetails']),
      timezone: serializer.fromJson<int?>(json['timezone']),
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      cod: serializer.fromJson<int?>(json['cod']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uid': serializer.toJson<String>(uid),
      'coord': serializer.toJson<Coordinates?>(coord),
      'weatherList': serializer.toJson<WeatherList?>(weatherList),
      'base': serializer.toJson<String?>(base),
      'mainTemperature': serializer.toJson<MainTemperature?>(mainTemperature),
      'visibility': serializer.toJson<int?>(visibility),
      'windDetails': serializer.toJson<WindDetails?>(windDetails),
      'cloudDetails': serializer.toJson<CloudDetail?>(cloudDetails),
      'dt': serializer.toJson<int?>(dt),
      'sysDetails': serializer.toJson<SysDetails?>(sysDetails),
      'timezone': serializer.toJson<int?>(timezone),
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String?>(name),
      'cod': serializer.toJson<int?>(cod),
    };
  }

  WeatherTableData copyWith(
          {String? uid,
          Value<Coordinates?> coord = const Value.absent(),
          Value<WeatherList?> weatherList = const Value.absent(),
          Value<String?> base = const Value.absent(),
          Value<MainTemperature?> mainTemperature = const Value.absent(),
          Value<int?> visibility = const Value.absent(),
          Value<WindDetails?> windDetails = const Value.absent(),
          Value<CloudDetail?> cloudDetails = const Value.absent(),
          Value<int?> dt = const Value.absent(),
          Value<SysDetails?> sysDetails = const Value.absent(),
          Value<int?> timezone = const Value.absent(),
          Value<int?> id = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<int?> cod = const Value.absent()}) =>
      WeatherTableData(
        uid: uid ?? this.uid,
        coord: coord.present ? coord.value : this.coord,
        weatherList: weatherList.present ? weatherList.value : this.weatherList,
        base: base.present ? base.value : this.base,
        mainTemperature: mainTemperature.present
            ? mainTemperature.value
            : this.mainTemperature,
        visibility: visibility.present ? visibility.value : this.visibility,
        windDetails: windDetails.present ? windDetails.value : this.windDetails,
        cloudDetails:
            cloudDetails.present ? cloudDetails.value : this.cloudDetails,
        dt: dt.present ? dt.value : this.dt,
        sysDetails: sysDetails.present ? sysDetails.value : this.sysDetails,
        timezone: timezone.present ? timezone.value : this.timezone,
        id: id.present ? id.value : this.id,
        name: name.present ? name.value : this.name,
        cod: cod.present ? cod.value : this.cod,
      );
  @override
  String toString() {
    return (StringBuffer('WeatherTableData(')
          ..write('uid: $uid, ')
          ..write('coord: $coord, ')
          ..write('weatherList: $weatherList, ')
          ..write('base: $base, ')
          ..write('mainTemperature: $mainTemperature, ')
          ..write('visibility: $visibility, ')
          ..write('windDetails: $windDetails, ')
          ..write('cloudDetails: $cloudDetails, ')
          ..write('dt: $dt, ')
          ..write('sysDetails: $sysDetails, ')
          ..write('timezone: $timezone, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('cod: $cod')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      uid,
      coord,
      weatherList,
      base,
      mainTemperature,
      visibility,
      windDetails,
      cloudDetails,
      dt,
      sysDetails,
      timezone,
      id,
      name,
      cod);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WeatherTableData &&
          other.uid == this.uid &&
          other.coord == this.coord &&
          other.weatherList == this.weatherList &&
          other.base == this.base &&
          other.mainTemperature == this.mainTemperature &&
          other.visibility == this.visibility &&
          other.windDetails == this.windDetails &&
          other.cloudDetails == this.cloudDetails &&
          other.dt == this.dt &&
          other.sysDetails == this.sysDetails &&
          other.timezone == this.timezone &&
          other.id == this.id &&
          other.name == this.name &&
          other.cod == this.cod);
}

class WeatherTableCompanion extends UpdateCompanion<WeatherTableData> {
  final Value<String> uid;
  final Value<Coordinates?> coord;
  final Value<WeatherList?> weatherList;
  final Value<String?> base;
  final Value<MainTemperature?> mainTemperature;
  final Value<int?> visibility;
  final Value<WindDetails?> windDetails;
  final Value<CloudDetail?> cloudDetails;
  final Value<int?> dt;
  final Value<SysDetails?> sysDetails;
  final Value<int?> timezone;
  final Value<int?> id;
  final Value<String?> name;
  final Value<int?> cod;
  final Value<int> rowid;
  const WeatherTableCompanion({
    this.uid = const Value.absent(),
    this.coord = const Value.absent(),
    this.weatherList = const Value.absent(),
    this.base = const Value.absent(),
    this.mainTemperature = const Value.absent(),
    this.visibility = const Value.absent(),
    this.windDetails = const Value.absent(),
    this.cloudDetails = const Value.absent(),
    this.dt = const Value.absent(),
    this.sysDetails = const Value.absent(),
    this.timezone = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.cod = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WeatherTableCompanion.insert({
    required String uid,
    this.coord = const Value.absent(),
    this.weatherList = const Value.absent(),
    this.base = const Value.absent(),
    this.mainTemperature = const Value.absent(),
    this.visibility = const Value.absent(),
    this.windDetails = const Value.absent(),
    this.cloudDetails = const Value.absent(),
    this.dt = const Value.absent(),
    this.sysDetails = const Value.absent(),
    this.timezone = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.cod = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : uid = Value(uid);
  static Insertable<WeatherTableData> custom({
    Expression<String>? uid,
    Expression<String>? coord,
    Expression<String>? weatherList,
    Expression<String>? base,
    Expression<String>? mainTemperature,
    Expression<int>? visibility,
    Expression<String>? windDetails,
    Expression<String>? cloudDetails,
    Expression<int>? dt,
    Expression<String>? sysDetails,
    Expression<int>? timezone,
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? cod,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uid != null) 'uid': uid,
      if (coord != null) 'coord': coord,
      if (weatherList != null) 'weather_list': weatherList,
      if (base != null) 'base': base,
      if (mainTemperature != null) 'main_temperature': mainTemperature,
      if (visibility != null) 'visibility': visibility,
      if (windDetails != null) 'wind_details': windDetails,
      if (cloudDetails != null) 'cloud_details': cloudDetails,
      if (dt != null) 'dt': dt,
      if (sysDetails != null) 'sys_details': sysDetails,
      if (timezone != null) 'timezone': timezone,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (cod != null) 'cod': cod,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WeatherTableCompanion copyWith(
      {Value<String>? uid,
      Value<Coordinates?>? coord,
      Value<WeatherList?>? weatherList,
      Value<String?>? base,
      Value<MainTemperature?>? mainTemperature,
      Value<int?>? visibility,
      Value<WindDetails?>? windDetails,
      Value<CloudDetail?>? cloudDetails,
      Value<int?>? dt,
      Value<SysDetails?>? sysDetails,
      Value<int?>? timezone,
      Value<int?>? id,
      Value<String?>? name,
      Value<int?>? cod,
      Value<int>? rowid}) {
    return WeatherTableCompanion(
      uid: uid ?? this.uid,
      coord: coord ?? this.coord,
      weatherList: weatherList ?? this.weatherList,
      base: base ?? this.base,
      mainTemperature: mainTemperature ?? this.mainTemperature,
      visibility: visibility ?? this.visibility,
      windDetails: windDetails ?? this.windDetails,
      cloudDetails: cloudDetails ?? this.cloudDetails,
      dt: dt ?? this.dt,
      sysDetails: sysDetails ?? this.sysDetails,
      timezone: timezone ?? this.timezone,
      id: id ?? this.id,
      name: name ?? this.name,
      cod: cod ?? this.cod,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (coord.present) {
      map['coord'] = Variable<String>(
          $WeatherTableTable.$convertercoordn.toSql(coord.value));
    }
    if (weatherList.present) {
      map['weather_list'] = Variable<String>(
          $WeatherTableTable.$converterweatherListn.toSql(weatherList.value));
    }
    if (base.present) {
      map['base'] = Variable<String>(base.value);
    }
    if (mainTemperature.present) {
      map['main_temperature'] = Variable<String>($WeatherTableTable
          .$convertermainTemperaturen
          .toSql(mainTemperature.value));
    }
    if (visibility.present) {
      map['visibility'] = Variable<int>(visibility.value);
    }
    if (windDetails.present) {
      map['wind_details'] = Variable<String>(
          $WeatherTableTable.$converterwindDetailsn.toSql(windDetails.value));
    }
    if (cloudDetails.present) {
      map['cloud_details'] = Variable<String>(
          $WeatherTableTable.$convertercloudDetailsn.toSql(cloudDetails.value));
    }
    if (dt.present) {
      map['dt'] = Variable<int>(dt.value);
    }
    if (sysDetails.present) {
      map['sys_details'] = Variable<String>(
          $WeatherTableTable.$convertersysDetailsn.toSql(sysDetails.value));
    }
    if (timezone.present) {
      map['timezone'] = Variable<int>(timezone.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (cod.present) {
      map['cod'] = Variable<int>(cod.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WeatherTableCompanion(')
          ..write('uid: $uid, ')
          ..write('coord: $coord, ')
          ..write('weatherList: $weatherList, ')
          ..write('base: $base, ')
          ..write('mainTemperature: $mainTemperature, ')
          ..write('visibility: $visibility, ')
          ..write('windDetails: $windDetails, ')
          ..write('cloudDetails: $cloudDetails, ')
          ..write('dt: $dt, ')
          ..write('sysDetails: $sysDetails, ')
          ..write('timezone: $timezone, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('cod: $cod, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabaseManager get managers => _$AppDatabaseManager(this);
  late final $WeatherTableTable weatherTable = $WeatherTableTable(this);
  late final WeatherDao weatherDao = WeatherDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [weatherTable];
}

typedef $$WeatherTableTableInsertCompanionBuilder = WeatherTableCompanion
    Function({
  required String uid,
  Value<Coordinates?> coord,
  Value<WeatherList?> weatherList,
  Value<String?> base,
  Value<MainTemperature?> mainTemperature,
  Value<int?> visibility,
  Value<WindDetails?> windDetails,
  Value<CloudDetail?> cloudDetails,
  Value<int?> dt,
  Value<SysDetails?> sysDetails,
  Value<int?> timezone,
  Value<int?> id,
  Value<String?> name,
  Value<int?> cod,
  Value<int> rowid,
});
typedef $$WeatherTableTableUpdateCompanionBuilder = WeatherTableCompanion
    Function({
  Value<String> uid,
  Value<Coordinates?> coord,
  Value<WeatherList?> weatherList,
  Value<String?> base,
  Value<MainTemperature?> mainTemperature,
  Value<int?> visibility,
  Value<WindDetails?> windDetails,
  Value<CloudDetail?> cloudDetails,
  Value<int?> dt,
  Value<SysDetails?> sysDetails,
  Value<int?> timezone,
  Value<int?> id,
  Value<String?> name,
  Value<int?> cod,
  Value<int> rowid,
});

class $$WeatherTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $WeatherTableTable,
    WeatherTableData,
    $$WeatherTableTableFilterComposer,
    $$WeatherTableTableOrderingComposer,
    $$WeatherTableTableProcessedTableManager,
    $$WeatherTableTableInsertCompanionBuilder,
    $$WeatherTableTableUpdateCompanionBuilder> {
  $$WeatherTableTableTableManager(_$AppDatabase db, $WeatherTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$WeatherTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$WeatherTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$WeatherTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> uid = const Value.absent(),
            Value<Coordinates?> coord = const Value.absent(),
            Value<WeatherList?> weatherList = const Value.absent(),
            Value<String?> base = const Value.absent(),
            Value<MainTemperature?> mainTemperature = const Value.absent(),
            Value<int?> visibility = const Value.absent(),
            Value<WindDetails?> windDetails = const Value.absent(),
            Value<CloudDetail?> cloudDetails = const Value.absent(),
            Value<int?> dt = const Value.absent(),
            Value<SysDetails?> sysDetails = const Value.absent(),
            Value<int?> timezone = const Value.absent(),
            Value<int?> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<int?> cod = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              WeatherTableCompanion(
            uid: uid,
            coord: coord,
            weatherList: weatherList,
            base: base,
            mainTemperature: mainTemperature,
            visibility: visibility,
            windDetails: windDetails,
            cloudDetails: cloudDetails,
            dt: dt,
            sysDetails: sysDetails,
            timezone: timezone,
            id: id,
            name: name,
            cod: cod,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String uid,
            Value<Coordinates?> coord = const Value.absent(),
            Value<WeatherList?> weatherList = const Value.absent(),
            Value<String?> base = const Value.absent(),
            Value<MainTemperature?> mainTemperature = const Value.absent(),
            Value<int?> visibility = const Value.absent(),
            Value<WindDetails?> windDetails = const Value.absent(),
            Value<CloudDetail?> cloudDetails = const Value.absent(),
            Value<int?> dt = const Value.absent(),
            Value<SysDetails?> sysDetails = const Value.absent(),
            Value<int?> timezone = const Value.absent(),
            Value<int?> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<int?> cod = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              WeatherTableCompanion.insert(
            uid: uid,
            coord: coord,
            weatherList: weatherList,
            base: base,
            mainTemperature: mainTemperature,
            visibility: visibility,
            windDetails: windDetails,
            cloudDetails: cloudDetails,
            dt: dt,
            sysDetails: sysDetails,
            timezone: timezone,
            id: id,
            name: name,
            cod: cod,
            rowid: rowid,
          ),
        ));
}

class $$WeatherTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $WeatherTableTable,
    WeatherTableData,
    $$WeatherTableTableFilterComposer,
    $$WeatherTableTableOrderingComposer,
    $$WeatherTableTableProcessedTableManager,
    $$WeatherTableTableInsertCompanionBuilder,
    $$WeatherTableTableUpdateCompanionBuilder> {
  $$WeatherTableTableProcessedTableManager(super.$state);
}

class $$WeatherTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $WeatherTableTable> {
  $$WeatherTableTableFilterComposer(super.$state);
  ColumnFilters<String> get uid => $state.composableBuilder(
      column: $state.table.uid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<Coordinates?, Coordinates, String> get coord =>
      $state.composableBuilder(
          column: $state.table.coord,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<WeatherList?, WeatherList, String>
      get weatherList => $state.composableBuilder(
          column: $state.table.weatherList,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get base => $state.composableBuilder(
      column: $state.table.base,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<MainTemperature?, MainTemperature, String>
      get mainTemperature => $state.composableBuilder(
          column: $state.table.mainTemperature,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<int> get visibility => $state.composableBuilder(
      column: $state.table.visibility,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<WindDetails?, WindDetails, String>
      get windDetails => $state.composableBuilder(
          column: $state.table.windDetails,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<CloudDetail?, CloudDetail, String>
      get cloudDetails => $state.composableBuilder(
          column: $state.table.cloudDetails,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<int> get dt => $state.composableBuilder(
      column: $state.table.dt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<SysDetails?, SysDetails, String>
      get sysDetails => $state.composableBuilder(
          column: $state.table.sysDetails,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<int> get timezone => $state.composableBuilder(
      column: $state.table.timezone,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get cod => $state.composableBuilder(
      column: $state.table.cod,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$WeatherTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $WeatherTableTable> {
  $$WeatherTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get uid => $state.composableBuilder(
      column: $state.table.uid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get coord => $state.composableBuilder(
      column: $state.table.coord,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get weatherList => $state.composableBuilder(
      column: $state.table.weatherList,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get base => $state.composableBuilder(
      column: $state.table.base,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get mainTemperature => $state.composableBuilder(
      column: $state.table.mainTemperature,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get visibility => $state.composableBuilder(
      column: $state.table.visibility,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get windDetails => $state.composableBuilder(
      column: $state.table.windDetails,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cloudDetails => $state.composableBuilder(
      column: $state.table.cloudDetails,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get dt => $state.composableBuilder(
      column: $state.table.dt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sysDetails => $state.composableBuilder(
      column: $state.table.sysDetails,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get timezone => $state.composableBuilder(
      column: $state.table.timezone,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get cod => $state.composableBuilder(
      column: $state.table.cod,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$AppDatabaseManager {
  final _$AppDatabase _db;
  _$AppDatabaseManager(this._db);
  $$WeatherTableTableTableManager get weatherTable =>
      $$WeatherTableTableTableManager(_db, _db.weatherTable);
}
