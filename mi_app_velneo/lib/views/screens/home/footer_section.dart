import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double logoWidth = (screenWidth - 60) / 4;
    double logoHeight = logoWidth * 0.6;
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: logoWidth,
                height: logoHeight,
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/images/xunta_de_galicia.png',
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          'XUNTA\nDE GALICIA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: logoWidth,
                height: logoHeight,
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/images/fondos_europeos.png',
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          'FONDOS\nEUROPEOS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: logoWidth,
                height: logoHeight,
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/images/Logotipo_del_Plan_de_Recuperacion.png',
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.orange,
                      child: const Center(
                        child: Text(
                          'PLAN DE\nRECUPERACIÓN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: logoWidth,
                height: logoHeight,
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/images/deputacion_da_coruna.png',
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.indigo,
                      child: const Center(
                        child: Text(
                          'DEPUTACIÓN\nDA CORUÑA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'Subvencións para o Programa de modernización do comercio:\n FondoTecnolóxico, no marco do Plan de recuperación, transformación e resiliencia financiado pola Unión Europea-NextGenerationEU (CO300G)',
            style: TextStyle(
              fontSize: screenWidth > 600 ? 12 : 10,
              color: Colors.grey,
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}