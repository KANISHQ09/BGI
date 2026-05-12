import 'package:flutter/material.dart';

class FlutterFlowTheme {
  FlutterFlowTheme._();

  static FlutterFlowTheme of(BuildContext context) => FlutterFlowTheme._();

  Color get primary => const Color(0xFF2563EB);
  Color get primary10 => const Color(0x1A2563EB);
  Color get primary12 => const Color(0x1F2563EB);
  Color get primary15 => const Color(0x262563EB);
  Color get primary20 => const Color(0x332563EB);
  Color get primaryContainer => const Color(0xFFEFF6FF);
  Color get onPrimary => Colors.white;

  Color get secondary => const Color(0xFF10B981);
  Color get secondary10 => const Color(0x1A10B981);
  Color get onSecondary => Colors.white;
  Color get onSecondary60 => const Color(0x99FFFFFF);
  Color get onSecondary70 => const Color(0xB3FFFFFF);
  Color get onSecondary80 => const Color(0xCCFFFFFF);

  Color get tertiary => const Color(0xFF7C3AED);
  Color get accent10 => const Color(0x1AF59E0B);
  Color get accent3 => const Color(0x08F59E0B);

  Color get primaryBackground => const Color(0xFFF8FAFC);
  Color get secondaryBackground => Colors.white;
  Color get primaryText => const Color(0xFF0F172A);
  Color get secondaryText => const Color(0xFF64748B);
  Color get alternate => const Color(0xFFE2E8F0);
  Color get surfaceVariant => const Color(0xFFF1F5F9);
  Color get surface80 => const Color(0xCCFFFFFF);
  Color get surface90 => const Color(0xE6FFFFFF);
  Color get background80 => const Color(0xCCF8FAFC);
  Color get onSurface => const Color(0xFF334155);

  Color get success => const Color(0xFF16A34A);
  Color get success10 => const Color(0x1A16A34A);
  Color get warning => const Color(0xFFF59E0B);
  Color get warning10 => const Color(0x1AF59E0B);
  Color get error => const Color(0xFFDC2626);
  Color get error10 => const Color(0x1ADC2626);
  Color get error20 => const Color(0x33DC2626);
  Color get error40 => const Color(0x66DC2626);
  Color get onError => Colors.white;
  Color get info => const Color(0xFF0284C7);
  Color get info10 => const Color(0x1A0284C7);
  Color get fullContrast10 => const Color(0x1A0F172A);

  TextStyle get headlineMedium => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        height: 1.2,
      );
  TextStyle get headlineSmall => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 1.2,
      );
  TextStyle get titleLarge => const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        height: 1.25,
      );
  TextStyle get titleMedium => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.3,
      );
  TextStyle get titleSmall => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.35,
      );
  TextStyle get labelLarge => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.3,
      );
  TextStyle get labelMedium => const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        height: 1.3,
      );
  TextStyle get labelSmall => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 1.3,
      );
  TextStyle get bodyMedium => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.45,
      );
  TextStyle get bodyLarge => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.5,
      );
  TextStyle get bodySmall => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.45,
      );
}

extension FlutterFlowTextStyleExtension on TextStyle {
  TextStyle override({
    TextStyle? font,
    Color? color,
    double? fontSize,
    double? letterSpacing,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? lineHeight,
    TextDecoration? decoration,
  }) {
    return merge(font).copyWith(
      color: color,
      fontSize: fontSize,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      height: lineHeight,
      decoration: decoration,
    );
  }
}
