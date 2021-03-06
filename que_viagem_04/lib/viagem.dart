import 'package:flutter/material.dart';

class Viagem extends StatefulWidget {
  const Viagem({Key? key}) : super(key: key);

  @override
  State<Viagem> createState() => _ViagemState();
}

class _ViagemState extends State<Viagem> {
  Color corBase = Colors.blue.shade800;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Que viagem! Turismo",
            style: TextStyle(
              fontSize: 28,
              color: corBase,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber.shade600,
          bottom: TabBar(
            indicatorColor: corBase,
            tabs: [
              setTab("VOOS", Icons.flight_rounded),
              setTab("PASSEIOS", Icons.shopping_bag),
              setTab("MAPA", Icons.explore_rounded),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            setVoo(),
            setPasseio(),
            setMapa(),
          ],
        ),
      ),
    );
  }

  Tab setTab(String titulo, IconData icone) {
    return Tab(
      child: Text(
        titulo,
        style: TextStyle(
          fontSize: 18,
          color: corBase,
          fontWeight: FontWeight.bold,
        ),
      ),
      icon: Icon(
        icone,
        size: 36,
        color: corBase,
      ),
    );
  }

  Container setVoo() {
    return Container(
      padding: const EdgeInsets.all(45),
      child: Column(
        children: [
          const Text(
            "PARTIDA",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text("Abriel 26, 2022"),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Text(
                    "GRU",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Garulhos, Brazil"),
                ],
              ),
              const RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.flight_rounded,
                  size: 48,
                ),
              ),
              Column(
                children: const [
                  Text(
                    "OPO",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Porto, Portugal"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  ListView setPasseio() {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pontos Tur??sticos do Porto",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //1?? Ponte
              const SizedBox(height: 25),
              const Text(
                "Ponte Dom Lu??s I",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Image.asset("assets/ponte.jpeg"),
              const SizedBox(height: 5),
              const Text(
                "A Ponte D. Lu??s I, ?? uma ponte em estrutura met??lica com dois tabuleiros, constru??da entre os anos 1881 e 1886, ligando as cidades do Porto e Vila Nova de Gaia separadas pelo rio Douro, em Portugal.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              //2?? Torre
              const SizedBox(height: 25),
              const Text(
                "Torre dos Cl??rigos",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Image.asset("assets/torre.jpeg"),
              const SizedBox(height: 5),
              const Text(
                "A Igreja e Torre dos Cl??rigos ?? um not??vel conjunto arquitet??nico situado na cidade do Porto, Portugal, sendo considerado o cart??o-postal dessa cidade. O conjunto localiza-se no topo da Rua dos Cl??rigos, entre as ruas de S??o Filipe N??ri e da Assun????o.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              //3?? Livraria
              const SizedBox(height: 25),
              const Text(
                "Livraria Lello",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Image.asset("assets/livraria.jpeg"),
              const SizedBox(height: 5),
              const Text(
                "A Livraria Lello situa-se no n??mero 144 da Rua das Carmelitas, no Centro Hist??rico da cidade do Porto, em Portugal. Classificada como Monumento de Interesse P??blico, e em vias de se tornar Monumento Nacional, a Livraria Lello preserva a beleza original do seu edif??cio.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Image setMapa() {
    return Image.asset("assets/mapa.png");
  }
}
