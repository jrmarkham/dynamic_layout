import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/data/blocs/bool_cubit/bool_cubit.dart';
import 'src/data/blocs/nav_cubit/nav_cubit.dart';
import 'src/ui/widgets/app_navigator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      MaterialApp(
        theme: ThemeData.light(),
        home: MultiBlocProvider(providers: [
          BlocProvider<BoolCubit>(create: (BuildContext context) => BoolCubit(false)),
          BlocProvider<NavCubit>(create: (BuildContext context) => NavCubit()),
        ], child: const AppNavigator()),
      ));

}
