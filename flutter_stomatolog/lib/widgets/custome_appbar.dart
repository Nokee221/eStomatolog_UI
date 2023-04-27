import 'package:flutter/material.dart';

class CustomeAppBarWidget extends StatelessWidget with PreferredSizeWidget{
    final String title;
   const CustomeAppBarWidget({required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 17
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue.withOpacity(0.9),
            child: IconButton(
              onPressed: () {
                
              },
              icon: const Icon(
                Icons.search,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(55);
}