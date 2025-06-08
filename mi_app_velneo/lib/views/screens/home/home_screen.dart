import 'package:flutter/material.dart';
import 'package:mi_app_velneo/config/theme.dart';
import 'package:mi_app_velneo/views/widgets/common/custom_app_bar.dart';
import 'package:mi_app_velneo/views/widgets/common/custom_drawer.dart';
import 'package:mi_app_velneo/views/screens/home/news_section.dart';
import 'package:mi_app_velneo/views/screens/home/menu_buttons_section.dart';
import 'package:mi_app_velneo/views/screens/home/footer_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppTheme.backgroundColor,

      // AppBar personalizado
      appBar: CustomAppBar(),

      // Menú lateral personalizado
      drawer: CustomDrawer(),

      // Body con todas las secciones
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20), // Espacio superior
            // Sección de noticias
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
