import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,required this.username});

final String username;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final List<Map<String, String>> _list = [
    {
      'name': 'Lucky Draw',
      'avatar': 'images/LuckyDraw.png',
    },
    {
      'name': 'Book Test Drive',
      'avatar': 'images/BookTestDrive.png',
    },
    {
      'name': 'Book Service',
      'avatar': 'images/BookService.png',
    },
    {
      'name': 'THS',
      'avatar': 'images/THS.png',
    },
    {
      'name': 'Catalog',
      'avatar': 'images/Catalog.png',
    },
    {
      'name': 'Calculator',
      'avatar': 'images/Calculator.png',
    },
    {
      'name': 'Claim Insurance',
      'avatar': 'images/ClaimInsurance.png',
    },
    {
      'name': 'Service Berkala',
      'avatar': 'images/ServiceBerkala.png',
    },
    {
      'name': 'Tips & Trick',
      'avatar': 'images/TipsAndTrick.png',
    },
    {
      'name': 'Trade In',
      'avatar': 'images/TradeIn.png',
    },
    {
      'name': 'Dealer Location',
      'avatar': 'images/DealerLocation.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  color: Colors.lime[50],
                ),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Hello, ${widget.username}',
                        style: TextStyle(
                          color: Colors.amber[200],
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 220,
                        height: 80,
                        child: Card(
                          margin: const EdgeInsets.all(5),
                          shadowColor: Colors.blueGrey,
                          elevation: 3,
                          child: Column(
                            children: [
                              const SizedBox(height: 10,),
                              const Text(
                                "160",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Kumpulkan Koin Hasjrat",
                                style: TextStyle(color: Colors.amber[200]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40,),
          Expanded(
            flex: 6,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,),
              itemCount: _list.length,
              itemBuilder: (context, index) => Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex:4,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blueGrey[100],
                        backgroundImage: AssetImage(_list[index]['avatar'] ?? ''),
                      ),
                    ),
                    const Expanded(flex:1, child: SizedBox(height: 5),),
                    Expanded(
                      flex:5,
                      child: Text(
                        _list[index]['name'] ?? 'Menu Tidak Ada',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.w400)
                        ),
                    ),
                    const Expanded(flex:1, child: SizedBox(height: 5),),
                  ],
                ),
              )),
          ),
        ],
      )
    );
  }
}