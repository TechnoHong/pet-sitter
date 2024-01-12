import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PetkeThemeData {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.2);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.2);

  static ThemeData lightThemeData = themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: _textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.background,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.primary),
        titleTextStyle: TextStyle(
          color: colorScheme.onBackground,
          fontWeight: FontWeight.w700,
          fontFamily: 'NotoSans',
          fontSize: 16.0,
          textBaseline: TextBaseline.ideographic,
        ),
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(_lightFillColor.withOpacity(0.8), _darkFillColor),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: colorScheme.primary,
        backgroundColor: colorScheme.onPrimary,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      )
    );
  }

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF3C5BA9),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFDAE1FF),
    onPrimaryContainer: Color(0xFF001849),
    secondary: Color(0xFF585E71),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFDDE2F9),
    onSecondaryContainer: Color(0xFF151B2C),
    tertiary: Color(0xFF3A5BA9),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFDAE2FF),
    onTertiaryContainer: Color(0xFF001847),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFEFBFF),
    onBackground: Color(0xFF1B1B1F),
    surface: Color(0xFFFEFBFF),
    onSurface: Color(0xFF1B1B1F),
    surfaceVariant: Color(0xFFE1E2EC),
    onSurfaceVariant: Color(0xFF45464F),
    outline: Color(0xFF757680),
    onInverseSurface: Color(0xFFF2F0F4),
    inverseSurface: Color(0xFF303034),
    inversePrimary: Color(0xFFB3C5FF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF3C5BA9),
    outlineVariant: Color(0xFFC5C6D0),
    scrim: Color(0xFF000000),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFB3C5FF),
    onPrimary: Color(0xFF002B74),
    primaryContainer: Color(0xFF20428F),
    onPrimaryContainer: Color(0xFFDAE1FF),
    secondary: Color(0xFFC0C6DD),
    onSecondary: Color(0xFF2A3042),
    secondaryContainer: Color(0xFF414659),
    onSecondaryContainer: Color(0xFFDDE2F9),
    tertiary: Color(0xFFB2C5FF),
    onTertiary: Color(0xFF002C72),
    tertiaryContainer: Color(0xFF1D438F),
    onTertiaryContainer: Color(0xFFDAE2FF),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF1B1B1F),
    onBackground: Color(0xFFE4E2E6),
    surface: Color(0xFF1B1B1F),
    onSurface: Color(0xFFE4E2E6),
    surfaceVariant: Color(0xFF45464F),
    onSurfaceVariant: Color(0xFFC5C6D0),
    outline: Color(0xFF8F909A),
    onInverseSurface: Color(0xFF1B1B1F),
    inverseSurface: Color(0xFFE4E2E6),
    inversePrimary: Color(0xFF3C5BA9),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFB3C5FF),
    outlineVariant: Color(0xFF45464F),
    scrim: Color(0xFF000000),
  );

  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;

  static final TextTheme _textTheme = TextTheme(
    headlineMedium: GoogleFonts.notoSans(fontWeight: _bold, fontSize: 20.0),
    bodySmall: GoogleFonts.notoSans(fontWeight: _semiBold, fontSize: 16.0),
    headlineSmall: GoogleFonts.notoSans(fontWeight: _medium, fontSize: 16.0),
    titleMedium: GoogleFonts.notoSans(fontWeight: _medium, fontSize: 16.0),
    labelSmall: GoogleFonts.notoSans(fontWeight: _medium, fontSize: 12.0),
    bodyLarge: GoogleFonts.notoSans(fontWeight: _regular, fontSize: 14.0),
    titleSmall: GoogleFonts.notoSans(fontWeight: _medium, fontSize: 14.0),
    bodyMedium: GoogleFonts.notoSans(fontWeight: _regular, fontSize: 16.0),
    titleLarge: GoogleFonts.notoSans(fontWeight: _bold, fontSize: 16.0),
    labelLarge: GoogleFonts.notoSans(fontWeight: _semiBold, fontSize: 14.0),
  );
}