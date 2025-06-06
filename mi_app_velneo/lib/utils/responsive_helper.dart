import 'package:flutter/material.dart';

class ResponsiveHelper {
  // Breakpoints
  static const double mobileBreakpoint = 600;
  static const double tabletBreakpoint = 1024;
  
  // Obtener tamaño de pantalla
  static Size getScreenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
  
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
  
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  
  // Detectar tipo de dispositivo
  static bool isMobile(BuildContext context) {
    return getScreenWidth(context) < mobileBreakpoint;
  }
  
  static bool isTablet(BuildContext context) {
    double width = getScreenWidth(context);
    return width >= mobileBreakpoint && width < tabletBreakpoint;
  }
  
  static bool isDesktop(BuildContext context) {
    return getScreenWidth(context) >= tabletBreakpoint;
  }
  
  // Tamaños específicos para la app
  static double getAppBarLogoHeight(BuildContext context) {
    if (isDesktop(context)) return 65;
    if (isTablet(context)) return 55;
    return 45; // Mobile
  }
  
  static double getSplashLogoWidth(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    if (isDesktop(context)) return screenWidth * 0.4;
    if (isTablet(context)) return screenWidth * 0.5;
    return screenWidth * 0.6; // Mobile
  }
  
  static double getFooterLogoWidth(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return (screenWidth - 60) / 4; // 4 logos con espaciado
  }
  
  static double getFooterTextSize(BuildContext context) {
    if (isDesktop(context)) return 14;
    if (isTablet(context)) return 12;
    return 10; // Mobile
  }
  
  // Padding y margins responsivos
  static EdgeInsets getHorizontalPadding(BuildContext context) {
    if (isDesktop(context)) return const EdgeInsets.symmetric(horizontal: 40);
    if (isTablet(context)) return const EdgeInsets.symmetric(horizontal: 30);
    return const EdgeInsets.symmetric(horizontal: 20); // Mobile
  }
  
  // Grid columns responsivo - MANTENER SIEMPRE 3 COLUMNAS
  static int getGridColumns(BuildContext context) {
    return 3; // Siempre 3 columnas para mantener el diseño 3x2
  }
  
  // Tamaños de iconos y textos para botones del menú
  static double getMenuButtonIconSize(BuildContext context) {
    if (isDesktop(context)) return 40;
    if (isTablet(context)) return 36;
    return 32; // Mobile
  }
  
  static double getMenuButtonTitleSize(BuildContext context) {
    if (isDesktop(context)) return 16;
    if (isTablet(context)) return 14;
    return 12; // Mobile
  }
  
  static double getMenuButtonSubtitleSize(BuildContext context) {
    if (isDesktop(context)) return 12;
    if (isTablet(context)) return 10;
    return 8; // Mobile
  }
}