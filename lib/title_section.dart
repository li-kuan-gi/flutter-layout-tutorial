import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection(
      {super.key,
      required this.name,
      required this.location,
      required this.isFavorite,
      required this.totalFavorites});

  final String name;
  final String location;
  final bool isFavorite;
  final int totalFavorites;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(
            isFavorite ? Icons.star : Icons.star_border,
            color: Colors.red,
          ),
          Text(totalFavorites.toString()),
        ],
      ),
    );
  }
}
