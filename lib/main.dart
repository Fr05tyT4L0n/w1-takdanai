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
        '/SecondPage': (context) => const SecondPage(),
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
              decoration: BoxDecoration(color: Colors.yellow),

              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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
                      color: Colors.black,
                      fontFamily: 'Kanit',
                      fontSize: 18,
                    ),
                  ),

                  Text(
                    "takdanai.duangporn@e-tech.ac.th",
                    style: TextStyle(
                      color: Colors.black,
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

                  // Navigation Btn
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/SecondPage'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.black,
                      ),

                      child: Text("หน้าต่อไป",
                        style: TextStyle(
                          fontFamily: 'Kanit',
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),),
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
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,

              child: Row(
                children: [
                  ClipOval(
                    child: Image.network(
                      "https://www.politico.com/dims4/default/resize/1290/quality/90/format/webp?url=https%3A%2F%2Fstatic.politico.com%2F78%2F09%2F0030a6a14a67bda8c162dcdcf225%2F201216-snowden-getty-773.jpg",
                      width: 75,
                      height: 75,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(width: 10),

                  Column(
                    children: [
                      Text(
                        "5",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      Text("กำลังติดตาม", style: TextStyle(fontSize: 12)),
                    ],
                  ),

                  SizedBox(width: 10),

                  Container(width: 1, height: 40, color: Colors.grey),

                  SizedBox(width: 10),

                  Column(
                    children: [
                      Text(
                        "1.55 M",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      Text("ผู้ติดตาม", style: TextStyle(fontSize: 12)),
                    ],
                  ),

                  SizedBox(width: 10),

                  Container(width: 1, height: 40, color: Colors.grey),

                  SizedBox(width: 10),

                  Column(
                    children: [
                      Text(
                        "590.7 K",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      Text("ถูกใจและบันทึก", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,

              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Takdanai Duangporn",
                        style: TextStyle(
                          fontFamily: 'Kanit',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(width: 5),

                      Icon(Icons.verified, color: Colors.blue),
                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      Icon(Icons.tiktok, size: 12),

                      SizedBox(width: 5),

                      Text("fr05ty"),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,

              child: Row(
                children: [
                  SizedBox(
                    width: 290,

                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.yellow[500],
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      child: Text(
                        "ติดตาม",
                        style: TextStyle(
                          fontFamily: 'Kanit',
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),

                  Icon(Icons.share, size: 18,),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(
                  width: 180,
                  height: 220,
                  child: Image.network(
                    "https://media.npr.org/assets/img/2019/09/18/freshair2_wide-749c0436c788133c1374bfd82e486827447574ac.jpg?s=800&c=85&f=webp",
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(width: 5),

                SizedBox(
                  width: 180,
                  height: 220,
                  child: Image.network(
                    "https://fortune.com/img-assets/wp-content/uploads/2024/06/GettyImages-459251249-e1718388631239.jpg?format=webp&w=768&q=75",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
