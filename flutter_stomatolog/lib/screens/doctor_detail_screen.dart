import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DoctorDetailScreen extends StatefulWidget {
  const DoctorDetailScreen({super.key});

  @override
  State<DoctorDetailScreen> createState() => _DoctorDetailScreenState();
}

class _DoctorDetailScreenState extends State<DoctorDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      // appBar: AppBar(

      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: Colors.black,
      //   title: const Text(""),
      //   centerTitle: true,
      //   actions: [],
      // ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/doctor_wallpaper.jpg"),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 5,
                                width: 35,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          "Adem Halilovic",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Specijalista za Stomatolosku protetiku",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RatingBar.builder(
                          initialRating: 4.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 24,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 5.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Divider(
                            height: 4,
                          ),
                        ),
                        const Text(
                          "Opis",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: Colors.black),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Divider(
                            height: 4,
                          ),
                        ),
                        const Text(
                          "Usloge",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index) => ingredients(context),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 2 - 50,
              top: 50,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 20.0,
        backgroundColor: Colors.blue,
        label: Text("Rezervši svoj termin"),
        icon: Icon(Icons.arrow_right),
        onPressed: () {},
      ),
    );
  }

  ingredients(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFFE3FFF8),
            child: Icon(
              Icons.done,
              size: 15,
              color: Colors.green,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Specijalizacija za protetiku",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
