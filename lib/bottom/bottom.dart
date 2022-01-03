import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_skodi/beranda/beranda.dart';
import 'package:instagram_skodi/pencarian/pencarian.dart';
import 'package:instagram_skodi/profil/profil.dart';
import 'package:instagram_skodi/status/status.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _daftarpage = 0;

  // ignore: prefer_final_fields
  List<Widget> _tampilanpage = <Widget>[
    const Beranda(),
    const PencarianPage(),
    const StatusPage(),
    const ProfilPage()
  ];

  void _sentuh(int index) {
    setState(() {
      _daftarpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        body: _tampilanpage.elementAt(_daftarpage),
        floatingActionButton: Container(
          padding: const EdgeInsets.fromLTRB(33, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ink(
                width: 40,
                height: 40,
                child: FloatingActionButton(
                  backgroundColor: Colors.pink[400],
                  onPressed: () {},
                  child: const Icon(
                    Icons.add_outlined,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(3, 4),
                  blurRadius: 20,
                  spreadRadius: 20)
            ],
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                backgroundColor: Colors.white70,
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.search_sharp,
                  size: 30,
                ),
                backgroundColor: Colors.white70,
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.favorite_border_outlined,
                  size: 30,
                ),
                backgroundColor: Colors.white70,
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.person_outline_sharp,
                  size: 30,
                ),
                backgroundColor: Colors.white70,
              ),
            ],
            backgroundColor: Colors.white70,
            currentIndex: _daftarpage,
            selectedItemColor: Colors.grey[900],
            unselectedItemColor: Colors.grey[600],
            onTap: _sentuh,
            selectedFontSize: 0,
            showUnselectedLabels: true,
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
