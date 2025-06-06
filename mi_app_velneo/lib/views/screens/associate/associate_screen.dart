import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../config/theme.dart';
import '../../../utils/responsive_helper.dart';

class AssociateScreen extends StatelessWidget {
  const AssociateScreen({super.key});

  // Función para enviar correo
  Future<void> _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'distritomallos@gmail.com',
      query: 'subject=Solicitud de Asociación - Distrito Mallos&body=Hola,%0A%0AMe gustaría obtener más información sobre cómo asociarme a Distrito Mallos.%0A%0AGracias.',
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      // Si no puede abrir el cliente de correo, mostrar mensaje
      throw 'No se pudo abrir el cliente de correo';
    }
  }

  // Función para hacer llamada telefónica
  Future<void> _makePhoneCall() async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: '623744226',
    );

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Asóciate',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        // Logo de Distrito Mallos en la esquina derecha
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset(
              'assets/images/distrito_mallos_logo.png',
              height: ResponsiveHelper.getAppBarLogoHeight(context) * 0.8,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
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
              
              // Texto principal
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: ResponsiveHelper.isDesktop(context) ? 18 : 16,
                    color: Colors.grey.shade700,
                    height: 1.5,
                  ),
                  children: const [
                    TextSpan(
                      text: 'Todos os profesionais temos cabida na\nAsociación ',
                    ),
                    TextSpan(
                      text: 'DISTRITO MALLOS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppTheme.primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: '. Se\ndesenvolves a túa actividade profesional ou\ntes a túa dirección fiscal no noso barrio,\npodes unirte e beneficiarte das vantaxes de\nser asociado e de pertencer o ',
                    ),
                    TextSpan(
                      text: 'CCA DISTRITO\nMALLOS',
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
                            content: Text('Error al abrir el correo. Inténtalo más tarde.'),
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
              
              // Información de contacto - FUNCIONAL
              Column(
                children: [
                  // Email clickeable
                  GestureDetector(
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
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                          const SizedBox(width: 10),
                          Text(
                            'distritomallos@gmail.com',
                            style: TextStyle(
                              fontSize: ResponsiveHelper.isDesktop(context) ? 18 : 16,
                              color: Colors.blue.shade700,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // Teléfono clickeable
                  GestureDetector(
                    onTap: () async {
                      try {
                        await _makePhoneCall();
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Error al abrir la aplicación de teléfono'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
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
                          const SizedBox(width: 10),
                          Text(
                            '623 74 42 26',
                            style: TextStyle(
                              fontSize: ResponsiveHelper.isDesktop(context) ? 24 : 20,
                              color: Colors.green.shade700,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}