import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import 'package:open_fashion/models/cover_model.dart';
import 'package:open_fashion/models/product_model.dart';
import 'package:open_fashion/widgets/custom_appbar.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      appBar: CustomAppbar(isBlack: true),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 135,
            child: SvgPicture.asset("images/logo/10.svg"),
          ),
          Positioned(
            top: 30,
            left: 145,
            child: SvgPicture.asset("images/logo/October.svg"),
          ),
          Positioned(
            top: 75,
            left: 155,
            child: SvgPicture.asset("images/logo/Collection.svg"),
          ),

          SingleChildScrollView(
            child: Column(
              children: [
                Gap(120),
                Image.asset("images/cover/cover.png"),
                Gap(20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: ProductModel.products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.58,
                  ),
                  itemBuilder: (context, index) {
                    final item = ProductModel.products[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(item.image),
                          Gap(10),
                          CustomText(text: item.name,),
                          Gap(5),
                          CustomText(text: item.description,color: Colors.grey,size: 12,),
                          Gap(5),
                          CustomText(text: "\$ ${item.price.toString()}", color: Color(0xffDD8560),)
                        ],
                      ),
                    );
                  },
                ),
                CustomText(text: "you may also like".toUpperCase(), size: 23,),
                Gap(5),
                Image.asset("images/logo/lin.png", width: 125,),
                Gap(50),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: CoverModel.cover.length,
                    itemBuilder: (context, index) {
                      final item = CoverModel.cover[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(item.image, height: 300,),
                            Gap(10),
                            CustomText(text: item.name.toUpperCase(), weight: FontWeight.w400,size: 14,)
                          ],
                        ),
                      );
                    
                  },),
                ),
                Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Ionicons.logo_twitter, color: Colors.white,),
                    Gap(50),
                    Icon(Ionicons.logo_instagram, color: Colors.white,),
                    Gap(50),
                    Icon(Ionicons.logo_facebook, color: Colors.white,),
                  ],
                ),
                Gap(25),
                Image.asset("images/logo/lin.png",width: 125,),
                Gap(25),
                CustomText(text: "support@openui.design \n     +60 825 8760   \n 8:00 - 22:00 - Everyday"),
                Gap(25),
                Image.asset("images/logo/lin.png",width: 125,),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(text: "About"),
                    CustomText(text: "Contact"),
                    CustomText(text: "Blog"),
                  ],
                ),
                Gap(20),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffC4C4C4)
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CustomText(text: "Copyright© OpenUI All Rights Reserved.", color: Colors.black,size: 12,),
                  )),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
