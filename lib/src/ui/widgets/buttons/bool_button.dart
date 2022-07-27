import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/blocs/bool_cubit/bool_cubit.dart';

class BoolButton extends StatelessWidget {


  const BoolButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BoolCubit boolCubit = BlocProvider.of<BoolCubit>(context);
    return BlocBuilder<BoolCubit, bool>(
      bloc: boolCubit,
      builder: (BuildContext context, bool boolState) {
        return InkWell(
            onTap: () => boolCubit.toggle(),
            child: Container(
                color: boolState ? Colors.green : Colors.red,
                width: 200.0, height: 35.0,
                child: Center(
                  child: Text(
                    'toggle ${!boolState}'.toUpperCase(), textAlign: TextAlign.center,
                    style: TextStyle(color: boolState ? Colors.black : Colors.white),
                  ),
                )));
      },
    );
  }
}
