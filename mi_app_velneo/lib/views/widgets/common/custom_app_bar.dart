import 'package:flutter/material.dart';
import '../../../utils/responsive_helper.dart'; // Importar helper

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      leading: Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      title: 
          // Logo oficial - USANDO HELPER RESPONSIVO
          Image.asset(
            'assets/images/distrito_mallos_logo.png',
            height: ResponsiveHelper.getAppBarLogoHeight(context),
            fit: BoxFit.contain,
          ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.star_border, color: Colors.black),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Navegando a favoritos...')),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}