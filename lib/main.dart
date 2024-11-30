import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fake Instagram',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center( child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Fake Instagram', style: TextStyle(fontFamily: 'Billabong', fontSize: 20)),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: 
                      IconButton(
                        icon: const Icon(Icons.favorite_outline),
                        onPressed: () {},
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.mail_outline),
                      onPressed: () {},
                    ),
                ]
              )
            ],
          )),
          backgroundColor: Colors.white
        ),
        body: Center( child: 
                LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Column(
                      children: [
                        Container( // Username Bar
                          color: Colors.white,
                          width: constraints.maxWidth,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10, right: 10),
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: NetworkImage('https://avatars.githubusercontent.com/u/123548831?v=4'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const Text('ohmjess', style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              IconButton(
                                icon: const Icon(Icons.more_vert),
                                color: Colors.black,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Container( // IMG
                          color: Colors.grey[300],
                          width: constraints.maxWidth,
                          height: constraints.maxWidth,
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://www.bsospace.com/images/founders/OHM.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container( // Button Bar
                          color: Colors.white,
                          width: constraints.maxWidth,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.favorite),
                                    color: Colors.red,
                                    onPressed: () {},
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.chat_bubble_outline),
                                        onPressed: () {},
                                      ),
                                      const Text("234", style: const TextStyle(color: Colors.black)),
                                    ]
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.share_outlined),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.bookmark_border),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container( // Like Bar
                          color: Colors.white,
                          width: constraints.maxWidth,
                          height: 30,
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 10, right: 10),
                                width: 20,
                                height: 20,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage('https://avatars.githubusercontent.com/u/104257779?v=4'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Text('Liked by bom.piyawat and 1,234 others'),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          margin: const EdgeInsets.only(left: 10),
                          width: constraints.maxWidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                child: const Text('ohmjess', style: TextStyle(fontWeight: FontWeight.bold)),
                                ),
                              const Text('ตามหาหนุ่มหล่อ จริงใจ ไม่โกหก', style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          margin: const EdgeInsets.only(left: 10),
                          width: constraints.maxWidth,
                          child: const Text('5 hours ago', style: TextStyle(color: Colors.grey)),
                        )
                      ],
                    );
                  }
                )
              )

      )
    );
  }
}