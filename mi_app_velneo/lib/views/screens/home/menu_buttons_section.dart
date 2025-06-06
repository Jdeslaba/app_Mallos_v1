import 'package:flutter/material.dart';
import '../../../config/routes.dart';
import '../../../utils/responsive_helper.dart'; // Importar helper responsivo

class MenuButtonsSection extends StatelessWidget {
  const MenuButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveHelper.getHorizontalPadding(context), // Padding responsivo
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: ResponsiveHelper.getGridColumns(context), // Columnas responsivas
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        children: [
          // PARKING
          _buildMenuButton(
            context,
            icon: Icons.local_parking,
            title: 'Parking',
            subtitle: '',
            color: const Color(0xFF424242),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Navegando a aparcamientos...')),
              );
            },
          ),
          
          // XANTAMOS?
          _buildMenuButton(
            context,
            icon: Icons.restaurant,
            title: 'Xantamos?',
            subtitle: '',
            color: const Color(0xFF424242),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Navegando a restaurantes...')),
              );
            },
          ),
          
          // MERCAMOS?
          _buildMenuButton(
            context,
            icon: Icons.search,
            title: 'Mercamos?',
            subtitle: '',
            color: const Color(0xFF424242),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.merchants);
            },
          ),
          
          // NOVAS
          _buildMenuButton(
            context,
            icon: Icons.article,
            title: 'Novas',
            subtitle: '',
            color: const Color(0xFF424242),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.notifications);
            },
          ),
          
          // TARXETA
          _buildMenuButton(
            context,
            icon: Icons.card_membership,
            title: 'Tarxeta',
            subtitle: '',
            color: const Color(0xFF8BC34A), // Verde claro
            textColor: Colors.white,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.club); // NAVEGAR AL CLUB
            },
          ),
          
          // PROMOS
          _buildMenuButton(
            context,
            icon: Icons.local_offer,
            title: 'Promos',
            subtitle: '',
            color: const Color(0xFF424242),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Navegando a promociones...')),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMenuButton(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    Color textColor = Colors.white,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: ResponsiveHelper.getMenuButtonIconSize(context), // Icono responsivo
              color: textColor,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: ResponsiveHelper.getMenuButtonTitleSize(context), // Texto responsivo
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
              textAlign: TextAlign.center,
            ),
            if (subtitle.isNotEmpty)
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: ResponsiveHelper.getMenuButtonSubtitleSize(context), // Subtítulo responsivo
                  color: textColor.withOpacity(0.8),
                ),
              ),
          ],
        ),
      ),
    );
  }
}