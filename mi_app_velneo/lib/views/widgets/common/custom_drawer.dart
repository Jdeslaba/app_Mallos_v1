import 'package:flutter/material.dart';
import '../../../config/theme.dart';
import '../../../config/routes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header del drawer con logo eu mallos
          Container(
            height: 200,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Menú',
                  style: TextStyle(
                    color: AppTheme.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                // Logo eu mallos
                Container(
                  width: 150,
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Corazón + eu
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 24,
                          ),
                          const Text(
                            'eu',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      // mallos
                      const Text(
                        'mallos',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          height: 0.8,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 20),
          
          // Asóciate
          ListTile(
            leading: Container(
              width: 24,
              height: 24,
              child: const Icon(
                Icons.store_outlined,
                color: Colors.grey,
                size: 20,
              ),
            ),
            title: const Text(
              'Asóciate',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, AppRoutes.associate); // NAVEGAR A ASOCIATE
            },
          ),
          
          const SizedBox(height: 10),
          
          // Login Asociados
          ListTile(
            leading: Container(
              width: 24,
              height: 24,
              child: const Icon(
                Icons.people_outline,
                color: Colors.grey,
                size: 20,
              ),
            ),
            title: const Text(
              'Login Asociados',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, AppRoutes.login);
            },
          ),
          
          const SizedBox(height: 10),
          
          // Ajustes
          ListTile(
            leading: Container(
              width: 24,
              height: 24,
              child: const Icon(
                Icons.settings_outlined,
                color: Colors.grey,
                size: 20,
              ),
            ),
            title: const Text(
              'Ajustes',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Configuración de la app')),
              );
            },
          ),
        ],
      ),
    );
  }
}