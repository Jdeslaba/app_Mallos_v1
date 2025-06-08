import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mi_app_velneo/config/theme.dart';
import 'package:mi_app_velneo/config/routes.dart';
import 'package:mi_app_velneo/utils/responsive_helper.dart';
import 'package:mi_app_velneo/views/screens/home/footer_section.dart';

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
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Espaciador flexible superior
              Flexible(flex: 2, child: Container()),

              // Logo principal - TAMAÑO ADAPTATIVO
              Container(
                width: ResponsiveHelper.getSplashLogoWidth(context) * 0.8,
                height:
                    (ResponsiveHelper.getSplashLogoWidth(context) * 0.8) * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/images/distrito_mallos_logo.png',
                  fit: BoxFit.contain,
                ),
              ),

              // Espaciador adaptativo
              SizedBox(
                height: screenHeight * 0.08,
              ), // 8% de la altura de pantalla
              // Indicador de carga
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  AppTheme.primaryColor,
                ),
              ),

              const SizedBox(height: 20),

              // Texto de carga
              const Text(
                'Cargando...',
                style: TextStyle(fontSize: 16, color: AppTheme.textSecondary),
              ),

              // Espaciador flexible medio
              Flexible(flex: 2, child: Container()),

              // Footer con logos institucionales - COMPACTO
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: FooterSection(),
              ),

              // Espaciador flexible inferior
              Flexible(flex: 1, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
