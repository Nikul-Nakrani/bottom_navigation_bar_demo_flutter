import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              /*barrierColor: Colors.black87,*/
              isDismissible: true,
              builder: (BuildContext context) {
                return Stack(
                  children: [
                    Positioned(
                      top: 8,
                      right: 10,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 26,
                          height: 26,
                          decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(28),
                              )),
                          child: const Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: const ListTile(
                              leading: SizedBox(
                                width: 56,
                                height: 56,
                                child: CircleAvatar(
                                  child: Icon(Icons.person),
                                ),
                              ),
                              title: Text(
                                'Get Widget',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              subtitle: Text(
                                'Open Source Ui Library',
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            child: Text(
                              style: TextStyle(fontSize: 17),
                              textAlign: TextAlign.start,
                              'Get widget reduces your overall app development time to because of Its pre-built clean Ul widget that vou can use in flutterapp development We nave spent more that1 CYT • hours to huilO this library to make flutterdevelopers life easy.',
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Container(
            width: 110,
            height: 110,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.lightGreenAccent),
            child: const Center(
              child: Text(
                textAlign: TextAlign.center,
                'Show Bottom Sheet',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
