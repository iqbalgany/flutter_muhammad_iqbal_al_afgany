import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List gambar = [
    'assets/images/pulaupadar.jpg',
    'assets/images/86e8e67edae9219d12d438efd5f5a939_XL.jpg',
    'assets/images/istockphoto-1329269669-612x612.jpg',
    'assets/images/railroad-163518_640.jpg',
    'assets/images/tree-736885_640.jpg',
    'assets/images/tree-838667_1280.jpg',
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gallery',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: gambar.length,
        padding: const EdgeInsets.all(
          5,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.blue[100],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) => Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Image.asset(
                          gambar[index],
                          scale: 3,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'Apakah anda ingin melihat lebih detail ? ',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                'newScreen',
                                arguments: {'gambar': gambar[index]},
                              );
                            },
                            child: const Text('YA'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('TIDAK'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Image.asset(gambar[index]),
          );
        },
      ),
    );
  }
}
