// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:exercise_time/data/audio/audio_service_impl.dart' as _i9;
import 'package:exercise_time/data/exercise/local_exercise_repository_impl.dart'
    as _i251;
import 'package:exercise_time/data/services/periodic_timer_service_impl.dart'
    as _i924;
import 'package:exercise_time/data/settings/settings_repository_impl.dart'
    as _i85;
import 'package:exercise_time/domain/audio/audio_service.dart' as _i905;
import 'package:exercise_time/domain/exercise/exercise_repository.dart' as _i59;
import 'package:exercise_time/domain/services/timer_service.dart' as _i497;
import 'package:exercise_time/domain/settings/settings_repository.dart'
    as _i847;
import 'package:exercise_time/domain/usecases/get_exercises.dart' as _i18;
import 'package:exercise_time/domain/usecases/get_timer_settings.dart' as _i922;
import 'package:exercise_time/domain/usecases/save_timer_settings.dart'
    as _i601;
import 'package:exercise_time/presentation/exercise_list/bloc/exercise_list_bloc.dart'
    as _i377;
import 'package:exercise_time/presentation/settings/bloc/settings_bloc.dart'
    as _i820;
import 'package:exercise_time/presentation/workout/bloc/workout_bloc.dart'
    as _i1032;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i59.ExerciseRepository>(
      () => _i251.LocalExerciseRepositoryImpl(),
    );
    gh.lazySingleton<_i847.SettingsRepository>(
      () => _i85.SettingsRepositoryImpl(),
    );
    gh.lazySingleton<_i905.AudioService>(() => _i9.AudioServiceImpl());
    gh.factory<_i497.TimerService>(() => _i924.PeriodicTimerServiceImpl());
    gh.factory<_i1032.WorkoutBloc>(
      () => _i1032.WorkoutBloc(
        gh<_i905.AudioService>(),
        gh<_i497.TimerService>(),
      ),
    );
    gh.factory<_i922.GetTimerSettings>(
      () => _i922.GetTimerSettings(gh<_i847.SettingsRepository>()),
    );
    gh.factory<_i601.SaveTimerSettings>(
      () => _i601.SaveTimerSettings(gh<_i847.SettingsRepository>()),
    );
    gh.factory<_i18.GetExercises>(
      () => _i18.GetExercises(gh<_i59.ExerciseRepository>()),
    );
    gh.factory<_i820.SettingsBloc>(
      () => _i820.SettingsBloc(
        gh<_i922.GetTimerSettings>(),
        gh<_i601.SaveTimerSettings>(),
      ),
    );
    gh.factory<_i377.ExerciseListBloc>(
      () => _i377.ExerciseListBloc(gh<_i18.GetExercises>()),
    );
    return this;
  }
}
