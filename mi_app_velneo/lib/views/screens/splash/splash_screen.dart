import 'package:flutter/material.dart';
import 'dart:async';
import '../../../config/theme.dart';
import '../../../config/routes.dart';
import '../../../utils/responsive_helper.dart'; // Importar helper responsivo
import '../home/footer_section.dart'; // Importar el footer

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
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
    
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    ));

    // Iniciar animación
    _animationController.forward();

    // Navegar después de 3 segundos
    Timer(const Duration(seconds: 3), () {
      _navigateToNextScreen();
    });
  }

  void _navigateToNextScreen() {
    // Navegar directo a la pantalla principal
    Navigator.pushReplacementNamed(context, AppRoutes.home);
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
      body: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo principal - USANDO HELPER RESPONSIVO
              Container(
                width: ResponsiveHelper.getSplashLogoWidth(context),
                height: ResponsiveHelper.getSplashLogoWidth(context) * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/images/distrito_mallos_logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              
              const SizedBox(height: 100),
              
              // Indicador de carga
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryColor),
              ),
              
              const SizedBox(height: 20),
              
              // Texto de carga
              const Text(
                'Cargando...',
                style: TextStyle(
                  fontSize: 16,
                  color: AppTheme.textSecondary,
                ),
              ),
              
              const SizedBox(height: 100),
              
              // Footer con logos institucionales - USANDO FOOTER SECTION
              const FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}