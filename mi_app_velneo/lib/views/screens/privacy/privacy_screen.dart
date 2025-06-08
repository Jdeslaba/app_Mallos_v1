import 'package:flutter/material.dart';
import 'package:mi_app_velneo/config/theme.dart';
import 'package:mi_app_velneo/utils/responsive_helper.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

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
          'Política de Privacidad',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: ResponsiveHelper.getHorizontalPadding(context),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),

            // Logo
            Center(
              child: Image(
                image: AssetImage('assets/images/distrito_mallos_logo.png'),
                height: 80,
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(height: 30),

            // Título principal
            Text(
              'POLÍTICA DE PRIVACIDAD',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),

            // Contenido de la política de privacidad
            _PrivacyContent(),

            SizedBox(height: 30),

            // Información de contacto
            _ContactInfo(),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _PrivacyContent extends StatelessWidget {
  const _PrivacyContent();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lea atentamente esta declaración de privacidade ("Declaración de privacidad") xa que describe a nosa práctica de recompilar, usar, divulgar, conservar e protexer os seus datos persoais. Esta declaración de privacidade aplícase a calquera sitio web, aplicación ou servizo que faga referencia a esta declaración. Cando nos proporciona ou recolle datos persoais dalgunha das formas descritas na cláusula 2 a continuación, acepta que recompilamos, almacenamos e utilizamos tales datos: (a) co fin de cumprir coas nosas obrigas contractuais con vostede; (b) polo noso interese lexítimo en tratalos (é dicir, para fins de administración interna, análise de datos e benchmarking – para máis información, ver cláusula 3 – marketing directo, mantemento de sistemas de copia de seguridade automática ou para a detección ou prevención). de delitos); ou (c) co seu propio consentimento, que pode retirar en calquera momento, segundo se describe nesta Declaración de privacidade.',
            style: TextStyle(fontSize: 14, height: 1.5, color: Colors.black87),
          ),
          SizedBox(height: 15),

          Text(
            'Esta Declaración de privacidade pode ser relevante para vostede aínda que non sexa o noso cliente e nunca utilizou un sitio web, aplicación ou servizo que nos pertence. Podemos ter os seus datos persoais porque os recibimos dun usuario dun dos nosos sitios web, aplicacións ou servizos.',
            style: TextStyle(fontSize: 14, height: 1.5, color: Colors.black87),
          ),
          SizedBox(height: 15),

          Text(
            'Brexit: as referencias nesta Declaración de privacidade ao "GDPR" incluirán calquera "RGPD do Reino Unido" creado a través da Lei de protección de datos do Reino Unido de 2018 no caso de que o Reino Unido saia da Unión Europea.',
            style: TextStyle(fontSize: 14, height: 1.5, color: Colors.black87),
          ),
          SizedBox(height: 20),

          Text(
            'A nosa empresa',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryColor,
            ),
          ),
          SizedBox(height: 10),

          Text(
            'Esta Declaración de Privacidade aplícase a todos os produtos, aplicacións e servizos ofrecidos por Distrito Mallos e Ronda de Outeiro, Esquina Mallos Subterráneo s/n 15007 A Coruña, pero exclúe os produtos e aplicacións ou servizos que conteñan declaracións de privacidade independentes sen integrar a presente.',
            style: TextStyle(fontSize: 14, height: 1.5, color: Colors.black87),
          ),
          SizedBox(height: 20),

          Text(
            'Recollida de información',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryColor,
            ),
          ),
          SizedBox(height: 10),

          Text(
            'Na medida en que o permita a lexislación aplicable, recompilamos datos sobre vostede e sobre calquera outra parte cuxos datos nos proporcione cando:',
            style: TextStyle(fontSize: 14, height: 1.5, color: Colors.black87),
          ),
          SizedBox(height: 10),

          Text(
            '• rexistrarse para usar os nosos sitios web, aplicacións ou servizos (incluídas as probas gratuítas); Isto pode incluír o teu nome (incluído o nome da empresa), enderezo, enderezo de correo electrónico e número de teléfono. Tamén é posible que lle solicitemos información adicional sobre a súa actividade profesional e as súas preferencias;',
            style: TextStyle(fontSize: 14, height: 1.5, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}

class _ContactInfo extends StatelessWidget {
  const _ContactInfo();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          Text(
            'Para más información sobre nuestra política de privacidad:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            'distritomallos@gmail.com',
            style: TextStyle(
              fontSize: 16,
              color: AppTheme.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '623 74 42 26',
            style: TextStyle(
              fontSize: 18,
              color: AppTheme.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
