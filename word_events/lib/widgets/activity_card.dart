import 'package:flutter/material.dart';
import 'package:word_events/models/activity.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;

  const ActivityCard({super.key,required this.activity});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        // Navigator ile detay sayfasına yönlendirme
        Navigator.pushNamed(context, '/activityDetail');
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            // Arkaplan görseli
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // Üstüne yazı eklemek için alan
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      activity.title!,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Düzenleyen: '
                          ' Emir ',
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Kategori: ${activity.category}',
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Text(
                      'Tarih: 27 Ocak',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

