import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_skodi/beranda/story.dart';
import 'package:instagram_skodi/profil/profil.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> user_story =
        FirebaseFirestore.instance.collection('user_story').snapshots();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 2),
                child: Ink(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(59),
                    onTap: () {},
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.grey[700],
                      size: 30,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 1),
                    child: Image(
                        width: 115,
                        image: AssetImage("assets/logo/Instagram.png")),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    child: Ink(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(40),
                        onTap: () {},
                        child: Image(
                            width: 22,
                            image: AssetImage("assets/logo/igtv.png")),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 6),
                    child: Ink(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {},
                        child: Image(
                            width: 25, image: AssetImage("assets/logo/dm.png")),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Container(
          child: RefreshIndicator(
            onRefresh: refreshData,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  height: 110,
                  color: Colors.white,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            height: 66,
                            width: 66,
                            margin: EdgeInsets.fromLTRB(14, 14, 8, 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(120)),
                            child: Ink(
                              child: InkWell(
                                child: Image(
                                    image: AssetImage("assets/story/saya.png")),
                                onTap: () {},
                                splashColor: Colors.brown.withOpacity(0.1),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(14, 1, 8, 0),
                            child: Text(
                              'Cerita Anda',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      StreamBuilder<QuerySnapshot>(
                        stream: user_story,
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 72,
                                      width: 72,
                                      margin: EdgeInsets.fromLTRB(14, 10, 8, 3),
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Ink(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        StoryCek()));
                                          },
                                          child: Image(
                                              image: AssetImage(
                                                  "assets/story/loading.png")),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 72,
                                      width: 72,
                                      margin: EdgeInsets.fromLTRB(14, 10, 8, 3),
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Ink(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        StoryCek()));
                                          },
                                          child: Image(
                                              image: AssetImage(
                                                  "assets/story/loading.png")),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 72,
                                      width: 72,
                                      margin: EdgeInsets.fromLTRB(14, 10, 8, 3),
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Ink(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        StoryCek()));
                                          },
                                          child: Image(
                                              image: AssetImage(
                                                  "assets/story/loading.png")),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 72,
                                      width: 72,
                                      margin: EdgeInsets.fromLTRB(14, 10, 8, 3),
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Ink(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        StoryCek()));
                                          },
                                          child: Image(
                                              image: AssetImage(
                                                  "assets/story/loading.png")),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          }

                          return Row(
                            children: snapshot.data!.docs
                                .map((DocumentSnapshot document) {
                              Map<String, dynamic> data =
                                  document.data()! as Map<String, dynamic>;
                              return Column(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    margin: EdgeInsets.fromLTRB(6, 10, 8, 3),
                                    decoration:
                                        BoxDecoration(shape: BoxShape.circle),
                                    child: Ink(
                                      child: InkWell(
                                        child: Image(
                                            image: NetworkImage(data['story'])),
                                        onTap: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          const StoryCek()));
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                    data['nama'],
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              );
                            }).toList(),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.grey[350],
                ),
                Container(
                  height: 16,
                  color: Colors.grey[300],
                ),

                //
                /*List View Beranda*/
                //

                Container(
                  color: Colors.grey[300],
                  child: StreamBuilder<QuerySnapshot>(
                    stream: user_story,
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Container(
                          margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(16, 12, 5, 0),
                                        child: Ink(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/story/loading.png'),
                                                height: 35,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(6, 15, 8, 0),
                                        child: Text(
                                          '',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 12, 16, 0),
                                    child: Ink(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          child: Icon(
                                            Icons.more_vert_outlined,
                                            size: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 350,
                                margin: EdgeInsets.fromLTRB(15, 15, 15, 12),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(16, 0, 5, 15),
                                    child: Ink(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          child: Icon(
                                            Icons.favorite_border_outlined,
                                            size: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }

                      return Column(
                        children: snapshot.data!.docs
                            .map((DocumentSnapshot document) {
                          Map<String, dynamic> data =
                              document.data()! as Map<String, dynamic>;
                          return Container(
                            margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(16, 12, 5, 0),
                                          child: Ink(
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (BuildContext
                                                                context) =>
                                                            StoryCek()));
                                              },
                                              child: Container(
                                                child: Image(
                                                  image: NetworkImage(
                                                      data['story']),
                                                  height: 35,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(6, 15, 8, 0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          ProfilPage()));
                                            },
                                            child: Text(
                                              data['nama'],
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 12, 16, 0),
                                      child: Ink(
                                        child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                            child: Icon(
                                              Icons.more_vert_outlined,
                                              size: 25,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 350,
                                  margin: EdgeInsets.fromLTRB(15, 15, 15, 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: NetworkImage(data['beranda'])),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  16, 0, 5, 15),
                                              child: Ink(
                                                child: InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                    child: Icon(
                                                      Icons.favorite_outlined,
                                                      color: Colors.red,
                                                      size: 25,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  2, 0, 5, 15),
                                              child: InkWell(
                                                onTap: () {},
                                                child: Text(
                                                  '1.242',
                                                  style:
                                                      TextStyle(fontSize: 14),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  16, 0, 5, 15),
                                              child: Ink(
                                                child: InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                    child: Icon(
                                                        Icons.maps_ugc_outlined,
                                                        size: 23),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  2, 0, 5, 15),
                                              child: InkWell(
                                                onTap: () {},
                                                child: Text(
                                                  '42',
                                                  style:
                                                      TextStyle(fontSize: 14),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(16, 0, 13, 15),
                                      child: Ink(
                                        child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                            child: Icon(
                                                Icons.bookmark_border_outlined,
                                                size: 25),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future refreshData() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {});
  }
}
