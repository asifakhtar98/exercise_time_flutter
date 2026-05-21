import 'package:injectable/injectable.dart';
import '../../domain/exercise/exercise.dart';
import '../../domain/exercise/exercise_repository.dart';

/// Provides hardcoded list of 17 aerobic freehand home exercises.
@LazySingleton(as: ExerciseRepository)
class LocalExerciseRepositoryImpl implements ExerciseRepository {
  @override
  List<Exercise> getExercises() {
    return const [
      Exercise(
        id: 'jumping_jacks',
        name: 'Jumping Jacks',
        imagePath: 'assets/images/jumping_jacks.png',
        description:
            'Stand with feet together, arms at sides. Jump feet wide while raising arms overhead. Jump back to start.',
      ),
      Exercise(
        id: 'burpees',
        name: 'Burpees',
        imagePath: 'assets/images/burpees.png',
        description:
            'Squat down, kick feet back to plank, do a push-up, jump feet forward, then jump up with arms overhead.',
      ),
      Exercise(
        id: 'mountain_climbers',
        name: 'Mountain Climbers',
        imagePath: 'assets/images/mountain_climbers.png',
        description:
            'In plank position, rapidly drive knees toward chest one at a time like running in place.',
      ),
      Exercise(
        id: 'high_knees',
        name: 'High Knees',
        imagePath: 'assets/images/high_knees.png',
        description:
            'Run in place, driving knees up to chest height. Pump arms for momentum. Keep a fast pace.',
      ),
      Exercise(
        id: 'butt_kicks',
        name: 'Butt Kicks',
        imagePath: 'assets/images/butt_kicks.png',
        description:
            'Run in place, kicking heels back to touch your glutes. Keep upper body upright and pump arms.',
      ),
      Exercise(
        id: 'jump_squats',
        name: 'Jump Squats',
        imagePath: 'assets/images/jump_squats.png',
        description:
            'Perform a squat, then explode upward into a jump. Land softly and immediately squat again.',
      ),
      Exercise(
        id: 'star_jumps',
        name: 'Star Jumps',
        imagePath: 'assets/images/star_jumps.png',
        description:
            'From a squat, jump up explosively spreading arms and legs into an X shape. Land softly.',
      ),
      Exercise(
        id: 'skater_jumps',
        name: 'Skater Jumps',
        imagePath: 'assets/images/skater_jumps.png',
        description:
            'Leap laterally landing on one leg, opposite leg crossing behind. Alternate sides like a speed skater.',
      ),
      Exercise(
        id: 'jumping_lunges',
        name: 'Jumping Lunges',
        imagePath: 'assets/images/jumping_lunges.png',
        description:
            'From a lunge, jump and switch legs mid-air. Land softly in a lunge with the opposite leg forward.',
      ),
      Exercise(
        id: 'tuck_jumps',
        name: 'Tuck Jumps',
        imagePath: 'assets/images/tuck_jumps.png',
        description:
            'Jump explosively, tucking both knees to chest at the peak. Land softly with knees slightly bent.',
      ),
      Exercise(
        id: 'lateral_shuffles',
        name: 'Lateral Shuffles',
        imagePath: 'assets/images/lateral_shuffles.png',
        description:
            'In athletic stance, shuffle quickly side to side. Stay low with knees bent and weight on balls of feet.',
      ),
      Exercise(
        id: 'fast_feet',
        name: 'Fast Feet',
        imagePath: 'assets/images/fast_feet.png',
        description:
            'In athletic stance, rapidly tap feet in place as fast as possible. Stay on balls of feet, arms up.',
      ),
      Exercise(
        id: 'cross_jacks',
        name: 'Cross Jacks',
        imagePath: 'assets/images/cross_jacks.png',
        description:
            'Jump with legs wide and arms out, then jump again crossing legs and arms in front in an X pattern.',
      ),
      Exercise(
        id: 'seal_jacks',
        name: 'Seal Jacks',
        imagePath: 'assets/images/seal_jacks.png',
        description:
            'Like jumping jacks but arms extend forward and clap together instead of going overhead.',
      ),
      Exercise(
        id: 'squat_thrusts',
        name: 'Squat Thrusts',
        imagePath: 'assets/images/squat_thrusts.png',
        description:
            'From standing, squat and place hands on ground, kick feet back to plank, then reverse to standing.',
      ),
      Exercise(
        id: 'running_in_place',
        name: 'Running in Place',
        imagePath: 'assets/images/running_in_place.png',
        description:
            'Run in place with controlled arm pumps. Lift feet off ground with each stride. Maintain steady pace.',
      ),
      Exercise(
        id: 'lateral_hops',
        name: 'Lateral Hops',
        imagePath: 'assets/images/lateral_hops.png',
        description:
            'Hop side to side with both feet together. Land softly with knees bent to absorb impact.',
      ),
    ];
  }
}
