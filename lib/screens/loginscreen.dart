import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
              '/Users/labes/dev/enrich/lib/assets/images/background.png',
              fit: BoxFit.cover,
              height: 1000),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 340,
                width: 370,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 270,
                      alignment: AlignmentDirectional.centerStart,
                      child: Column(
                        children: [
                          Text('Já tem uma conta?',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ))),
                          Text('Faça login e comece a se planejar!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ))),
                        ],
                      ),
                    ),

                    //Caixa E-mail
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              ),),
                              labelText: 'E-mail', labelStyle: TextStyle(color: Colors.white,),
                            ),
                          )),
                    ),

                    //Caixa Senha
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              ),),
                              labelText: 'Senha', labelStyle: TextStyle(color: Colors.white,),
                            ),
                          )),
                    ),

                    //botao

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 60,
                        width: 310,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.cyan)),
                          child: Text('Entrar',
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
