import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamatoappclone/providers/slider_provider.dart';
import 'package:zamatoappclone/screen/components/bottomnav_component.dart';
import 'package:zamatoappclone/screen/components/home_appbar_component.dart';
import 'package:zamatoappclone/screen/components/resturant_components.dart';
import 'package:zamatoappclone/screen/components/slider_component.dart';
import 'package:zamatoappclone/screen/components/story_component.dart';
import 'package:zamatoappclone/screen/components/textfield_widget.dart';
import 'package:zamatoappclone/screen/constant/icons/icons.dart';
import 'package:zamatoappclone/screen/constant/lists/resturant_list.dart';
import 'package:zamatoappclone/screen/constant/lists/slider_list.dart';
import 'package:zamatoappclone/screen/constant/lists/story_list.dart';
import 'package:zamatoappclone/screen/constant/theme/color.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarComponent(),
      ),
      body: buildBody,
      bottomNavigationBar: const BottomNavigationComponent(),
    );
  }

  Padding get buildBody {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildSlider,
            buildCustomText,
            buildStoryFood,
            buildRowRestuarantcount,
            buildRestourantCard
          ],
        ),
      ),
    );
  }

  Consumer<SliderProvider> get buildSlider {
    return Consumer<SliderProvider>(builder: (context, state, child) {
      return CarouselSlider.builder(
          itemCount: sliderList.length,
          options: CarouselOptions(
            aspectRatio: 2.0,
            viewportFraction: 1.0,
          ),
          itemBuilder: (context, index, realIdx) {
            state.activeIndex = index;
            return SliderComponent(
              color: sliderList[index].color,
              imageName: sliderList[index].imageName,
              title: sliderList[index].title,
            );
          });
    });
  }

  CustomText get buildCustomText {
    return CustomText(
      name: "Eat what makes you happy",
      color: black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }

  SingleChildScrollView get buildStoryFood {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            stories.length,
            (index) {
              return StoryComponent(
                imageTitle: stories[index].imageTitle,
                imageName: stories[index].imageName,
              );
            },
          ),
        ));
  }

  Row get buildRowRestuarantcount {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomText(
          name: "127 resturants around you",
          color: black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        const Spacer(),
        Image.asset(arrowAligmentIcon),
        const Text("Popular")
      ],
    );
  }

  SingleChildScrollView get buildRestourantCard {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
            restuarantList.length,
            (index) => ResturantComponent(
                  imageName: restuarantList[index].imageName,
                  eatTitle: restuarantList[index].eatTitle,
                  scoring: restuarantList[index].scoring,
                  price: restuarantList[index].price,
                  prometed: restuarantList[index].prometed,
                  city: restuarantList[index].city,
                  discountAmount: restuarantList[index].discountAmount,
                  description: restuarantList[index].description,
                  deliveryTime: restuarantList[index].deliveryTime,
                )),
      ),
    );
  }
}
