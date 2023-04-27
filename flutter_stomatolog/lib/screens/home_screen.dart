import 'package:flutter/material.dart';
import 'package:flutter_stomatolog/screens/clinic_detail_screen.dart';
import 'package:flutter_stomatolog/widgets/clinic_list_item.dart';

import '../models/clinics_model.dart';
import '../widgets/custome_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomeAppBarWidget(
          title: 'Home',
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: clinics.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ClinicDetailScreen(),
                        ),
                      );
                    },
                    child: ClinicListItem(
                        imageUrl: clinics[index].imageUrl,
                        title: clinics[index].title,
                        address: clinics[index].address),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
