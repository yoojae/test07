import 'package:flutter/material.dart';

class Contents extends StatelessWidget {
  const Contents({Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.x
  }) : super(key: key);

  final String title, subtitle;
  final IconData icon;
  final bool x;


  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 200,
      decoration: BoxDecoration(
        color: x? Colors.green : Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(10, 10),
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  style: TextStyle(
                    fontSize: 25,
                    color: x? Colors.white : Colors.black,
                  ),
                ),
                Text(subtitle,
                style: TextStyle(
                    color: x? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(-50, 50),
            child: Transform.scale(
              scale: 30,
              child: Icon(
                icon, size: 10,
                color: x? const Color(0xFF9AE98A) : Colors.grey.shade200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
