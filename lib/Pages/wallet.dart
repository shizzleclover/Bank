import 'package:bankappui/Pages/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
  
class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "assets2/images/arrows-left.svg",
        title: "My Wallet",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Available",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "\$285,856.20",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 30,
                  color: Color.fromRGBO(82, 100, 190, 1),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1, // Adjust the aspect ratio as needed
                ),
                itemCount: 12,
                itemBuilder: (context, index) {
                  // Use a list of image paths and titles
                  List<String> imagePaths = [
                    "assets2/images/bolt.svg",
                    "assets2/images/cart.svg",
                    "assets2/images/mobile.svg", // Add more images as needed
                    "assets2/images/transportation.svg",
                    "assets2/images/tv.svg",
                    "assets2/images/pharm.svg",
                    "assets2/images/tickets.svg",
                    "assets2/images/hotel.svg",
                    "assets2/images/flight.svg",
                    "assets2/images/fuel.svg",
                    "assets2/images/play.svg",
                    "assets2/images/food.svg",
                  ];

                  List<String> titles = [
                    "Bolt",
                    "Cart",
                    "Mobile", // Add corresponding titles
                    "Transportation",
                    "Tv",
                    "Pharmacy",
                    "Tickets",
                    "Hotel",
                    "Flight",
                    "Fuel",
                    "Play",
                    "Food",
                  ];

                  return WalletItem(
                    imagePath: imagePaths[index],
                    title: titles[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WalletItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const WalletItem({required this.imagePath, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(247, 245, 245, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10), // Reduced padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(233, 233, 233, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: SvgPicture.asset(imagePath),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontFamily: "SanFran",
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
