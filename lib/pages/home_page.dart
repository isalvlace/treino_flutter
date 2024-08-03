import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treino_flutter/service/gerador_num_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var qtdClick = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('\x1B[35mBuildando novamente!\x1B[0m');

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text(
          "Hello World", 
          // style: GoogleFonts.josefinSans(fontSize: 30)
        )),
      ),
      /* body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(
            numeroGerado.toString(), 
            style: GoogleFonts.acme(fontSize: 35)
          )),
          Center(child: Text(
            "$qtdClick vezes", 
            style: GoogleFonts.acme(fontSize: 35)
          )),
        ],
      ), */
      /* body: Container(
        // margin: const EdgeInsets.fromLTRB(15, 8, 15, 8),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        color: const Color.fromARGB(255, 162, 219, 241),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: const Color.fromARGB(255, 81, 84, 240),
              child: Text(
                "Ações do usuário", 
                style: GoogleFonts.acme(fontSize: 20)
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 128, 129, 226),
              child: Text(
                "Número $numeroGerado", 
                style: GoogleFonts.acme(fontSize: 20)
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 187, 188, 247),
              child: Text(
                "$qtdClick cliques", 
                style: GoogleFonts.acme(fontSize: 20)
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 243, 247, 23), // ele está atrás
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1, // 1/6
                    child: Container(
                      color: const Color.fromARGB(255, 10, 93, 201),
                      child: Text(
                        "Nome:", style: GoogleFonts.acme(fontSize: 20)
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3, // 3/6
                    child: Container(
                      color: const Color.fromARGB(255, 34, 169, 247),
                      child: Text(
                        "2º Bloco", style: GoogleFonts.acme(fontSize: 20)
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2, // 2/6
                    child: Container(
                      color: const Color.fromARGB(255, 114, 201, 241),
                      child: Text(
                        "3º Bloco", style: GoogleFonts.acme(fontSize: 20)
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ), */
      body: Container(
        // margin: const EdgeInsets.fromLTRB(15, 8, 15, 8),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        color: const Color.fromARGB(255, 162, 219, 241),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 81, 84, 240),
                child: Text(
                  "Ações do usuário", 
                  style: GoogleFonts.acme(fontSize: 20)
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 128, 129, 226),
                child: Text(
                  "Número $numeroGerado", 
                  style: GoogleFonts.acme(fontSize: 20)
                ),
              ),
            ),
            SizedBox( // outra maneira de fzr fixando tamanhos
              width: 100,
              height: 100,
              child: Container(
                color: const Color.fromARGB(255, 240, 77, 191),
                child: Text(
                  "$qtdClick cliques", 
                  style: GoogleFonts.acme(fontSize: 20)
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 243, 247, 23), // ele está atrás
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 1, // 1/6
                      child: Container(
                        color: const Color.fromARGB(255, 10, 93, 201),
                        child: Text(
                          "Nome:", style: GoogleFonts.acme(fontSize: 20)
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3, // 3/6
                      child: Container(
                        color: const Color.fromARGB(255, 34, 169, 247),
                        child: Text(
                          "2º Bloco", style: GoogleFonts.acme(fontSize: 20)
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2, // 2/6
                      child: Container(
                        color: const Color.fromARGB(255, 114, 201, 241),
                        child: Text(
                          "3º Bloco", style: GoogleFonts.acme(fontSize: 20)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: _gerarNumeroAleatorio,
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            numeroGerado = GeradorNumAleatorioService.gerarNumeroAleatorio(1000);
            qtdClick++;
          });
        },
      ),
    );
  }
}
