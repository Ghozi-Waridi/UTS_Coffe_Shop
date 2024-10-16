import 'package:flutter/material.dart';
import 'package:shop_coffe/Data/LIstData.dart';
import 'package:shop_coffe/Presentation/Widgets/Home_widgets/Banner.dart';
import 'package:shop_coffe/Presentation/Widgets/Home_widgets/Produck_List/Card_product.dart';
import 'package:shop_coffe/Presentation/Widgets/Home_widgets/Produck_List/Product_List.dart';
import 'package:shop_coffe/Presentation/Widgets/Home_widgets/Search_icons_header.dart';


class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   child: const Search_icons_header(),
            // ),
            // const SizedBox(
            //   height: 40,
            // ),
            const Banner_Widget(),
            const SizedBox(
              height: 50,
            ),
            // Container(
            //   // width: 350,
            //   child: const SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Product_List(),
            //   ),
            // ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: coffeData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 256),
              itemBuilder: (context, index) {
                final dataCoffe = coffeData[index];
                return Card_Product(
                  name_product: dataCoffe["name"],
                  category: dataCoffe["category"],
                  link_gambar: dataCoffe["image"],
                  rating_product: 4.8,
                  price: dataCoffe["price"],
                  description: dataCoffe["description"],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
