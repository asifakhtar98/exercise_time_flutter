import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Centralized app theme — single source of truth for all visual tokens.
///
/// Usage in widgets:
/// ```dart
/// final theme = Theme.of(context);
/// final colors = theme.colorScheme;
/// final text = theme.textTheme;
/// final ext = theme.extension<AppThemeExtension>()!;
/// ```
abstract final class AppTheme {
  /// The one and only theme for the app.
  static ThemeData get light {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF1A1A1A),
      brightness: Brightness.light,
      surface: Colors.white,
      onSurface: const Color(0xFF1A1A1A),
      onSurfaceVariant: const Color(0xFF737373),
      outline: const Color(0xFFE5E5E5),
      outlineVariant: const Color(0xFFF5F5F5),
      error: const Color(0xFFDC2626),
    );

    final baseText = ThemeData.light().textTheme;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: const Color(0xFFFAFAFA),
      textTheme: GoogleFonts.interTextTheme(baseText),
      sliderTheme: SliderThemeData(
        activeTrackColor: colorScheme.onSurface,
        inactiveTrackColor: colorScheme.outline,
        thumbColor: colorScheme.onSurface,
        overlayColor: colorScheme.onSurface.withValues(alpha: 0.08),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: colorScheme.onSurfaceVariant,
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colorScheme.onSurface,
      ),
      extensions: const [AppThemeExtension()],
    );
  }
}

/// Custom tokens that don't map to Material's [ColorScheme].
///
/// Access via `Theme.of(context).extension<AppThemeExtension>()!`.
@immutable
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  const AppThemeExtension({
    this.timerWarning = const Color(0xFFDC2626),
    this.cardRadius = 24.0,
    this.controlsRadius = 20.0,
  });

  /// Color for the timer ring when <= 3 seconds remain.
  final Color timerWarning;

  /// Standard card border radius.
  final double cardRadius;

  /// Playback controls container border radius.
  final double controlsRadius;

  @override
  AppThemeExtension copyWith({
    Color? timerWarning,
    double? cardRadius,
    double? controlsRadius,
  }) {
    return AppThemeExtension(
      timerWarning: timerWarning ?? this.timerWarning,
      cardRadius: cardRadius ?? this.cardRadius,
      controlsRadius: controlsRadius ?? this.controlsRadius,
    );
  }

  @override
  AppThemeExtension lerp(covariant AppThemeExtension? other, double t) {
    if (other == null) return this;
    return AppThemeExtension(
      timerWarning: Color.lerp(timerWarning, other.timerWarning, t)!,
      cardRadius: cardRadius + (other.cardRadius - cardRadius) * t,
      controlsRadius:
          controlsRadius + (other.controlsRadius - controlsRadius) * t,
    );
  }
}

/// Convenience text styles using Outfit (display/headings).
///
/// Keeps GoogleFonts.outfit calls in one place instead of scattered in widgets.
abstract final class AppTextStyles {
  static TextStyle displayLarge({
    required Color color,
    double fontSize = 48,
    FontWeight fontWeight = FontWeight.w900,
    double letterSpacing = 2,
  }) {
    return GoogleFonts.outfit(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle headlineLarge({
    required Color color,
    double fontSize = 36,
    FontWeight fontWeight = FontWeight.w900,
    double letterSpacing = 1.5,
  }) {
    return GoogleFonts.outfit(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle headlineMedium({
    required Color color,
    double fontSize = 32,
    FontWeight fontWeight = FontWeight.bold,
  }) {
    return GoogleFonts.outfit(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle timerDisplay({
    required Color color,
    double fontSize = 64,
    FontWeight fontWeight = FontWeight.bold,
  }) {
    return GoogleFonts.outfit(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle labelBold({required Color color, double fontSize = 14}) {
    return GoogleFonts.outfit(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle label({
    required Color color,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.w600,
    double letterSpacing = 1.5,
  }) {
    return GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle button({
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.bold,
    double letterSpacing = 1.5,
  }) {
    return GoogleFonts.outfit(
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
    );
  }
}
