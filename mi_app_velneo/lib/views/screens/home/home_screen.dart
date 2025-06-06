import 'package:flutter/material.dart';
import '../../../config/theme.dart';

// Importar todos los componentes
import '../../widgets/common/custom_app_bar.dart';
import '../../widgets/common/custom_drawer.dart';
import 'news_section.dart';
import 'menu_buttons_section.dart';
import 'footer_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      
      // AppBar personalizado
      appBar: const CustomAppBar(),
      
      // Menú lateral personalizado
      drawer: const CustomDrawer(),
      
      // Body con todas las secciones
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20), // Espacio superior
            
            // Sección de noticias (donde estaba "Feliz Nai")
            NewsSection(),
            
            SizedBox(height: 30),
            
            // Grid de 6 botones principales
            MenuButtonsSection(),
            
            SizedBox(height: 40),
            
            // Footer con logos institucionales
            FooterSection(),
            
            SizedBox(height: 20), // Espacio inferior
          ],
        ),
      ),
    );
  }
}