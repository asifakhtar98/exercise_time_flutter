# Agents.md — Exercise Time Project Guardrails

## Architecture Rules

- **Flutter Web only** — landscape-first, single-page app.
- **SOLID principles** — every class has one responsibility.
- **Bloc only** — no Cubits, no raw ChangeNotifier, no Riverpod.
- **Injectable + GetIt** for DI. No manual service locator calls outside `injection.dart`.
- **Freezed** for all domain models, events, and states. No hand-written `copyWith`.
- **No business logic in widgets.** Widgets dispatch events, Blocs decide.

## Code Style

- Prefer external packages over hand-rolled solutions.
- No `print()` in production code — use `dart:developer` `log()` if needed.
- Max 300 lines per file. Split if exceeded.
- All public APIs must have doc comments.
- Run `dart run build_runner build --delete-conflicting-outputs` after any Freezed/Injectable change.
- Run `flutter analyze` before committing. Zero errors required.

## Asset & Image Generation Rules

**Every exercise illustration MUST follow these exact rules. No exceptions.**

### Multi-Step Layout (CRITICAL)
- **Each image shows 2–3 poses of the SAME character** in one frame, demonstrating the exercise steps/flow.
- Poses are arranged **left-to-right or in a triangular composition** showing the movement sequence (start → middle → end).
- Each pose is a **separate full-body figure** — not overlapping, clearly spaced.
- A small **curved arrow or dotted motion line** between poses to indicate movement direction.

### Visual Style
- **Art style**: Clean flat 2D vector illustration, hand-drawn feel. Simple clean lines, no photorealism, no 3D.
- **Outline weight**: Bold, consistent ~2-3px black outlines on the character.
- **Rendering**: Flat color fills with minimal shading. One shadow tone max per surface.
- **Consistent across ALL 17 images** — same line weight, same proportions, same color palette.

### Character (identical in EVERY image)
- **Same character**: Young athletic Indian boy, ~18 years old.
- **Hair**: Short black hair, slightly messy/spiky on top.
- **Face**: Simple, clean features. Determined expression.
- **Build**: Lean and athletic, not bulky.
- **Outfit (never changes)**:
  - Dark charcoal grey sleeveless tank top
  - Black athletic shorts (above knee)
  - Black athletic shoes with orange accent stripe
- **Skin tone**: Medium-warm brown (consistent across all images).

### Composition
- **Background**: Solid flat dark slate (#1E293B). No room, no floor texture, no props, no furniture.
- **All 2–3 figures** arranged in frame with clear spacing between them.
- **No text, no labels, no UI overlays, no watermarks, no exercise names.**

### Lighting & Effects
- **Accent glow**: Thin neon orange (#F59E0B) glow contour on the active muscle group of each pose.
- **No other glow effects, no particles, no speed lines, no halos.**
- **Small subtle shadow ellipse** under each figure for grounding (matching reference style).

### Prompt Template
Use this exact template, replacing only `{STEP_POSES}` and `{MUSCLE_HIGHLIGHT}`:

```
Flat 2D vector illustration showing 2-3 step-by-step poses of the same character demonstrating an exercise. Clean hand-drawn style, bold black outlines. Young athletic Indian boy, 18 years old, short black spiky hair, determined expression, lean build. Wearing dark charcoal sleeveless tank top, black athletic shorts, black shoes with orange stripe. {STEP_POSES}. Poses arranged left to right with small curved arrow between them showing movement flow. Solid flat dark slate background #1E293B. Thin neon orange #F59E0B glow contour highlighting {MUSCLE_HIGHLIGHT}. Small subtle shadow ellipse under each figure. No text, no labels, no UI, no watermark. Clean spacing between figures.
```

## Exercises (current set — 17 aerobic freehand home exercises)

| #  | ID                | Name              | Pose Description                                                                                          | Muscle Highlight           |
|----|-------------------|-------------------|-----------------------------------------------------------------------------------------------------------|----------------------------|
| 1  | jumping_jacks     | Jumping Jacks     | Standing with legs wide apart, arms raised fully overhead in a V shape                                    | shoulders and legs         |
| 2  | burpees           | Burpees           | Mid-jump position, arms overhead, knees slightly bent launching upward                                    | full body                  |
| 3  | mountain_climbers | Mountain Climbers | Plank position with one knee driven forward toward chest                                                  | core and hip flexors       |
| 4  | high_knees        | High Knees        | Standing, one knee raised high to chest level, arms pumping                                               | hip flexors and quads      |
| 5  | butt_kicks        | Butt Kicks        | Standing on one leg, other heel kicked back toward glute, arms pumping                                    | hamstrings                 |
| 6  | jump_squats       | Jump Squats       | Mid-air from squat jump, knees bent, arms at sides, feet off ground                                       | quads and calves           |
| 7  | star_jumps        | Star Jumps        | Mid-air with arms and legs spread out in an X shape                                                       | full body                  |
| 8  | skater_jumps      | Skater Jumps      | Balanced on one leg, opposite leg crossed behind, leaning laterally like a speed skater                   | glutes and outer thighs    |
| 9  | jumping_lunges    | Jumping Lunges    | Mid-air jumping with legs switching lunge position, body upright                                          | quads and glutes           |
| 10 | tuck_jumps        | Tuck Jumps        | Mid-air tucking both knees up to chest, hands touching knees, feet off ground                             | quads and core             |
| 11 | lateral_shuffles  | Lateral Shuffles  | Athletic stance shuffling laterally, knees bent, weight shifting side to side                              | inner thighs and calves    |
| 12 | fast_feet         | Fast Feet         | Athletic stance rapidly tapping feet in place, on balls of feet, arms up                                  | calves and ankles          |
| 13 | cross_jacks       | Cross Jacks       | Jumping with legs spread wide and arms out, landing with legs and arms crossed in X                       | shoulders and inner thighs |
| 14 | seal_jacks        | Seal Jacks        | Jumping with legs spread wide and arms open to sides, landing with arms clapping together in front         | chest and shoulders        |
| 15 | squat_thrusts     | Squat Thrusts     | Standing to squat, hands on ground, kick feet back into plank position                                    | quads and core             |
| 16 | running_in_place  | Running in Place  | Running in place with alternating foot lifts, arms pumping at 90 degrees                                  | calves and hip flexors     |
| 17 | lateral_hops      | Lateral Hops      | Hopping laterally side to side, both feet off ground, knees bent absorbing impact                         | calves and ankles          |

## Git & Workflow

- Commit messages: `type(scope): description` (e.g. `feat(workout): add skip controls`).
- Never commit generated `.freezed.dart`, `.g.dart`, or `.config.dart` files without running build_runner first.
- Keep `assets/` images under 500KB each.
