import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_design/business_logic/cubits/page_view/page_view_cubit.dart';
import 'package:ui_design/resoures.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageViewCubit = BlocProvider.of<PageViewCubit>(context);
    return Column(
      children: [
        BlocBuilder<PageViewCubit, PageViewState>(
          builder: (context, state) {
            return SizedBox(
              height: 170,
              child: PageView(
                controller: pageViewCubit.pageController,
                onPageChanged: pageViewCubit.changeIndex,
                children: const [
                  Image(
                    image: AssetImage(Resources.card),
                    height: 5,
                    width: 5,
                  ),
                  Image(
                    image: AssetImage(Resources.creditCard),
                    height: 5,
                    width: 5,
                  ),
                  Image(
                    image: AssetImage(Resources.card),
                    height: 5,
                    width: 5,
                  ),
                ],
              ),
            );
          },
        ),
        SmoothPageIndicator(
          controller: pageViewCubit.pageController,
          count: 3,
          effect: SlideEffect(
              radius: 4.0,
              dotWidth: 10.0,
              dotHeight: 10.0,
              dotColor: Colors.blue[100]!,
              activeDotColor: Colors.indigo),
          onDotClicked: (index) {
            pageViewCubit.changeIndex(index);
          },
        ),
      ],
    );
  }
}
