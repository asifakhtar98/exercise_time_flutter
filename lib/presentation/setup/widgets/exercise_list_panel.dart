import 'package:flutter/material.dart';

import '../../../domain/exercise/exercise.dart';
import '../../theme/app_theme.dart';

/// Right-side scrollable exercise list on the setup screen.
class ExerciseListPanel extends StatelessWidget {
  const ExerciseListPanel({super.key, required this.exercises});

  /// Exercises to display.
  final List<Exercise> exercises;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final ext = Theme.of(context).extension<AppThemeExtension>()!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 12),
          child: Text(
            'WORKOUT ROUTINE',
            style: AppTextStyles.label(color: colors.onSurfaceVariant),
          ),
        ),
        ...exercises.map((exercise) {
          return Container(
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              color: colors.surface,
              borderRadius: BorderRadius.circular(ext.cardRadius * 0.67),
              border: Border.all(color: colors.outline),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  exercise.imagePath,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                exercise.name,
                style: AppTextStyles.labelBold(color: colors.onSurface),
              ),
              subtitle: Text(
                exercise.description,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: colors.onSurfaceVariant, fontSize: 12),
              ),
            ),
          );
        }),
      ],
    );
  }
}
