import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mi_app_velneo/config/theme.dart';
import 'package:mi_app_velneo/utils/responsive_helper.dart';
import 'package:mi_app_velneo/views/widgets/common/custom_app_bar.dart'; // ✅ IMPORTAR EL CUSTOM APP BAR

class AssociateScreen extends StatelessWidget {
  const AssociateScreen({super.key});

  // Función para enviar correo
  Future<void> _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'distritomallos@gmail.com',
      query:
          'subject=Solicitud de Asociación - Distrito Mallos&body=Hola,%0A%0AMe gustaría obtener más información sobre cómo asociarme a Distrito Mallos.%0A%0AGracias.',
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'No se pudo abrir el cliente de correo';
    }
  }

  // Función para hacer llamada telefónica
  Future<void> _makePhoneCall() async {
    final Uri phoneUri = Uri(scheme: 'tel', path: '623744226');

    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'No se pudo abrir la aplicación de teléfono';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ✅ REEMPLAZAR TODO EL AppBar por CustomAppBar
      appBar: const CustomAppBar(
        title: 'Asóciate',
        showBackButton: true,
        showMenuButton: false,
        showFavoriteButton: false,
        showLogo: true,
      ),

      // ✅ EL RESTO DEL CÓDIGO SIN CAMBIOS
      body: SingleChildScrollView(
        child: Padding(
          padding: ResponsiveHelper.getHorizontalPadding(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),

              // Ilustración de profesionales
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.grey.shade100,
                    child: const Icon(
                      Icons.group,
                      size: 80,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Texto principal - MEJORADO
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: ResponsiveHelper.isDesktop(context) ? 18 : 16,
                    color: Colors.grey.shade700,
                    height: 1.6, // ✅ Aumentar espaciado entre líneas
                  ),
                  children: const [
                    TextSpan(
                      text:
                          'Todos os profesionais temos cabida na\nAsociación ',
                    ),
                    TextSpan(
                      text: 'DISTRITO MALLOS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppTheme.primaryColor,
                      ),
                    ),
                    TextSpan(
                      text:
                          '.\n\nSe desenvolves a túa actividade profesional ou tes a túa dirección fiscal no noso barrio, podes unirte e beneficiarte das vantaxes de ser asociado e de pertencer o ', // ✅ Agregar \n\n para mejor separación
                    ),
                    TextSpan(
                      text: 'CCA DISTRITO MALLOS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppTheme.primaryColor,
                      ),
                    ),
                    TextSpan(text: '.'),
                  ],
                ),
              ),

              const SizedBox(height: 60),

              // Botón ÚNETE - FUNCIONAL
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors: [Colors.red, Colors.redAccent],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () async {
                      try {
                        await _sendEmail();
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Error al abrir el correo. Inténtalo más tarde.',
                            ),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    child: const Center(
                      child: Text(
                        'ÚNETE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Información de contacto - CORREGIR OVERFLOW
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    // Email clickeable - LIMITAR ANCHO
                    Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 60,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            try {
                              await _sendEmail();
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Error al abrir el correo'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.blue.shade200),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: Colors.blue.shade700,
                                  size: 20,
                                ),
                                const SizedBox(width: 8),
                                Flexible(
                                  child: Text(
                                    'distritomallos@gmail.com',
                                    style: TextStyle(
                                      fontSize:
                                          ResponsiveHelper.isDesktop(context)
                                          ? 16
                                          : 14,
                                      color: Colors.blue.shade700,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Teléfono clickeable - LIMITAR ANCHO
                    Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 60,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            try {
                              await _makePhoneCall();
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Error al abrir la aplicación de teléfono',
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green.shade50,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.green.shade200),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.phone_outlined,
                                  color: Colors.green.shade700,
                                  size: 24,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '623 74 42 26',
                                  style: TextStyle(
                                    fontSize:
                                        ResponsiveHelper.isDesktop(context)
                                        ? 20
                                        : 18,
                                    color: Colors.green.shade700,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
