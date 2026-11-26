import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Canonical app theme.
///
/// Use [AppTheme] in new code. The [Default_Theme] typedef at the bottom of
/// this file provides backward-compatible access for existing callers while
/// imports are being migrated.
class AppTheme {
  // ── Text Styles ─────────────────────────────────────────────────────────────
  static final primaryTextStyle =
      GoogleFonts.spaceGrotesk(fontWeight: FontWeight.bold);
  static final secondoryTextStyle = GoogleFonts.outfit();
  static final secondoryTextStyleMedium =
      GoogleFonts.outfit(fontWeight: FontWeight.w700);
  static final tertiaryTextStyle = GoogleFonts.outfit();
  static const fontAwesomeRegularFont =
      TextStyle(fontFamily: "FontAwesome-Regular");
  static const fontAwesomeSolidFont =
      TextStyle(fontFamily: "FontAwesome-Solids");

  // ── Colors ──────────────────────────────────────────────────────────────────
  static const themeColor = Color(0xFF0B0E14);
  static const primaryColor1 = Color(0xFFF2F6FA);
  static const primaryColor2 = Color(0xFFB347FF);
  static const accentColor1 = Color(0xFF00E5FF);
  static const accentColor1light = Color(0xFF18C9ED);
  static const accentColor2 = Color(0xFFB347FF);
  static const successColor = Color(0xFF5EFF43);

  // ── Theme Data ───────────────────────────────────────────────────────────────
  ThemeData get defaultThemeData {
    final outfitTextTheme = GoogleFonts.outfitTextTheme();
    final spaceGroteskTextTheme =
        GoogleFonts.spaceGroteskTextTheme(outfitTextTheme);
    final textTheme = outfitTextTheme.copyWith(
      displayLarge:
          spaceGroteskTextTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold),
      displayMedium:
          spaceGroteskTextTheme.displayMedium?.copyWith(fontWeight: FontWeight.bold),
      displaySmall:
          spaceGroteskTextTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
      headlineLarge:
          spaceGroteskTextTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
      headlineMedium: spaceGroteskTextTheme.headlineMedium
          ?.copyWith(fontWeight: FontWeight.bold),
      headlineSmall:
          spaceGroteskTextTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
      titleLarge:
          spaceGroteskTextTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
      titleMedium:
          spaceGroteskTextTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      titleSmall:
          spaceGroteskTextTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
    );
    const darkScheme = ColorScheme.dark(
      primary: accentColor1,
      secondary: accentColor2,
      surface: themeColor,
      surfaceContainerHighest: Color(0xFF171B25),
      onPrimary: primaryColor1,
      onSecondary: primaryColor1,
      onSurface: primaryColor1,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: themeColor,
      dialogBackgroundColor: themeColor,
      primaryColorDark: accentColor1,
      fontFamily: GoogleFonts.outfit().fontFamily,
      textTheme: textTheme,
      primarySwatch: MaterialColor(
        accentColor1.value,
        {
          50: accentColor1.withValues(alpha: 0.1),
          100: accentColor1.withValues(alpha: 0.2),
          200: accentColor1.withValues(alpha: 0.3),
          300: accentColor1.withValues(alpha: 0.4),
          400: accentColor1.withValues(alpha: 0.5),
          500: accentColor1.withValues(alpha: 0.6),
          600: accentColor1.withValues(alpha: 0.7),
          700: accentColor1.withValues(alpha: 0.8),
          800: accentColor1.withValues(alpha: 0.9),
          900: accentColor1,
        },
      ),
      colorScheme: darkScheme.copyWith(
        primary: accentColor1,
        secondary: accentColor2,
      ),
      iconTheme: const IconThemeData(color: primaryColor1),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: WidgetStateProperty.all(accentColor2),
        interactive: true,
        radius: const Radius.circular(10),
        thickness: WidgetStateProperty.all(5),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: themeColor,
        foregroundColor: primaryColor1,
        surfaceTintColor: themeColor,
        iconTheme: IconThemeData(color: primaryColor1),
      ).copyWith(
        titleTextStyle: GoogleFonts.spaceGrotesk(
          color: primaryColor1,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: accentColor2),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: accentColor2,
        selectionColor: accentColor2,
        selectionHandleColor: accentColor2,
      ),
      brightness: Brightness.dark,
      switchTheme: SwitchThemeData(
        thumbColor: const WidgetStatePropertyAll(primaryColor1),
        trackOutlineColor: WidgetStateProperty.resolveWith((states) =>
            states.contains(WidgetState.selected)
                ? accentColor1
                : accentColor2),
        trackColor: WidgetStateProperty.resolveWith((states) =>
            states.contains(WidgetState.selected)
                ? accentColor1
                : primaryColor2.withValues(alpha: 0.0)),
      ),
      searchBarTheme: const SearchBarThemeData(
        backgroundColor: WidgetStatePropertyAll(themeColor),
      ),
      popupMenuTheme: const PopupMenuThemeData(
        color: Color.fromARGB(255, 23, 18, 25),
        textStyle: TextStyle(color: primaryColor1),
      ),
      dropdownMenuTheme: const DropdownMenuThemeData(
        menuStyle: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(themeColor),
        ),
        textStyle: TextStyle(color: primaryColor1),
      ),
      menuTheme: const MenuThemeData(
        style: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(themeColor),
        ),
      ),
      cardTheme: const CardThemeData(
        color: themeColor,
        surfaceTintColor: Colors.transparent,
      ),
    );
  }
}

/// Backward-compat alias for [AppTheme].
/// Prefer importing from [core/theme/app_theme.dart] and using [AppTheme] directly.
// ignore: camel_case_types
typedef Default_Theme = AppTheme;
