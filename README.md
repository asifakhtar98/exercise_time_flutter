# 🏋️‍♂️ Exercise Time — Freehand Home Workout Companion

Exercise Time is a high-fidelity, landscape-first web application designed to guide users through an active, freehand home workout routine. By combining interactive controls with clean, premium vector animations and synchronized audio cues, it provides an immersive, distraction-free home training experience.

---

## 🎯 Product Overview

The goal of **Exercise Time** is to make starting and maintaining a home workout routine as simple and visual as possible. Designed specifically for screens placed in front of you (like laptops or tablets in landscape mode), the app helps you focus purely on execution without needing complex equipment or setup.

---

## ✨ Key Product Features

- **📺 Landscape-First Dashboard**: Optimized side-by-side layout displaying workout settings and your active exercise routine at a single glance.
- **⏱️ Instant Timer Customization**: Quick-adjust slider (from 5 to 120 seconds per move) alongside rapid-select buttons (`10s`, `15s`, `30s`, `45s`) to control workout intensity.
- **🏃 17 Aerobic Home Exercises**: A diverse set of freehand, bodyweight exercises covering full-body conditioning, cardio, and core strength.
- **🎨 Premium Visual Guides**: Custom hand-drawn 2D vector illustrations showing step-by-step movement flow with vibrant neon-orange highlights on the targeted muscle groups.
- **🔊 Dynamic Audio Trainer**: A built-in sound cue system (metronome beep) that signals the start, pause, and the final seconds countdown of each exercise, so you never have to look at the screen.
- **🔄 Orientation Guard**: Automatically detects screen posture and prompts users to rotate their mobile device or tablet to landscape mode for the best visual experience.

---

## 🏃 The Exercise Library

The workout routine consists of **17 aerobic home exercises** requiring zero equipment:

| Exercise Name | Target Muscle Area | Movement Flow |
|---|---|---|
| **Jumping Jacks** | Shoulders & Legs | Classic vertical jumps transitioning arms overhead in a V shape. |
| **Burpees** | Full Body | Plank-to-jump explosive transition for full body conditioning. |
| **Mountain Climbers** | Core & Hip Flexors | Rapid alternating knee-to-chest drives in a plank position. |
| **High Knees** | Hip Flexors & Quads | Fast-paced running in place, pulling knees up to chest level. |
| **Butt Kicks** | Hamstrings | Cardio stride kicking heels back to touch the glutes. |
| **Jump Squats** | Quads & Calves | Dynamic squat followed by an explosive vertical jump. |
| **Star Jumps** | Full Body | Mid-air explosive jump, extending arms and legs out in an X shape. |
| **Skater Jumps** | Glutes & Outer Thighs | Lateral speed-skater bounding, landing on a single leg. |
| **Jumping Lunges** | Quads & Glutes | Alternating lunge strides switched mid-air. |
| **Tuck Jumps** | Quads & Core | Explosive jump, drawing both knees to the chest at peak height. |
| **Lateral Shuffles** | Inner Thighs & Calves | Side-to-side athletic shuffling keeping a low center of gravity. |
| **Fast Feet** | Calves & Ankles | High-frequency foot tapping in place on the balls of your feet. |
| **Cross Jacks** | Shoulders & Inner Thighs | Jumping jack variant crossing arms and legs in an X pattern on landing. |
| **Seal Jacks** | Chest & Shoulders | Jumping jack variant clapping hands directly out in front. |
| **Squat Thrusts** | Quads & Core | Squatting down, kicking feet out to plank, and returning to stand. |
| **Running in Place** | Calves & Hip Flexors | Controlled steady-state indoor running with active 90-degree arm pumps. |
| **Lateral Hops** | Calves & Ankles | Rapid side-to-side jumping keeping both feet together. |

---

## 🎨 Visual Identity & Style

To maintain a consistent, premium feel across the workout suite, all illustrations adhere to a custom design system:
- **Character**: An athletic boy dressed in a charcoal tank top, black shorts, and black sneakers with an orange accent stripe.
- **Composition**: Clean, hand-drawn vector figures showing start, middle, and end poses of each exercise, arranged left-to-right.
- **Palette**: Sleek, modern dark-slate background (`#1E293B`) paired with a neon orange (`#F59E0B`) accent glow outlining active muscles.
- **Simplicity**: Zero text overlay, UI clutter, or distracting background details.

---

## 🚀 How to Launch the Workout

1. **Install Flutter**: Make sure you have Flutter installed on your machine.
2. **Fetch Dependencies**: Open your terminal in the project directory and run:
   ```bash
   flutter pub get
   ```
3. **Generate Assets & Code**: Run the builder to configure local files:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```
4. **Launch the Web App**:
   ```bash
   flutter run -d chrome
   ```
5. **Position and Play**: Place your device in landscape orientation, select your exercise duration, and press **Start Workout**!
