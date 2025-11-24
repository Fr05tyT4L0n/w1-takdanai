import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      // home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/SecondPage': (context) => SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.orange[400]),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "https://www.politico.com/dims4/default/resize/1290/quality/90/format/webp?url=https%3A%2F%2Fstatic.politico.com%2F78%2F09%2F0030a6a14a67bda8c162dcdcf225%2F201216-snowden-getty-773.jpg",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Takdanai Duangporn",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Kanit',
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "takdanai.duangporn@e-tech.ac.th",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Kanit',
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(fontFamily: 'Kanit', fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Icon(Icons.phone, color: Colors.green),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "เบอร์โทรศัพท์",
                            style: TextStyle(fontFamily: 'Kanit', fontSize: 16),
                          ),
                          Text(
                            "082-562-4732",
                            style: TextStyle(fontFamily: 'Kanit', fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Icon(Icons.cake, color: Colors.pink),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "วันเกิด",
                            style: TextStyle(fontFamily: 'Kanit', fontSize: 16),
                          ),
                          Text(
                            "5 ตุลาคม 2568",
                            style: TextStyle(fontFamily: 'Kanit', fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Icon(Icons.pin_drop, color: Colors.blue),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ที่อยู่",
                            style: TextStyle(fontFamily: 'Kanit', fontSize: 16),
                          ),
                          Text(
                            "ชลบุรี",
                            style: TextStyle(fontFamily: 'Kanit', fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Icon(Icons.school, color: Colors.purple),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "การศึกษา",
                            style: TextStyle(fontFamily: 'Kanit', fontSize: 16),
                          ),
                          Text(
                            "วิทยาลัยเทคโนโลยีภาคตะวันออก (อี.เทค)",
                            style: TextStyle(fontFamily: 'Kanit', fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/SecondPage'),
                      child: Text("หน้าต่อไป"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 2nd Page
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  ClipOval(
                    child: Image.network(
                      "https://www.politico.com/dims4/default/resize/1290/quality/90/format/webp?url=https%3A%2F%2Fstatic.politico.com%2F78%2F09%2F0030a6a14a67bda8c162dcdcf225%2F201216-snowden-getty-773.jpg",
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
