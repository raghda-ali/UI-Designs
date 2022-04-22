import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_design/business_logic/cubits/page_view/page_view_cubit.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageViewCubit = BlocProvider.of<PageViewCubit>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[50],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Online payment",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          BlocBuilder<PageViewCubit, PageViewState>(
            builder: (context, state) {
              return Switch.adaptive(
                value: pageViewCubit.isSwitched,
                onChanged: (value) {
                  pageViewCubit.switchButton();
                },
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              );
            },
          ),
        ],
      ),
    );
  }
}
