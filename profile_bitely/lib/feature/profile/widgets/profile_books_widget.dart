import 'package:flutter/material.dart';
import 'package:profile_bitely/Resources/app_colors.dart';

class ProfileBooksListWidget extends StatelessWidget {
  final String username;
  const ProfileBooksListWidget({Key? key, required this.username})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 120.0,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: const DecorationImage(
                image: AssetImage('assets/Images/bookRecommendationSample.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          username,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Author Name",
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: SizedBox(
            height: 3,
            width: 120,
            child: LinearProgressIndicator(
              color: AppColors.blue,
              backgroundColor: AppColors.blackLight,
              value: 0.5, // İlerleme yüzdesi burada belirtilir.
            ),
          ),
        ),
      ],
    );
  }
}
