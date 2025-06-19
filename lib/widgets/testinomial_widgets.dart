import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/testimonial_card.dart';
import 'package:my_portfolio/widgets/testmonials.dart';

class TestinomialWidgets extends StatelessWidget {
  const TestinomialWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 32),

              Padding(
                padding: const EdgeInsets.only(
                  top: 32,
                  left: 32,
                  right: 32,
                  bottom: 16,
                ),
                child: Testmonials(),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // TestimonialCard(
                    //   text:
                    //       "Working with Alex on our mobile banking app was a game-changer. His design skills and understanding of user experience are unparalleled.",
                    //   name: "Avery Wyatt",
                    //   role: "Founder Grayson @agency",
                    //   imageUrl:
                    //       "https://i.pravatar.cc/150?img=3", // sample avatar
                    // ),
                    // TestimonialCard(
                    //   text:
                    //       "Working with Alex on our mobile banking app was a game-changer. His design skills and understanding of user experience are unparalleled.",
                    //   name: "Avery Wyatt",
                    //   role: "Founder Grayson @agency",
                    //   imageUrl:
                    //       "https://i.pravatar.cc/150?img=3", // sample avatar
                    // ),
                    // TestimonialCard(
                    //   text:
                    //       "Working with Alex on our mobile banking app was a game-changer. His design skills and understanding of user experience are unparalleled.",
                    //   name: "Avery Wyatt",
                    //   role: "Founder Grayson @agency",
                    //   imageUrl:
                    //       "https://i.pravatar.cc/150?img=3", // sample avatar
                    // ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
