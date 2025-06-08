import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mi_app_velneo/config/theme.dart';
import 'package:mi_app_velneo/config/routes.dart';
import 'package:mi_app_velneo/utils/responsive_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    // Configurar animación
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    // Iniciar animación
    _animationController.forward();

    // Navegar después de 3 segundos
    Timer(const Duration(seconds: 3), () {
      _navigateToNextScreen();
    });
  }

  void _navigateToNextScreen() {
    if (mounted) {
      // Navegar directo a la pantalla principal
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo principal - CENTRADO Y RESPONSIVE
                Container(
                  constraints: BoxConstraints(
                    maxWidth: ResponsiveHelper.getSplashLogoWidth(context),
                    maxHeight: 300, // Altura máxima controlada
                  ),
                  child: AspectRatio(
                    aspectRatio: 5 / 3,
                    child: Image.asset(
                      'assets/images/distrito_mallos_logo.png',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          decoration: BoxDecoration(
                            color: AppTheme.primaryColor.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(
                              ResponsiveHelper.getCardBorderRadius(context),
                            ),
                            border: Border.all(
                              color: AppTheme.primaryColor.withValues(
                                alpha: 0.3,
                              ),
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'DISTRITO\nMALLOS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: ResponsiveHelper.getSubtitleFontSize(
                                  context,
                                ),
                                fontWeight: FontWeight.bold,
                                color: AppTheme.primaryColor,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                ResponsiveHelper.verticalSpace(context, SpacingSize.xl),

                // Indicador de carga - CENTRADO
                SizedBox(
                  width: ResponsiveHelper.isMobile(context) ? 32 : 40,
                  height: ResponsiveHelper.isMobile(context) ? 32 : 40,
                  child: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppTheme.primaryColor,
                    ),
                    strokeWidth: 4,
                  ),
                ),

                ResponsiveHelper.verticalSpace(context, SpacingSize.medium),

                // Texto de carga
                Text(
                  'Cargando...',
                  style: TextStyle(
                    fontSize: ResponsiveHelper.getBodyFontSize(context),
                    color: AppTheme.textSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
