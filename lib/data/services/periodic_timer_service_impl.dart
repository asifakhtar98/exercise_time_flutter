import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../domain/services/timer_service.dart';

/// [TimerService] implementation using [Stream.periodic].
///
/// Each instance manages its own stream subscription. Create a new
/// instance per workout session — do not share as a singleton.
@Injectable(as: TimerService)
class PeriodicTimerServiceImpl implements TimerService {
  StreamController<int>? _controller;
  StreamSubscription<int>? _subscription;

  @override
  Stream<int> tick() {
    _controller ??= StreamController<int>.broadcast();
    return _controller!.stream;
  }

  @override
  void start() {
    stop();
    _controller = StreamController<int>.broadcast();
    _subscription =
        Stream.periodic(const Duration(seconds: 1), (count) => count).listen((
          count,
        ) {
          _controller?.add(count);
        });
  }

  @override
  void stop() {
    _subscription?.cancel();
    _subscription = null;
    _controller?.close();
    _controller = null;
  }
}
