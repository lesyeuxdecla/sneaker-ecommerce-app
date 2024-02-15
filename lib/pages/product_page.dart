import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatelessWidget {
  const ProductPage(int index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 225),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.menu, color: Colors.black),
          title: Text('ShoesUniverse',
              style: GoogleFonts.dmSans(fontWeight: FontWeight.bold)),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Center(
                  child: Container(
                      constraints: const BoxConstraints(maxWidth: 500),
                      child: Image.asset('1nikeair.png',
                          width: MediaQuery.of(context).size.width)),
                ),
                Text(
                  'Tênis Nike Air Max Alpha Trainer 5 ',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'R\$609,99',
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w300, fontSize: 20),
                  ),
                ),
                Text(
                  'Equipado com uma unidade Air Max altamente visível no calcanhar, este tênis oferece amortecimento responsivo e estilo urbano moderno.',
                  style: GoogleFonts.dmSans(fontSize: 18),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 100,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: Icon(
                      Icons.add_shopping_cart,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
