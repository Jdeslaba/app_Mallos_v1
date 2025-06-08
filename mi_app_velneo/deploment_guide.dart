
/*
===========================================
DISTRITO MALLOS - GUÍAS DE DESARROLLO
===========================================

1. IMPORTS - SIEMPRE RUTAS ABSOLUTAS:
   ✅ import 'package:mi_app_velneo/config/theme.dart';
   ❌ import '../../../config/theme.dart';

2. RESPONSIVE DESIGN - USAR SIEMPRE ResponsiveHelper:
   ✅ ResponsiveHelper.verticalSpace(context, SpacingSize.medium)
   ❌ const SizedBox(height: 20)
   
   ✅ ResponsiveHelper.getBodyFontSize(context)
   ❌ fontSize: 16

3. APPBAR - USAR SIEMPRE CustomAppBar:
   ✅ CustomAppBar(title: 'Mi Pantalla', showBackButton: true, showLogo: true)
   ❌ AppBar(title: Text('Mi Pantalla'))

4. CONTEXT SAFETY - VERIFICAR MOUNTED:
   ✅ if (!mounted) return;
   ❌ Usar context directamente después de await

5. DEPRECATED METHODS:
   ✅ Colors.black.withValues(alpha: 0.5)
   ❌ Colors.black.withOpacity(0.5)

6. SPACING CONSISTENTE:
   - SpacingSize.xs, small, medium, large, xl, xxl
   - Usar ResponsiveHelper.getScreenPadding() para pantallas
   - Usar ResponsiveHelper.getCardPadding() para containers

7. TYPOGRAPHY SYSTEM:
   - getTitleFontSize() - Títulos principales
   - getSubtitleFontSize() - Subtítulos  
   - getHeadingFontSize() - Encabezados
   - getBodyFontSize() - Texto normal
   - getCaptionFontSize() - Texto pequeño

8. COMPONENTES RESPONSIVE:
   - getButtonHeight() - Altura botones
   - getContainerMinHeight() - Containers
   - getCardBorderRadius() - Bordes
   - getCardElevation() - Sombras
*/