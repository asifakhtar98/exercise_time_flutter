import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

/// Circular countdown ring showing remaining seconds.
///
/// Turns [AppThemeExtension.timerWarning] color when <= 3 seconds remain.
class TimerRing extends StatelessWidget {
  const TimerRing({
    super.key,
    required this.progress,
    required this.secondsRemaining,
  });

  /// Value from 1.0 (full) to 0.0 (expired).
  final double progress;

  /// Seconds remaining — displayed as center text.
  final int secondsRemaining;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final ext = Theme.of(context).extension<AppThemeExtension>()!;
    final isWarning = secondsRemaining <= 3;

    return SizedBox(
      width: 180,
      height: 180,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background ring
          SizedBox(
            width: 180,
            height: 180,
            child: CircularProgressIndicator(
              value: 1.0,
              strokeWidth: 12,
              valueColor: AlwaysStoppedAnimation<Color>(colors.outline),
            ),
          ),
          // Active progress ring
          SizedBox(
            width: 180,
            height: 180,
            child: CircularProgressIndicator(
              value: progress,
              strokeWidth: 12,
              valueColor: AlwaysStoppedAnimation<Color>(
                isWarning ? ext.timerWarning : colors.onSurface,
              ),
            ),
          ),
          // Seconds text
          Text(
            '$secondsRemaining',
            style: AppTextStyles.timerDisplay(
              color: isWarning ? ext.timerWarning : colors.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
