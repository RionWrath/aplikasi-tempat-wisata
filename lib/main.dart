import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Objek Wisata"),
        ),
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              double screenWidth = constraints.maxWidth;

             
              double responsiveFactor = screenWidth < 600 ? 0.7 : 1.0;

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('../assets/images/goa_maria.jpg'),
                    ),
                    SizedBox(height: 10 * responsiveFactor), 

                     Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16 * responsiveFactor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Goa Maria Ambarawa",
                              style: TextStyle(
                                fontSize: 20 * responsiveFactor,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 24 * responsiveFactor,
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8 * responsiveFactor),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16 * responsiveFactor),
                      child: Text(
                        "Ambarawa, Jawa Tengah",
                        style: TextStyle(
                          fontSize: 18 * responsiveFactor,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                    SizedBox(height: 10 * responsiveFactor),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16 * responsiveFactor),
                      child: Text(
                        "Gua Maria adalah sebuah tempat ziarah yang terletak di Jalan Tentara Pelajar, Kelurahan Panjang, Ambarawa. Tempat ini adalah tempat yang cukup baik untuk berdoa, berziarah, dan menyegarkan diri. Jaraknya sekitar 500 m dari Terminal Ambarawa. Karena jauh dari jalan raya, maka daerah ini cukup tenang.",
                        style: TextStyle(
                          fontSize: 16 * responsiveFactor,
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                   SizedBox(height: 20 * responsiveFactor),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:[
                          Icon(
                            Icons.thumb_up,
                            size: 24 * responsiveFactor,
                          ),
                          SizedBox(width: 8 * responsiveFactor),
                          Icon(
                            Icons.thumb_down,
                            size: 24 * responsiveFactor,
                          ),
                          SizedBox(width: 8 * responsiveFactor),
                          Icon(
                            Icons.share,
                            size: 24 * responsiveFactor,
                          ),],
                   ),
                    // Gambar Lain Lain
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Image(
                            image: AssetImage('../assets/images/preview1.jpg'),
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          Image(
                            image: AssetImage('../assets/images/preview2.jpg'),
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          Image(
                            image: AssetImage('../assets/images/preview3.jpg'),
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          //Tambah Gambar Lainnya
                        ],
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