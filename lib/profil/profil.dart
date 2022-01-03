// ignore_for_file: deprecated_member_use
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_skodi/beranda/story.dart';
import 'package:instagram_skodi/bottom/bottom.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> myUser =
        FirebaseFirestore.instance.collection('my_user').snapshots();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 2),
              child: Ink(
                child: InkWell(
                  borderRadius: BorderRadius.circular(59),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const Bottom()));
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.grey[700],
                    size: 31,
                  ),
                ),
              ),
            ),
            Text(
              'Fajarul Akbar',
              style: GoogleFonts.ubuntu(
                  fontSize: 18,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.w800),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 0),
              child: Ink(
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {},
                  child: Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.grey[900],
                    size: 25,
                  ),
                ),
              ),
            )
          ],
        ),
      ),

      //
      /*Body*/
      //

      body: RefreshIndicator(
        onRefresh: refreshData,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Container(
              color: Colors.grey[300],
              child: Container(
                height: 290,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    color: Colors.white,
                    // ignore: prefer_const_constructors
                    borderRadius: BorderRadius.only(
                        bottomRight: const Radius.circular(40),
                        bottomLeft: const Radius.circular(40))),
                child: StreamBuilder<QuerySnapshot>(
                  stream: myUser,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      // ignore: sized_box_for_whitespace
                      return Container(
                          width: 100,
                          height: 100,
                          child: const CircularProgressIndicator());
                    }
                    return Column(
                      children:
                          snapshot.data!.docs.map((DocumentSnapshot document) {
                        Map<String, dynamic> data =
                            // ignore: unnecessary_cast
                            document.data()! as Map<String, dynamic>;
                        return Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child: Ink(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const StoryCek()));
                                  },
                                  child: Image(
                                      width: 80,
                                      image: NetworkImage(data['story'])),
                                ),
                              ),
                            ),
                            const Text(
                              '𝓕𝓪𝓳𝓪𝓻𝓾𝓵 𝓐𝓴𝓫𝓪𝓻',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              '✨ 𝐄𝐪𝐮𝐚𝐥𝐢𝐭𝐲 𝐁𝐞𝐟𝐨𝐫𝐞 𝐓𝐡𝐞 𝐋𝐚𝐰 🤝',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '10',
                                        style: GoogleFonts.lato(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        'Postingan',
                                        style: GoogleFonts.ubuntu(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 0,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '1.202',
                                        style: GoogleFonts.lato(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        'Pengikut',
                                        style: GoogleFonts.ubuntu(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  // ignore: prefer_const_constructors
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '990',
                                        style: GoogleFonts.lato(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        'Diikuti',
                                        style: GoogleFonts.ubuntu(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 115,
                                  height: 38,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: const LinearGradient(
                                          colors: [
                                            Color.fromARGB(200, 240, 90, 100),
                                            Colors.orange
                                          ],
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft)),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(10),
                                      onTap: () {},
                                      child: Center(
                                        child: Text(
                                          'Follow',
                                          style: GoogleFonts.ubuntu(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width: 45,
                                  height: 38,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[350]),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(10),
                                      onTap: () {},
                                      child: Center(
                                          child: Image(
                                              width: 23,
                                              image: AssetImage(
                                                  'assets/logo/share.png'))),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
            ),

            //
            /*Isi Postingan*/
            //
            Container(
              height: 25,
              color: Colors.grey[300],
            ),
            Container(
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/story/beranda1.png')),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/story/beranda2.png')),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/story/beranda3.png')),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/story/beranda4.png')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future refreshData() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {});
  }
}
