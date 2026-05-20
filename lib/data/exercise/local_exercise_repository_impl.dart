import 'package:injectable/injectable.dart';
import '../../domain/exercise/exercise.dart';
import '../../domain/exercise/exercise_repository.dart';

@LazySingleton(as: ExerciseRepository)
class LocalExerciseRepositoryImpl implements ExerciseRepository {
  @override
  List<Exercise> getExercises() {
    return const [
      Exercise(
        id: 'pushups',
        name: 'Push-ups',
        imagePath: 'assets/images/pushups.png',
        description: 'Keep your body in a straight line. Lower yourself until your chest nearly touches the floor, then push back up.',
      ),
      Exercise(
        id: 'squats',
        name: 'Squats',
        imagePath: 'assets/images/squats.png',
        description: 'Stand with feet shoulder-width apart. Lower your hips as if sitting in a chair, keeping chest up, then stand up.',
      ),
      Exercise(
        id: 'plank',
        name: 'Plank',
        imagePath: 'assets/images/plank.png',
        description: 'Hold a pushup position but on your elbows. Keep your core tight and body straight. Don\'t let your hips sag.',
      ),
      Exercise(
        id: 'jumping_jacks',
        name: 'Jumping Jacks',
        imagePath: 'assets/images/jumping_jacks.png',
        description: 'Jump feet out while raising arms above head. Jump back to starting position. Maintain a steady rhythm.',
      ),
    ];
  }
}
