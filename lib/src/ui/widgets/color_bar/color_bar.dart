import 'package:dynamic_layout/src/data/blocs/color_cubit/color_cubit.dart';
import 'package:dynamic_layout/src/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/blocs/nav_cubit/nav_cubit.dart';
import '../buttons/color_button.dart';

class ColorBar extends StatelessWidget {
  final BaseColor? startColor;
  const ColorBar({this.startColor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorCubit colorCubit = ColorCubit(initColor: startColor);
    void navColor(BaseColor updateColor) => BlocProvider.of<NavCubit>(context).setColor(updateColor);

    return BlocConsumer<ColorCubit, BaseColor>(
      bloc: colorCubit,
        listener: (BuildContext context, BaseColor state) {

          navColor(state);
        },
      builder: (BuildContext context, BaseColor state) {
        return Column(



          children: [

            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: state.getContrastColor(), width: 5.0),
                  color: state.getColor()
              ),
              child: Center(
                child: Text(
                  state.name,
                  style: TextStyle(color: state.getContrastColor()),
                ),
              ),
            ),

            const SizedBox(height: 5.0,),


            Wrap(
              children: [
                ColorButton(
                  color: BaseColor.blue,
                  callback: ()=>  colorCubit.updateColor(BaseColor.blue),
                ),
                ColorButton(
                  color: BaseColor.white,
                  callback: ()=>  colorCubit.updateColor(BaseColor.white),
                ),
                ColorButton(
                  color: BaseColor.yellow,
                  callback: ()=>  colorCubit.updateColor(BaseColor.yellow),
                ),
                ColorButton(
                  color: BaseColor.green,
                  callback: ()=>  colorCubit.updateColor(BaseColor.green),
                ),
                ColorButton(
                  color: BaseColor.black,
                  callback: ()=>  colorCubit.updateColor(BaseColor.black),
                ),

                ColorButton(
                  color: BaseColor.blueDark,
                  callback: ()=>  colorCubit.updateColor(BaseColor.blueDark),
                ),
                ColorButton(
                  color: BaseColor.greenDark,
                  callback: ()=>  colorCubit.updateColor(BaseColor.greenDark),
                ),
                ColorButton(
                  color: BaseColor.red,
                  callback: ()=>  colorCubit.updateColor(BaseColor.red),
                ),

                ColorButton(
                  color: BaseColor.yellowDark,
                  callback: ()=>  colorCubit.updateColor(BaseColor.yellowDark),
                ),

                ColorButton(
                  color: BaseColor.maroon,
                  callback: ()=>  colorCubit.updateColor(BaseColor.maroon),
                ),
              ],

            ),
          ],
        );
      },
    );
  }
}
