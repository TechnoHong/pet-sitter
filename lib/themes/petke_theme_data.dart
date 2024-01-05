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
      colorScheme: colorScheme,
      textTheme: _textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.background,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.primary),
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(_lightFillColor.withOpacity(0.8), _darkFillColor),
      )
    );
  }

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF99461B),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFFFDBCC),
    onPrimaryContainer: Color(0xFF351000),
    secondary: Color(0xFF76574A),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFFFDBCC),
    onSecondaryContainer: Color(0xFF2C160C),
    tertiary: Color(0xFF665F31),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFEEE4A9),
    onTertiaryContainer: Color(0xFF201C00),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFFFBFF),
    onBackground: Color(0xFF201A18),
    surface: Color(0xFFFFFBFF),
    onSurface: Color(0xFF201A18),
    surfaceVariant: Color(0xFFF4DED5),
    onSurfaceVariant: Color(0xFF52443D),
    outline: Color(0xFF85736C),
    onInverseSurface: Color(0xFFFBEEE9),
    inverseSurface: Color(0xFF362F2C),
    inversePrimary: Color(0xFFFFB695),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF99461B),
    outlineVariant: Color(0xFFD8C2BA),
    scrim: Color(0xFF000000),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFFB695),
    onPrimary: Color(0xFF571F00),
    primaryContainer: Color(0xFF7A3003),
    onPrimaryContainer: Color(0xFFFFDBCC),
    secondary: Color(0xFFE6BEAD),
    onSecondary: Color(0xFF442A1F),
    secondaryContainer: Color(0xFF5D4034),
    onSecondaryContainer: Color(0xFFFFDBCC),
    tertiary: Color(0xFFD1C88F),
    onTertiary: Color(0xFF363106),
    tertiaryContainer: Color(0xFF4E471B),
    onTertiaryContainer: Color(0xFFEEE4A9),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF201A18),
    onBackground: Color(0xFFEDE0DB),
    surface: Color(0xFF201A18),
    onSurface: Color(0xFFEDE0DB),
    surfaceVariant: Color(0xFF52443D),
    onSurfaceVariant: Color(0xFFD8C2BA),
    outline: Color(0xFFA08D85),
    onInverseSurface: Color(0xFF201A18),
    inverseSurface: Color(0xFFEDE0DB),
    inversePrimary: Color(0xFF99461B),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFFFB695),
    outlineVariant: Color(0xFF52443D),
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