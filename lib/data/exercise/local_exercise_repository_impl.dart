import 'package:injectable/injectable.dart';
import '../../domain/exercise/exercise.dart';
import '../../domain/exercise/exercise_repository.dart';

/// Provides hardcoded list of 25 freehand home exercises.
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
        id: 'pushups',
        name: 'Push-ups',
        imagePath: 'assets/images/pushups.png',
        description:
            'Keep body in a straight line. Lower chest to the floor by bending arms, then push back up.',
      ),
      Exercise(
        id: 'squats',
        name: 'Squats',
        imagePath: 'assets/images/squats.png',
        description:
            'Stand with feet shoulder-width apart. Lower hips until thighs are parallel to ground, then stand.',
      ),
      Exercise(
        id: 'plank',
        name: 'Plank',
        imagePath: 'assets/images/plank.png',
        description:
            'Hold forearm plank with core tight and body straight. Don\'t let hips sag or pike up.',
      ),
      Exercise(
        id: 'lunges',
        name: 'Lunges',
        imagePath: 'assets/images/lunges.png',
        description:
            'Step forward into a lunge. Front knee at 90°, back knee near ground. Alternate legs.',
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
        id: 'tricep_dips',
        name: 'Tricep Dips',
        imagePath: 'assets/images/tricep_dips.png',
        description:
            'Hands on a chair edge behind you. Lower body by bending elbows to 90°, then press back up.',
      ),
      Exercise(
        id: 'wall_sit',
        name: 'Wall Sit',
        imagePath: 'assets/images/wall_sit.png',
        description:
            'Press back flat against a wall. Slide down until thighs are parallel to ground. Hold the position.',
      ),
      Exercise(
        id: 'crunches',
        name: 'Crunches',
        imagePath: 'assets/images/crunches.png',
        description:
            'Lie on back, knees bent. Curl shoulders off ground using abs. Lower slowly. Don\'t pull on neck.',
      ),
      Exercise(
        id: 'leg_raises',
        name: 'Leg Raises',
        imagePath: 'assets/images/leg_raises.png',
        description:
            'Lie flat on back. Keep legs straight and raise them to 90°, then lower slowly without touching floor.',
      ),
      Exercise(
        id: 'bicycle_crunches',
        name: 'Bicycle Crunches',
        imagePath: 'assets/images/bicycle_crunches.png',
        description:
            'Lie on back. Bring opposite elbow to knee while extending the other leg. Alternate in a pedaling motion.',
      ),
      Exercise(
        id: 'superman',
        name: 'Superman',
        imagePath: 'assets/images/superman.png',
        description:
            'Lie face down. Simultaneously lift arms, chest, and legs off the ground. Hold briefly, then lower.',
      ),
      Exercise(
        id: 'glute_bridge',
        name: 'Glute Bridge',
        imagePath: 'assets/images/glute_bridge.png',
        description:
            'Lie on back, knees bent, feet flat. Push hips up squeezing glutes at the top. Lower slowly.',
      ),
      Exercise(
        id: 'donkey_kicks',
        name: 'Donkey Kicks',
        imagePath: 'assets/images/donkey_kicks.png',
        description:
            'On all fours, kick one leg straight back and up, keeping knee bent at 90°. Squeeze glute at top.',
      ),
      Exercise(
        id: 'side_plank',
        name: 'Side Plank',
        imagePath: 'assets/images/side_plank.png',
        description:
            'Balance on one forearm and side of foot. Keep body in a straight line. Hold, then switch sides.',
      ),
      Exercise(
        id: 'jump_squats',
        name: 'Jump Squats',
        imagePath: 'assets/images/jump_squats.png',
        description:
            'Perform a squat, then explode upward into a jump. Land softly and immediately squat again.',
      ),
      Exercise(
        id: 'calf_raises',
        name: 'Calf Raises',
        imagePath: 'assets/images/calf_raises.png',
        description:
            'Stand with feet hip-width apart. Rise up on your toes as high as possible, then lower slowly.',
      ),
      Exercise(
        id: 'flutter_kicks',
        name: 'Flutter Kicks',
        imagePath: 'assets/images/flutter_kicks.png',
        description:
            'Lie on back, legs straight. Raise legs slightly off ground and alternate kicking up and down.',
      ),
      Exercise(
        id: 'inchworm',
        name: 'Inchworm',
        imagePath: 'assets/images/inchworm.png',
        description:
            'Stand, bend forward, walk hands out to plank. Do a push-up (optional), walk hands back. Stand up.',
      ),
      Exercise(
        id: 'bear_crawl',
        name: 'Bear Crawl',
        imagePath: 'assets/images/bear_crawl.png',
        description:
            'On hands and toes, knees hovering. Crawl forward moving opposite hand and foot together.',
      ),
      Exercise(
        id: 'star_jumps',
        name: 'Star Jumps',
        imagePath: 'assets/images/star_jumps.png',
        description:
            'From a squat, jump up explosively spreading arms and legs into an X shape. Land softly.',
      ),
      Exercise(
        id: 'pike_pushups',
        name: 'Pike Push-ups',
        imagePath: 'assets/images/pike_pushups.png',
        description:
            'Start in downward dog. Bend elbows to lower head toward ground, then press back up. Targets shoulders.',
      ),
    ];
  }
}
