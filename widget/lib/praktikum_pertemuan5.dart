import 'package:flutter/material.dart';

void main() => runApp(const Project());

class Project extends StatelessWidget {
  const Project({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_card),
            ),
          ),
          title: Container(
            child: Text("TOKOH BERPENGARUH"),
          ),
        ),
        body: Column(
          children: <Widget>[
            const Expanded(
              child: PhotoBox(),
            ),
          ],
        ),
      ),
    );
  }
}

class PhotoBox extends StatelessWidget {
  const PhotoBox({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.network(
          "https://id.images.search.yahoo.com/images/view;_ylt=Awr1QN6PDzplXL8IpMbNQwx.;_ylu=c2VjA3NyBHNsawNpbWcEb2lkA2RmZTI5NWUwYzVkNzE4Zjg0NGFjMWVhNjk5ZjRlNjNkBGdwb3MDMQRpdANiaW5n?back=https%3A%2F%2Fid.images.search.yahoo.com%2Fsearch%2Fimages%3Fp%3Dtokoh%2Bpahlawan%26type%3DE210ID1274G0%26fr%3Dmcafee%26fr2%3Dpiv-web%26tab%3Dorganic%26ri%3D1&w=895&h=893&imgurl=2.bp.blogspot.com%2F-FosHjvlq_Z8%2FV1WOLJMXjyI%2FAAAAAAAAAeE%2Fkzx7_2jMrXoqKmS5_DFoe64cC5wQ0VBsACKgB%2Fs1600%2Fsoekarno1.jpg&rurl=https%3A%2F%2Fburhanekonomi.blogspot.com%2F2016%2F06%2Fsejarah-indonesia.html&size=59.9KB&p=tokoh+pahlawan&oid=dfe295e0c5d718f844ac1ea699f4e63d&fr2=piv-web&fr=mcafee&tt=sejarah+Indonesia+%3A+Sejarah+Ir.+Soekarno+Sebagai+Bapak+Proklamator+RI&b=0&ni=21&no=1&ts=&tab=organic&sigr=wUqjxZWRo1Fw&sigb=TjkB69FL08Ci&sigi=5a7cwpPRoClI&sigt=ocbnijRNvhgf&.crumb=P5121vV7xQL&fr=mcafee&fr2=piv-web&type=E210ID1274G0.jpg",
          width: 250,
        ),
      ),
    );
  }
}

class Keterangan extends StatelessWidget {
  const Keterangan({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("Nama : Bj Habibie"),
        Padding(padding: EdgeInsets.all(16.0)),
        Text("Tempat Lahir : Parepare"),
        Padding(padding: EdgeInsets.all(16.0)),
        Text("Riwayat pemerintahan: Presiden RI tahun 1998-1999"),
        Padding(padding: EdgeInsets.all(16.0)),
      ],
    );
  }
}
