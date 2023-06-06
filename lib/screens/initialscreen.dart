import 'package:enrich/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Stack(
              children: [
                Image.asset(
                  '/Users/labes/dev/enrich/lib/assets/images/homemfeliz.png',
                  height: 1700,
                  fit: BoxFit.cover,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 200,
                        right: 50,
                        top: 520,
                      ),
                      child: Container(
                        height: 180,
                        width: 300,
                        alignment: AlignmentDirectional.centerStart,
                        child: Text('Alinhe a sua vida financeira em 30 dias.',
                            textAlign: TextAlign.end,
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                              fontSize: 30,
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ))),
                      ),
                    ),

                    //botão
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 150,
                      ),
                      child: Container(
                        height: 60,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.cyan)),
                          child: Text('Comece agora',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ))),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
