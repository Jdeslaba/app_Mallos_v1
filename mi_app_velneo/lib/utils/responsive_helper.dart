import 'package:flutter/material.dart';

class ResponsiveHelper {
  // Breakpoints existentes
  static const double mobileBreakpoint = 600;
  static const double tabletBreakpoint = 1024;

  // MÉTODOS EXISTENTES (mantener todos)
  static Size getScreenSize(BuildContext context) =>
      MediaQuery.of(context).size;
  static double getScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double getScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static bool isMobile(BuildContext context) =>
      getScreenWidth(context) < mobileBreakpoint;
  static bool isTablet(BuildContext context) {
    double width = getScreenWidth(context);
    return width >= mobileBreakpoint && width < tabletBreakpoint;
  }

  static bool isDesktop(BuildContext context) =>
      getScreenWidth(context) >= tabletBreakpoint;

  // Tamaños específicos existentes
  static double getAppBarLogoHeight(BuildContext context) {
    if (isDesktop(context)) return 65;
    if (isTablet(context)) return 55;
    return 45;
  }

  static double getSplashLogoWidth(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    if (isDesktop(context)) return screenWidth * 0.4;
    if (isTablet(context)) return screenWidth * 0.5;
    return screenWidth * 0.6;
  }

  static double getFooterLogoWidth(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return (screenWidth - 60) / 4;
  }

  static double getFooterTextSize(BuildContext context) {
    if (isDesktop(context)) return 14;
    if (isTablet(context)) return 12;
    return 10;
  }

  static EdgeInsets getHorizontalPadding(BuildContext context) {
    if (isDesktop(context)) return const EdgeInsets.symmetric(horizontal: 40);
    if (isTablet(context)) return const EdgeInsets.symmetric(horizontal: 30);
    return const EdgeInsets.symmetric(horizontal: 20);
  }

  static int getGridColumns(BuildContext context) => 3;

  static double getMenuButtonIconSize(BuildContext context) {
    if (isDesktop(context)) return 40;
    if (isTablet(context)) return 36;
    return 32;
  }

  static double getMenuButtonTitleSize(BuildContext context) {
    if (isDesktop(context)) return 16;
    if (isTablet(context)) return 14;
    return 12;
  }

  static double getMenuButtonSubtitleSize(BuildContext context) {
    if (isDesktop(context)) return 12;
    if (isTablet(context)) return 10;
    return 8;
  }

  /// ========== NUEVOS MÉTODOS ANTI-OVERFLOW ==========

  // Padding horizontal SEGURO (más conservador en pantallas pequeñas)
  static EdgeInsets getSafeHorizontalPadding(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    if (screenWidth < 360)
      return const EdgeInsets.symmetric(
        horizontal: 12,
      ); // Pantallas muy pequeñas
    if (isDesktop(context)) return const EdgeInsets.symmetric(horizontal: 40);
    if (isTablet(context)) return const EdgeInsets.symmetric(horizontal: 30);
    return const EdgeInsets.symmetric(
      horizontal: 16,
    ); // Más conservador en móvil
  }

  // Ancho máximo seguro para contenedores
  static double getSafeMaxWidth(
    BuildContext context, {
    double percentage = 0.9,
  }) {
    return getScreenWidth(context) * percentage;
  }

  // Altura máxima segura para contenedores
  static double getSafeMaxHeight(
    BuildContext context, {
    double percentage = 0.8,
  }) {
    return getScreenHeight(context) * percentage;
  }

  // Tamaño de fuente seguro que se adapta a la pantalla
  static double getSafeFontSize(
    BuildContext context, {
    double desktopSize = 16,
    double tabletSize = 14,
    double mobileSize = 12,
  }) {
    double screenWidth = getScreenWidth(context);
    if (screenWidth < 320) return mobileSize - 2; // Pantallas muy pequeñas
    if (isDesktop(context)) return desktopSize;
    if (isTablet(context)) return tabletSize;
    return mobileSize;
  }

  // Espaciado vertical seguro
  static double getSafeVerticalSpacing(
    BuildContext context, {
    double desktopSpacing = 30,
    double tabletSpacing = 25,
    double mobileSpacing = 20,
  }) {
    if (isDesktop(context)) return desktopSpacing;
    if (isTablet(context)) return tabletSpacing;
    return mobileSpacing;
  }

  // Verificar si el contenido cabe en la pantalla
  static bool contentFitsHeight(BuildContext context, double contentHeight) {
    return contentHeight <= getScreenHeight(context) * 0.85; // 85% de la altura
  }

  // BoxConstraints seguros para evitar overflow
  static BoxConstraints getSafeConstraints(
    BuildContext context, {
    double? maxWidthPercentage,
    double? maxHeightPercentage,
  }) {
    return BoxConstraints(
      maxWidth: maxWidthPercentage != null
          ? getScreenWidth(context) * maxWidthPercentage
          : getScreenWidth(context) * 0.95,
      maxHeight: maxHeightPercentage != null
          ? getScreenHeight(context) * maxHeightPercentage
          : getScreenHeight(context) * 0.9,
    );
  }

  // Verificar si es una pantalla muy pequeña (necesita cuidado extra)
  static bool isVerySmallScreen(BuildContext context) {
    return getScreenWidth(context) < 360 || getScreenHeight(context) < 640;
  }

  // Padding adaptativo basado en el tamaño de pantalla
  static EdgeInsets getAdaptivePadding(
    BuildContext context, {
    double multiplier = 1.0,
  }) {
    double basePadding = isVerySmallScreen(context) ? 12 : 20;
    double adaptedPadding = basePadding * multiplier;

    return EdgeInsets.all(adaptedPadding);
  }
}
