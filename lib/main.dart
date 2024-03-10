import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> imageUrls = [
    'https://static.lada.ru/images_new/cars/about/granta/g_se/v1_gsed.jpg',
    'https://avatars.mds.yandex.net/i?id=bac45b2485441dc3c4be5526b3e0e7f83020e8f1-10661409-images-thumbs&n=13',
    'https://static.lada.ru/images/v6/press-releases/121092.jpg',
    'https://avatars.mds.yandex.net/i?id=e14a28910117a8e67f5bb88fc1a6a9990e802db8-9182087-images-thumbs&n=13',
    'https://avatars.mds.yandex.net/i?id=fbc82bd002b754bf35033ad85378e4c4f38e5bb9-10933535-images-thumbs&n=13',
    'https://avatars.mds.yandex.net/i?id=a6f7541784ed8625297e2d9995463bee9e9c25ae-11270391-images-thumbs&n=13',
    'https://avatars.mds.yandex.net/i?id=90754afb5c0c0664f8ac41bab1ef6132c570150f-9849134-images-thumbs&n=13',
    'https://avatars.mds.yandex.net/i?id=8030809021b85aef1f3944fc8f981538b1e262ef-10815668-images-thumbs&n=13',
    'https://avatars.mds.yandex.net/i?id=6ce5726bf398480e653d0b1778decbc9a8198cb4-12503858-images-thumbs&n=13',
    'https://avatars.mds.yandex.net/i?id=0e30f00f4314fa1d95fd9ec5fae024c09538b938-10637298-images-thumbs&n=13',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          title: Text('Online car dealership Lada',
            style: TextStyle(fontFamily: 'Roboto', fontSize: 30.0),
          ),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              Color color;
              if (index % 2 == 0) {
                color = Colors.blue;
              } else {
                color = Colors.blue;
              }
              return Card(
                child: Column(
                  children: <Widget>[
                    Image.network(imageUrls[index]),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Model: $index',
                                style: TextStyle(color: Colors.deepPurple, fontSize: 20.0),
                              ),
                              Text('Price: \$10000',
                                style: TextStyle(color: Colors.deepPurple, fontSize: 20.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}