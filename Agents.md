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
- **Consistent across ALL 25 images** — same line weight, same proportions, same color palette.

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

## Exercises (current set — 25 freehand home exercises)

| #  | ID                | Name              | Pose Description                                                                  | Muscle Highlight         |
|----|-------------------|-------------------|------------------------------------------------------------------------------------|--------------------------|
| 1  | jumping_jacks     | Jumping Jacks     | Standing with legs wide apart, arms raised fully overhead in a V shape             | shoulders and legs       |
| 2  | pushups           | Push-ups          | In push-up down position, arms bent, body straight and parallel to ground          | chest and triceps        |
| 3  | squats            | Squats            | Deep squat position, thighs parallel to ground, arms extended forward              | quadriceps and glutes    |
| 4  | plank             | Plank             | Forearm plank, body rigid and straight, forearms flat on ground                    | core and abs             |
| 5  | lunges            | Lunges            | Forward lunge, front knee bent at 90 degrees, back knee near ground                | quadriceps and glutes    |
| 6  | burpees           | Burpees           | Mid-jump position, arms overhead, knees slightly bent launching upward             | full body                |
| 7  | mountain_climbers | Mountain Climbers | Plank position with one knee driven forward toward chest                           | core and hip flexors     |
| 8  | high_knees        | High Knees        | Standing, one knee raised high to chest level, arms pumping                        | hip flexors and quads    |
| 9  | butt_kicks        | Butt Kicks        | Standing on one leg, other heel kicked back toward glute, arms pumping             | hamstrings               |
| 10 | tricep_dips       | Tricep Dips       | Hands on invisible chair behind, arms bent, body lowered, legs extended forward    | triceps                  |
| 11 | wall_sit          | Wall Sit          | Back flat against invisible wall, thighs parallel to ground, arms at sides         | quadriceps               |
| 12 | crunches          | Crunches          | Lying on back, knees bent, shoulders curled up off ground, hands behind head       | upper abs                |
| 13 | leg_raises        | Leg Raises        | Lying flat on back, legs raised straight up at 45 degree angle, arms at sides      | lower abs                |
| 14 | bicycle_crunches  | Bicycle Crunches  | Lying on back, one knee pulled in, opposite elbow reaching toward it, legs cycling | obliques and abs         |
| 15 | superman          | Superman          | Lying face down, arms and legs both lifted off ground, back arched                 | lower back and glutes    |
| 16 | glute_bridge      | Glute Bridge      | Lying on back, knees bent, hips pushed up high, arms flat on ground                | glutes and hamstrings    |
| 17 | donkey_kicks      | Donkey Kicks      | On all fours, one leg kicked straight back and up, knee bent 90 degrees            | glutes                   |
| 18 | side_plank        | Side Plank        | Balanced on one forearm and side of foot, body straight, free arm on hip           | obliques and core        |
| 19 | jump_squats       | Jump Squats       | Mid-air from squat jump, knees bent, arms at sides, feet off ground                | quads and calves         |
| 20 | calf_raises       | Calf Raises       | Standing on tiptoes, heels raised high off ground, arms at sides                   | calves                   |
| 21 | flutter_kicks     | Flutter Kicks     | Lying on back, legs straight and slightly raised, one leg higher in scissor motion | lower abs                |
| 22 | inchworm          | Inchworm          | Bent over at waist, hands walking forward on ground, legs straight                 | hamstrings and core      |
| 23 | bear_crawl        | Bear Crawl        | On hands and toes in tabletop position, knees hovering just above ground           | shoulders and core       |
| 24 | star_jumps        | Star Jumps        | Mid-air with arms and legs spread out in an X shape                                | full body                |
| 25 | pike_pushups      | Pike Push-ups     | Inverted V position, hands on ground, hips high, head between arms dipping down    | shoulders and triceps    |

## Git & Workflow

- Commit messages: `type(scope): description` (e.g. `feat(workout): add skip controls`).
- Never commit generated `.freezed.dart`, `.g.dart`, or `.config.dart` files without running build_runner first.
- Keep `assets/` images under 500KB each.
