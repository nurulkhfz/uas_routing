import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        '/': (context) => const halamanUtama(),
        '/luasPersegi': (context) => LuasPersegi(),
        '/luasLingkaran': (context) => LuasLingkaran(),
        '/ProfileDeveloper': (context) => ProfileDeveloper(),
      },
    );
  }
}

class halamanUtama extends StatelessWidget {
  const halamanUtama({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/luasPersegi');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hitung Luas Persegi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        // color: Color.fromARGB(255, 0, 0, 0)
                      )),
                  Text(
                    'Pilih untuk mulai menghitung luas persegi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      // color: Color.fromARGB(255, 33, 33, 33)
                    ),
                  ),
                ],
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/luasLingkaran');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hitung Luas Lingkaran',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        // color: Color.fromARGB(255, 0, 0, 0)
                      )),
                  Text(
                    'Pilih untuk mulai menghitung luas lingkaran',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      // color: Color.fromARGB(255, 33, 33, 33)
                    ),
                  ),
                ],
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ProfileDeveloper');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Profile Developer',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        // color: Color.fromARGB(255, 0, 0, 0)
                      )),
                  Text(
                    'Pilih untuk melihat developer',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      // color: Color.fromARGB(255, 33, 33, 33)
                    ),
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}

class LuasPersegi extends StatefulWidget {
  @override
  State<LuasPersegi> createState() => _LuasPersegiState();
}

class _LuasPersegiState extends State<LuasPersegi> {
  TextEditingController value1Controller = TextEditingController();
  TextEditingController value2Controller = TextEditingController();
  TextEditingController resultController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Luas Persegi'),
        backgroundColor: Color.fromARGB(255, 81, 59, 248),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: value1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Panjang'),
            ),
            TextField(
              controller: value2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Lebar'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  double val1 = double.tryParse(value1Controller.text) ?? 0.0;
                  double val2 = double.tryParse(value2Controller.text) ?? 0.0;
                  double result = 0.0;

                  result = val1 * val2;

                  resultController.text = result.toString();
                },
                child: Text('Hitung Luas')),
            TextField(
              controller: resultController,
              readOnly: true,
              decoration: InputDecoration(labelText: 'Hasil'),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class LuasLingkaran extends StatefulWidget {
  @override
  State<LuasLingkaran> createState() => _LuasLingkaranState();
}

class _LuasLingkaranState extends State<LuasLingkaran> {
  TextEditingController value1Controller = TextEditingController();
  TextEditingController resultController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Luas Lingkaran'),
        backgroundColor: Color.fromARGB(255, 81, 59, 248),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: value1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Jari-jari'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  double val1 = double.tryParse(value1Controller.text) ?? 0.0;
                  double result = 0.0;
                  double phi = 3.14;

                  result = phi * val1 * val1;

                  resultController.text = result.toString();
                },
                child: Text('Hitung Luas')),
            TextField(
              controller: resultController,
              readOnly: true,
              decoration: InputDecoration(labelText: 'Hasil'),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileDeveloper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Developer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nurul Khafizah'),
            Text('2310020067'),
            SizedBox(height: 20,),
            Text('Kelas Non-Reguler Banjarmasin'),
            Text('nurulkhfzh8@Gmail.com'),
            Text('Tanjung Kab. Tabalong, Kalimantan Selatan')
          ],
        ),
      ),
    );
  }
}
