import 'package:flutter/material.dart';
import 'package:flutter_stomatolog/models/custome_profile_list_tile_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          title: const Text("PROFIL"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings_rounded),
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Adem Halilovic",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text("Age: 23"),
                const SizedBox(
                  height: 25,
                ),
                ...List.generate(
                  customListTiles.length,
                  ((index) {
                    final tile = customListTiles[index];
                    return Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Card(
                          elevation: 4,
                          shadowColor: Colors.black12,
                          child: ListTile(
                            leading: Container(
                              child: Icon(
                                tile.icon,
                                color: Colors.white,
                              ),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: tile.isLogOut
                                    ? Colors.red.withOpacity(0.8)
                                    : Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            title: Text(
                              tile.title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: const Icon(Icons.chevron_right),
                          ),
                        ));
                  }),
                ),
              ],
            )
          ],
        ));
  }
}
