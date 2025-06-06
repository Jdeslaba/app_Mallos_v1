import 'package:flutter/material.dart';
import '../../../config/theme.dart';
import '../../../utils/responsive_helper.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            
            // Logo
            Center(
              child: Image.asset(
                'assets/images/distrito_mallos_logo.png',
                height: 80,
                fit: BoxFit.contain,
              ),
            ),
            
            const SizedBox(height: 30),
            
            // Título principal
            const Text(
              'POLÍTICA DE PRIVACIDAD',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 20),
            
            // Contenido de la política de privacidad
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Lea atentamente esta declaración de privacidade ("Declaración de privacidad") xa que describe a nosa práctica de recompilar, usar, divulgar, conservar e protexer os seus datos persoais. Esta declaración de privacidade aplícase a calquera sitio web, aplicación ou servizo que faga referencia a esta declaración. Cando nos proporciona ou recolle datos persoais dalgunha das formas descritas na cláusula 2 a continuación, acepta que recompilamos, almacenamos e utilizamos tales datos: (a) co fin de cumprir coas nosas obrigas contractuais con vostede; (b) polo noso interese lexítimo en tratalos (é dicir, para fins de administración interna, análise de datos e benchmarking – para máis información, ver cláusula 3 – marketing directo, mantemento de sistemas de copia de seguridade automática ou para a detección ou prevención). de delitos); ou (c) co seu propio consentimento, que pode retirar en calquera momento, segundo se describe nesta Declaración de privacidade.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Esta Declaración de privacidade pode ser relevante para vostede aínda que non sexa o noso cliente e nunca utilizou un sitio web, aplicación ou servizo que nos pertence. Podemos ter os seus datos persoais porque os recibimos dun usuario dun dos nosos sitios web, aplicacións ou servizos.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Brexit: as referencias nesta Declaración de privacidade ao "GDPR" incluirán calquera "RGPD do Reino Unido" creado a través da Lei de protección de datos do Reino Unido de 2018 no caso de que o Reino Unido saia da Unión Europea.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'A nosa empresa',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Esta Declaración de Privacidade aplícase a todos os produtos, aplicacións e servizos ofrecidos por Distrito Mallos e Ronda de Outeiro, Esquina Mallos Subterráneo s/n 15007 A Coruña, pero exclúe os produtos e aplicacións ou servizos que conteñan declaracións de privacidade independentes sen integrar a presente.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Recollida de información',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Na medida en que o permita a lexislación aplicable, recompilamos datos sobre vostede e sobre calquera outra parte cuxos datos nos proporcione cando:',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    '• rexistrarse para usar os nosos sitios web, aplicacións ou servizos (incluídas as probas gratuítas); Isto pode incluír o teu nome (incluído o nome da empresa), enderezo, enderezo de correo electrónico e número de teléfono. Tamén é posible que lle solicitemos información adicional sobre a súa actividade profesional e as súas preferencias;',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  const Text(
                    '• facer un pedido a través dos nosos sitios web, aplicacións ou servizos; Isto pode incluír o teu nome (incluído o nome da empresa), enderezo, contacto (como o teu número de teléfono e enderezo de correo electrónico) e detalles de pago;',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  const Text(
                    '• utilizar as nosas aplicacións, que poden incluír a recollida de metadatos;',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  const Text(
                    '• cubrir formularios en liña (incluídas solicitudes de devolución de chamada), participar en enquisas, publicar nos nosos taboleiros de mensaxes, blogue, participar en concursos ou sorteos, descargar información como libros brancos e outras publicacións ou participar en calquera outra área interactiva que apareza no noso sitio web ou dentro da nosa aplicación ou servizo;',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  const Text(
                    '• interactuar connosco a través das redes sociais;',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  const Text(
                    '• Ofrécenos os seus datos de contacto cando se rexistra para utilizar ou acceder a calquera sitio web, aplicación ou servizo que poñamos á súa disposición ou cando actualiza tales datos; e',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  const Text(
                    '• póñase en contacto connosco a través de canles non en liña, como por teléfono, fax, SMS, correo electrónico ou correo ordinario.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Tamén recollemos os seus datos cando só completa parcialmente e/ou abandona a entrada de información no noso sitio web e/ou noutros formularios en liña; Así, é posible que utilicemos os devanditos datos co fin de poñernos en contacto contigo para lembrarche que completes os datos pendentes e/ou con fins de mercadotecnia.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Tamén recompilamos datos dos seus dispositivos (incluídos os dispositivos móbiles) e das aplicacións que vostede ou os seus usuarios usan para acceder e utilizar calquera dos nosos sitios web, aplicacións ou servizos (por exemplo, podemos recoller o número e o tipo de identificación do dispositivo, datos de localización e información de conexión, como estatísticas sobre as súas páxinas vistas, o tráfico desde e para sitios web, URL de ligazóns anteriores, datos de anuncios, o seu enderezo IP, o seu historial de navegación e os datos de acceso ao sitio web). Para iso, podemos utilizar cookies ou tecnoloxías similares (como se describe na cláusula 11 a continuación).',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Podemos complementar os datos persoais que recompilamos de vostede con información que obtemos de terceiros que teñen permiso para compartilos; por exemplo, información de axencias de crédito, provedores de información de busca ou fontes públicas (por exemplo, para fins de debida dilixencia do cliente), pero en cada caso conforme o permita a lexislación aplicable.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Transferencia de datos de terceiros',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Se nos proporciona datos persoais doutra persoa, é responsable de asegurarse de que cumpre coas obrigas e as obrigas de consentimento en virtude da lei de protección de datos aplicable en relación con tal divulgación. Na medida en que o requira a lexislación aplicable en materia de protección de datos, debes asegurarte de ter informado debidamente á outra persoa, de que tes o seu consentimento explícito ou de que tes unha base legal para transferirnos a súa información, e que che explicou como recompilamos, utilizar, divulgar e conservar os seus datos persoais ou dirixirlle a ler a nosa Declaración de privacidade.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Uso dos seus datos',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Na medida en que o permita a lexislación aplicable, utilizamos os seus datos para:',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    '• proporcionar información e servizos que solicitou ou aplicacións ou servizos que solicitou;\n'
                    '• comparar a información para a súa exactitude e verificala con terceiros;\n'
                    '• proporcionar, manter, protexer e mellorar aplicacións, produtos, servizos e información que nos solicitou;\n'
                    '• xestionar e administrar o uso das aplicacións, produtos e servizos que nos solicitou;\n'
                    '• xestionar a nosa relación contigo (por exemplo, atención ao cliente e actividades de apoio);\n'
                    '• avaliar, medir, mellorar e protexer o noso contido, sitio web, aplicacións e servizos, e ofrecerlle unha experiencia de usuario mellorada e persoal;\n'
                    '• realizar probas internas do noso sitio web, aplicacións, sistemas e servizos para probar e mellorar a súa seguridade, aprovisionamento e rendemento, en cuxo caso pseudonimizaremos calquera información utilizada para tales fins e aseguraremos que só se mostra en niveis agregados que non se poden vincular a vostede ou calquera outra persoa física individualmente;\n'
                    '• proporcionarlle a información que estamos obrigados a enviarlle para cumprir coas nosas obrigas legais ou regulamentarias;\n'
                    '• cumprir con calquera outra das nosas obrigas regulamentarias ou legais;\n'
                    '• detectar, previr, investigar ou corrixir delitos, actividades ilegais ou prohibidas ou, en xeral, protexer os nosos dereitos legais (incluídas para tal fin as comunicacións cos organismos reguladores e coas forzas de seguridade);\n'
                    '• contactar contigo para ver se queres participar na nosa investigación de clientes (por exemplo, a túa opinión sobre o teu uso das nosas aplicacións, produtos e servizos);\n'
                    '• avaliar, realizar análises estatísticas e benchmarking, sempre que, en tales circunstancias, se faga de forma agregada que non se poida vincular a vostede nin a ningunha outra persoa física individualmente, salvo o que permita a lei;\n'
                    '• proporcionarche publicidade, información ou mercadotecnia dirixidas (que poden incluír mensaxes no produto) que pode resultar útil en función do uso das nosas aplicacións e servizos;\n'
                    '• ofrecer contido e servizos conxuntamente con terceiros cos que teña unha relación separada (por exemplo, provedores de redes sociais); e\n'
                    '• ofrecerche servizos vinculados á túa localización (por exemplo, publicidade e outros contidos personalizados), nos que recollemos datos de xeolocalización.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Na medida en que o permita a lexislación aplicable, conservaremos os datos sobre vostede despois do peche da súa conta de Sage, no caso de que a súa solicitude de conta de Sage sexa denegada ou se decide non continuar co proceso. Estes datos conservaranse e utilizaranse durante o tempo permitido para fins legais, regulamentarios, de prevención de fraudes e lexítimos fins comerciais.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Datos móbiles',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Podemos recoller información mediante de aplicacións móbiles que vostede ou os seus usuarios instalan nos seus dispositivos móbiles para acceder e utilizar os nosos sitios web, aplicacións ou servizos ou que vostede ou os seus usuarios utilizan para proporcionar outros servizos relacionados con esa aplicación móbil (por exemplo, para sincronizar datos desde a nosa aplicación ou servizo con esa aplicación móbil). Estas aplicacións móbiles poden ser aplicacións móbiles propias ou de terceiros. Se a aplicación móbil é propiedade dun terceiro, debes ler a declaración de privacidade deste terceiro, xa que se aplicará ao teu uso da aplicación móbil deste terceiro. Non somos responsables das aplicacións móbiles destes terceiros nin do uso que fan dos teus datos persoais.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'As aplicacións móbiles poden fornecernos datos relativos ao uso que fai un usuario desa aplicación móbil e ao uso das nosas aplicacións e servizos aos que se accede a través desta aplicación móbil. Así, podemos utilizar esa información para ofrecer e mellorar a aplicación móbil ou para a nosa propia aplicación ou os nosos propios servizos. Por exemplo, pode rexistrar a actividade realizada dentro dunha aplicación móbil.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Podes configurar a configuración de privacidade da nosa aplicación móbil no teu dispositivo, pero isto pode afectar o rendemento da aplicación móbil e a forma en que interactúas coas nosas aplicacións e servizos.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Análise de datos e benchmarking',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Podemos utilizar a información que se xera e se almacena mentres usa os nosos servizos para os nosos intereses comerciais lexítimos para ofrecerche os mellores servizos e solucións e unha experiencia optimizada. Estes fins inclúen os seguintes puntos:',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    '• proporcionarlle publicidade, información ou mercadotecnia (como mensaxes sobre produtos) que pode resultar útil en función do uso que faga dos nosos servizos;\n'
                    '• levar a cabo procesos de investigación e desenvolvemento para mellorar os nosos produtos e servizos e as nosas aplicacións;\n'
                    '• ofrecer novas funcionalidades e servizos e desenvolver os existentes (incluíndo análises estatísticas, benchmarking, coñecementos e acuse de recibo e servizos de previsión de fluxo de caixa); e\n'
                    '• servizos vinculados á túa localización (por exemplo, contido relevante en función do lugar onde te atopes), para os que recompilamos datos de xeolocalización para ofrecerche unha experiencia personalizada.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Teña en conta que o noso uso pode incluír datos persoais dos seus clientes individuais, provedores, empregados e outros cuxa información proporciona en calquera dos nosos sitios web, aplicacións ou servizos.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Calquera persoa cuxos datos persoais tratamos ten dereito a opoñerse a ese tratamento en función dos nosos intereses lexítimos e se quere facelo, póñase en contacto connosco en https://distritomallos.com/contacto/',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Tes dereito a opoñerte ao tratamento dos teus datos en función dos nosos intereses lexítimos.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Se queres exercelo, ponte en contacto connosco en x.com. Teña en conta que isto pode afectar a nosa capacidade de ofrecerche determinados servizos e solucións útiles.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Podemos compartir os teus datos con:',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    '• os nosos provedores de servizos e axentes (incluídos os seus subcontratistas) ou terceiros que procesan datos no noso nome (por exemplo: plataformas de Internet e provedores de servizos, provedores de procesamento de pagos e organizacións que contratamos para axudarnos a enviarche comunicacións) para que nos axuden a ofrecerlle as aplicacións, produtos, servizos e información que solicitou ou que consideremos do seu interese;\n'
                    '• socios, incluídos implementadores de sistemas, revendedores, revendedores de valor engadido, provedores e desenvolvedores de software independentes, que nos axudan a proporcionarlle as aplicacións, produtos, servizos e información que solicitou ou que cremos que poden ser do seu interese;\n'
                    '• terceiros utilizados para facilitar transaccións de pagamento, como cámaras de compensación e sistemas, entidades financeiras e destinatarios de transaccións;\n'
                    '• terceiros cos que ten unha relación e aos que nos permitiu enviar información (por exemplo, sitios web de redes sociais e outros provedores de servizos de terceiros);\n'
                    '• terceiros con fins de mercadotecnia (por exemplo, os nosos socios e outros terceiros cos que cooperamos e cuxos produtos e servizos cremos que poden ser de interese para vostede para levar a cabo as súas actividades profesionais. Por exemplo, organizacións de servizos financeiros (como bancos, aseguradoras, provedores de financiamento), provedores de solucións de pago, provedores de software e servizos que ofrecen solucións comerciais);\n'
                    '• axencias de referencia de crédito e prevención da fraude;\n'
                    '• entidades gobernamentais, lexisladores e outros terceiros necesarios para cumprir coas obrigas legais e regulamentarias;\n'
                    '• as forzas de seguridade para detectar ou previr delitos ou procesar aos infractores;\n'
                    '• calquera terceiro no contexto de posibles procesos legais, ou reais, sempre que actuemos legalmente neste sentido (por exemplo, en resposta a unha orde xudicial);\n'
                    '• calquera terceiro, para cumprir coas nosas obrigas legais e regulamentarias, incluídas as comunicacións debidas ou regulamentarias ou a detección ou prevención de actos ilegais;\n'
                    '• os nosos propios asesores e auditores profesionais, ou de, coa finalidade de prestarse asesoramento profesional ou para levar a cabo as nosas responsabilidades de auditoría;\n'
                    '• outra organización no caso de que vendamos ou compremos (ou negociemos para vender ou comprar) calquera negocio ou activo;\n'
                    '• outra organización á que podemos transferir o noso acordo contigo; e\n'
                    '• departamentos gobernamentais nos que a lexislación vixente esixe a presentación de informes.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Podemos compartir datos de identificación non persoal sobre o uso do noso sitio web, aplicacións, produtos ou servizos, publicamente ou con terceiros, pero isto non inclúe os datos que se poidan utilizar para identificarte.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Márketing',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'De cando en vez, podemos utilizar a túa información para contactar contigo con información sobre as nosas aplicacións, produtos e servizos que pensamos que poden ser do teu interese. Tamén podemos compartir os teus datos con empresas do noso grupo e terceiros coidadosamente seleccionados para que eles (ou nós) poidamos contactar contigo sobre os seus produtos ou servizos que creamos que son do teu interese. Tanto nós coma eles podemos poñernos en contacto contigo para este fin por teléfono, correo electrónico, SMS ou correo electrónico. Tes dereito a deixar de contactar contigo con fins de mercadotecnia en calquera momento. Tamén pode solicitar en calquera momento que non compartamos os seus datos con terceiros do tipo a que se refire este parágrafo. Se desexa exercer eses dereitos, pode seleccionar as súas preferencias de contacto no momento en que nos proporcione a súa información nos nosos sitios web, as nosas aplicacións ou servizos, a través dos centros de preferencias aos que lle damos acceso ou enviándonos un correo electrónico. a distritomallos@gmail.com. Tamén podes cancelar a subscrición do marketing por correo electrónico utilizando as ligazóns dos correos electrónicos que che enviamos.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Publicidade de plataformas de terceiros',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Podemos compartir os teus datos con provedores de plataformas de terceiros (como LinkedIn, Instagram, Facebook, Google e Twitter) cando respondes ás comunicacións que publicamos nesas plataformas de terceiros para ofrecerche publicidade/contido dirixido a través da plataforma de terceiros correspondente e dependendo do teu perfil ou dos teus intereses. O provedor da plataforma de terceiros utilizará os teus datos para identificar a túa conta e ofrecerche publicidade. Pode controlar que anuncios recibe a través da configuración de privacidade da plataforma do provedor respectivo. Para obter máis información ao respecto, debe poñerse en contacto co centro de asistencia/axuda deste terceiro.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Os teus datos e os teus dereitos',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Se reside no EEE ou noutra xurisdición cunha lexislación de protección de datos similar, en determinadas circunstancias terá os seguintes dereitos:',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    '• o dereito a ser informado de como usamos os seus datos e a obter acceso a eles;\n'
                    '• o dereito a que a súa información se rectifique ou elimine ou a impor restricións ao tratamento da mesma;\n'
                    '• o dereito a opoñerse ao tratamento dos seus datos, por exemplo con fins de mercadotecnia directa ou cando se realice en interese dos nosos intereses lexítimos;\n'
                    '• o dereito a que os datos que nos proporcionou de forma automática e que che devolvan nun formato estruturado, de uso habitual e lexible electrónicamente, ou a que os envíen directamente a outra empresa, se é tecnicamente posible ("portabilidade de datos");\n'
                    '• no caso de que o tratamento dos seus datos dependa do seu consentimento, o dereito a retirar o devandito consentimento suxeito a restricións legais ou contractuais;\n'
                    '• o dereito a opoñerse ás decisións que se baseen no tratamento automático dos seus datos persoais, como a elaboración de perfiles; e\n'
                    '• o dereito a presentar unha reclamación ante a autoridade de control competente en materia de protección de datos (p. ex.: en España, Axencia Española de Protección de Datos (AEPD)).',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Se temos datos sobre vostede que son incorrectos ou se hai algún cambio nos seus datos, infórmenos para que poidamos manter os nosos rexistros actualizados e precisos.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Se retiras o teu consentimento para o uso dos teus datos persoais para os fins establecidos na nosa Declaración de privacidade, é posible que non poidamos proporcionarche acceso a todas ou determinadas partes do noso sitio web, aplicacións e servizos.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Conservaremos os seus datos persoais durante a nosa relación comercial e, posteriormente, durante o tempo que sexa necesario e relevante para os nosos fins comerciais lexítimos, de conformidade coa Política de retención, marcado e destrución de datos ou conforme o permita en xeral as leis e regulamentos aplicables. Cando xa non necesitemos os teus datos persoais, borrarémolos de forma segura (sen máis aviso).',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Cambios nesta declaración de privacidade',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Podemos cambiar periodicamente esta Declaración de privacidade. Non obstante, non diminuiremos os seus dereitos en virtude desta Declaración de privacidade. Sempre actualizaremos esta Declaración de privacidade no noso sitio web, polo que suxerímoslle que intente lela cando visite o sitio web (a indicación de "última actualización" móstralle a última vez que se actualizou esta Declaración de privacidade).',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Seguridade e almacenamento de datos',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Manteremos seguros os seus datos adoptando as medidas técnicas e organizativas adecuadas contra o seu tratamento non autorizado ou ilegal e contra a súa perda, destrución ou dano accidental. Faremos todo o posible para protexer os seus datos persoais, pero non podemos garantir a seguridade dos datos transmitidos a través de Internet ou unha conexión similar ao noso sitio web, aplicacións ou servizos ou a outro sitio web, aplicación ou servizo. Se lle proporcionamos (ou escolleu) un contrasinal para acceder a determinadas áreas dos nosos sitios web, aplicacións ou servizos, manteña ese contrasinal seguro; non divulgaremos este contrasinal a ninguén.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Se cres que a túa conta está en perigo, podes contactar connosco.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Transferencias fóra do Espazo Económico Europeo e do Reino Unido',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Os datos persoais dentro da Unión Europea e do Reino Unido están protexidos polas leis de protección de datos, pero outros países non protexen necesariamente os seus datos persoais da mesma forma.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'O noso sitio web e algunhas das nosas aplicacións ou servizos ou partes dos mesmos poden estar aloxados nos Estados Unidos ou noutro lugar fóra do Reino Unido ou do EEE (que inclúe todos os países da UE máis Noruega, Islandia e Liechtenstein) ("como un EEE completo") . Isto significa que podemos transferir os datos que se nos transmiten a través do sitio web ou da aplicación ou dun servizo a unha localización fóra do EEE, aos Estados Unidos ou a outros territorios non pertencentes ao EEE. Cando nos envíe un correo electrónico, tamén se almacenará nos nosos servidores de correo electrónico, que están aloxados nos Estados Unidos.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Podemos utilizar provedores de servizos situados fóra do EEE para axudarnos a ofrecerlle o noso sitio web, aplicacións e servizos (por exemplo, provedores de plataformas e pagos que nos axuden a ofrecer as nosas aplicacións e servizos, ou facer publicidade ou procesar os seus pagos). Isto significa que podemos transferir os seus datos a provedores de servizos fóra do EEE co fin de proporcionarlle as nosas aplicacións, publicidade e servizos.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Tomamos unha serie de medidas para garantir que, cando os nosos provedores de servizos e provedores de hospedaxe transfiran os seus datos a un lugar fóra do EEE, se establezan medidas e controis de protección de datos adecuados de acordo coas leis e regulamentos de protección de datos aplicables. Por exemplo, podemos compartir datos con empresas do noso grupo ou afiliados situados fóra do EEE para os efectos desta Declaración de privacidade. Todas as empresas do Grupo Sage están suxeitas ás políticas de protección de datos do Grupo Sage, que están deseñadas para protexer os datos de acordo coa lexislación pertinente da UE. En cada caso, tales transferencias realízanse de acordo cos requisitos do Regulamento (UE) 2016/679 (o Regulamento Xeral de Protección de Datos ou "GDPR") e poden basearse no uso das Cláusulas Modelo da Comisión Europea para as transferencias de datos persoais. datos fóra do EEE.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Ao utilizar o noso sitio web, os nosos produtos ou servizos ou interactuar connosco do xeito descrito nesta Declaración de privacidade, acepta a transferencia dos seus datos fóra do EEE nas circunstancias descritas nesta Declaración de privacidade. Se non queres que os teus datos se transfiran fóra do EEE, non debes usar o noso sitio web, aplicacións ou servizos.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Os nosos sitios web, aplicacións ou servizos poden permitirche compartir datos con sitios web de redes sociais ou usar tales sitios web de redes sociais para crear a túa conta ou conectarte á túa conta de redes sociais. Estes sitios web de redes sociais poden proporcionarnos automaticamente acceso a determinados datos persoais que tiñan sobre ti (por exemplo, contido que viu). Deberías poder xestionar a túa configuración de privacidade desde a túa conta na rede social do terceiro, para poder xestionar os datos persoais que nos permites acceder desde esa conta.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Outros sitios web e redes sociais',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Se fai clic nunha ligazón do noso sitio web, aplicación ou servizo a outro sitio web ou servizo, esta Declaración de privacidade deixará de aplicarse. Non somos responsables das prácticas de datos de sitios web ou servizos de terceiros e recomendámosche que leas as declaracións de privacidade publicadas en tales sitios web ou servizos.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Os nosos sitios web, aplicacións ou servizos poden permitirche compartir datos con sitios web de redes sociais ou usar tales sitios web de redes sociais para crear a túa conta ou conectarte á túa conta de redes sociais. Estes sitios web de redes sociais poden proporcionarnos automaticamente acceso a determinados datos persoais que tiñan sobre ti (por exemplo, contido que viu). Deberías poder xestionar a túa configuración de privacidade desde a túa conta na rede social do terceiro, para poder xestionar os datos persoais que nos permites acceder desde esa conta.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Cookies, análise e datos de tráfico',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'As cookies son pequenos ficheiros de texto que se transfiren desde os nosos sitios web, aplicacións ou servizos e que se almacenan no teu dispositivo. Usamos cookies para axudarnos a ofrecerche un servizo personalizado e mellorar os nosos sitios web, aplicacións e servizos no teu interese.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'As nosas cookies poden ser cookies de sesión (cookies temporais que identifican e rastrexan ao usuario dentro dos nosos sitios web, aplicacións ou servizos e que se eliminan en canto pecha o navegador ou deixa a sesión na aplicación ou servizo) ou cookies persistentes (cookies que permiten os nosos sitios web, aplicacións ou servizos para "lembrar" quen es e as súas preferencias nos nosos sitios web, aplicacións ou servizos, que permanecerán no seu ordenador ou dispositivo despois de que peche o navegador ou saia da aplicación ou servizo).',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Usamos os seguintes tipos diferentes de cookies:',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Cookies estrictamente necesarias',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  
                  const Text(
                    'Estas cookies son necesarias para que os nosos sitios web, aplicacións ou servizos funcionen correctamente; Por exemplo, estas cookies permítenche acceder a áreas seguras do noso sitio web ou lembrar o que engadiches á túa cesta da compra.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Cookies de rendemento e tecnoloxías analíticas',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  
                  const Text(
                    'Estas cookies recollen datos sobre como os visitantes e usuarios usan os nosos sitios web, aplicacións e servizos; por exemplo, que funcionalidades usan máis a miúdo os visitantes e se reciben mensaxes de erro en determinadas seccións dos sitios web, aplicacións ou servizos. Estas cookies non recollen datos que identifiquen a un visitante ou usuario. Todos os datos recollidos por estas cookies son de forma agregada e, polo tanto, son anónimos. Só usamos estas cookies para mellorar o funcionamento do noso sitio web, aplicacións e servizos.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'cookies de funcionalidade',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  
                  const Text(
                    'Estas cookies permiten que os nosos sitios web, aplicacións e servizos recorden as opcións que fixeches (como o teu nome de usuario, o teu idioma ou a rexión na que te atopas) e ofrecen funcións melloradas e personalizadas. Estas cookies tamén se poden usar para lembrar os cambios que fixeches no tamaño e tipo de letra do texto e outras partes das páxinas web que podes personalizar. Ademais, poden utilizarse para prestar os servizos que vostede solicitou. Os datos que recollen estas cookies poden ser anónimos e non poden rastrexar a súa actividade de navegación noutros sitios web.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Cookies selectivas ou publicitarias',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  
                  const Text(
                    'Estas cookies úsanse para ofrecer anuncios que sexan máis relevantes para vostede e os seus intereses. Tamén se poden usar para limitar o número de veces que ve un anuncio, así como para axudar a medir a eficacia da campaña publicitaria. Adoitan atoparse en redes publicitarias co permiso do operador do sitio web. A súa función é lembrar que visitaches un sitio web e compartir esta información con outras organizacións, como empresas de publicidade. Moitas veces, as cookies orientadas ou publicitarias estarán vinculadas á funcionalidade do sitio proporcionada pola outra organización.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Balizas web e seguimento de parámetros',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  
                  const Text(
                    'Tamén utilizamos cookies e software similar, coñecido como web beacons, para contar os usuarios que visitaron o noso sitio web despois de facer clic nun dos nosos anuncios noutros sitios web ou en correos electrónicos, e para recoller datos sobre produtos e servizos adquiridos. . Estas balizas web recollen datos limitados que non identifican a unha persoa individual. Non é posible rexeitar o uso de balizas web. Non obstante, dado que se usan xunto coas cookies, pode desactivalas de forma efectiva configurando o seu navegador para restrinxir ou bloquear as cookies.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Enderezo IP e datos de tráfico',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  
                  const Text(
                    'Facemos un seguimento dos datos de tráfico, que os nosos servidores arquivan automaticamente, como o teu enderezo de protocolo de Internet (IP), a información do dispositivo, o sitio web que visitou antes do noso e o sitio web que visita despois de abandonar o noso. Ademais, recompilamos determinadas estatísticas de sitios web, aplicacións e servizos, como a taxa de acceso, os clics nas páxinas e as páxinas vistas. A partir dos datos de tráfico ou das estatísticas do sitio web non poderemos identificar ningunha persoa física. Obtén máis información sobre as cookies individuais e as tecnoloxías de análise que utilizamos.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Google Analytics',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  
                  const Text(
                    'Google Analytics utiliza "cookies" para axudar ao sitio web a analizar como usan os usuarios os sitios web, aplicacións ou servizos. A información xerada pola cookie sobre o seu uso dos sitios web, aplicacións ou servizos (incluíndo o seu enderezo IP) será transmitida e almacenada por Google nos servidores dos Estados Unidos. Google utilizará esta información co fin de avaliar o seu uso dos sitios web, aplicacións ou servizos, recompilar informes sobre a actividade do sitio web para os operadores do sitio web e proporcionar outros servizos relacionados coa actividade e o uso do sitio web desde Internet. Google tamén pode transferir esta información a terceiros cando así o requira a lei ou cando estes terceiros procesen a información en nome de Google. Google non asociará o teu enderezo IP con ningún outro dato que Google teña no seu poder. Pode rexeitar o uso de cookies seleccionando os parámetros correspondentes no seu navegador ou dentro da aplicación; non obstante, teña en conta que, se o fas, é posible que non poidas utilizar plenamente a funcionalidade deste sitio web. Ao utilizar os nosos sitios web, aplicacións ou servizos, acepta o tratamento dos seus datos por parte de Google na forma e para os fins indicados anteriormente. Para obter máis información, consulte "Como usa Google os datos cando usa os nosos sitios web ou aplicacións socios" (localizado en www.google.com/policies/privacy/partners/ ou calquera outro URL que Google indique de cando en vez). .',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Para evitar que Google Analytics use os seus datos en todos os sitios web, visite http://tools.google.com/dlpage/gaoptout.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Non se mantén ningún dato de usuario do servizo na web nin nos servidores de aplicacións de Salesforce. Pola contra, unha vez que o usuario se autentica, a aplicación xera unha cookie para ese usuario e só para esa sesión, coa seguinte información: un número de versión que identifica o formato da cookie, un número que actúa como identificador da sesión e unha pista de enrutamento.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    'Desactivación de cookies',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  
                  const Text(
                    'Podes configurar o teu navegador ou o teu sitio web, aplicación ou servizo para restrinxir as cookies ou bloquealas completamente se o desexas. Non obstante, se desactivas as cookies, podes descubrir que isto afecta a túa capacidade de usar determinadas partes do noso sitio web, aplicacións ou servizos. Para obter máis información sobre as cookies e instrucións sobre como axustar a configuración do seu navegador para aceptar, eliminar ou rexeitar cookies, consulte o sitio web www.allaboutcookies.org/.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Política de privacidad de datos:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'En cumprimento da lexislación en materia de Protección de Datos de Carácter Persoal, ASOCIACION COMERCIANTES DISTRITO MALLO. infórmalle do seguinte:',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    '1.- Os seus datos pasarán a formar parte dun ficheiro automatizado propiedade de ASOCIACION COMERCIANTES DISTRITO MALLO, B15590961, empresa Distrito Mallos. Ronda de Outeiro, Esquina Mallos Metro s/n 15007 A Coruña Teléfono: 981 238 164. Fax: 981 168 153 Correo electrónico: distritomallos@gmail.com , destinatario e responsable da información que voluntariamente nos facilita.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    '2.- A ASOCIACION COMERCIANTES DISTRITO MALLO utilizará os teus datos para contactar contigo por correo ordinario, correo electrónico, SMS, teléfono ou por calquera outro medio electrónico con fins comerciais, de mercadotecnia, publicidade e investigación de opinión.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  const Text(
                    '3.- Se non desexa recibir información promocional e ofertas en xeral, incluídas as que lle sexan comunicadas por correo ordinario, correo electrónico, SMS, teléfono ou calquera outro medio electrónico, ou se desexa exercer os seus dereitos de acceso, rectificación, cancelación u oposición, Outeiro, Esquina Mallos Metro s/n 15007 A Coruña Teléfono: 981 238 164. Fax: 981 168 153 Correo electrónico: distritomallos@gmail.com',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  const Text(
                    'Máis información',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Se tes algunha dúbida sobre como procesamos os teus datos, sobre o contido desta Declaración de privacidade, sobre os teus dereitos segundo a lexislación local, sobre como actualizamos os teus rexistros ou sobre como obter unha copia dos datos que temos sobre ti, podes escribirnos a ao noso correo electrónico distritomallos@gmail.com.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 30),
            
            // Información de contacto
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Text(
                    'Para más información sobre nuestra política de privacidad:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'distritomallos@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppTheme.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '623 74 42 26',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppTheme.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}