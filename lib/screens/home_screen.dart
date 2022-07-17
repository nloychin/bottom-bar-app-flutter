import 'package:buy_them_all/providers/ads_provider.dart';
import 'package:buy_them_all/widgets/cat_grid_widget.dart';
import 'package:buy_them_all/widgets/text_widget.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/utils.dart';
import '../widgets/addbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context);
    Size size = Utils(context).getScreenSize;
    final adsProvider = Provider.of<AdsProvider>(context);
    List<String> allAds = adsProvider.getAdsImages;
    return Scaffold(
        appBar: const AddBarWidget(title: '   Home'),
        body: SizedBox(
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 2,
                ),
                SizedBox(
                  height: size.height * 0.25,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            allAds[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                    autoplay: true,
                    itemCount: allAds.length,
                    pagination: const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.white,
                        activeColor: Color.fromARGB(255, 15, 175, 172),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Scrollbar(
                  thumbVisibility: true,
                  thickness: 1,
                  child: SizedBox(
                    height: size.height * 0.2,
                    child: const CatGridWidget(),
                  ),
                ),
                SizedBox(
                  height: size.height * 3,
                ),
              ],
            ),
          ),
        ));
  }
}
