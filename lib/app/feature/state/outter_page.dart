import 'package:xepa/app/repository/user_repository.dart';
import 'package:xepa/app/widget/keyboard_dismissible.dart';
import 'package:xepa/app/config//config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'session/bloc/session_barrel.dart';

final GlobalKey<NavigatorState> outterNavigator = GlobalKey<NavigatorState>();

class OutterPage extends StatelessWidget {
  OutterPage({Key? key}) : super(key: key);

  void _loadConfigs(BuildContext context) {
    Device(MediaQuery.of(context));
    Intl.defaultLocale = 'pt_BR';
  }

  @override
  Widget build(BuildContext context) {
    _loadConfigs(context);
    return RepositoryProvider<UserRepository>(
      create: (context) => UserRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SessionBloc>(
            create: (context) => SessionBloc()
              ..add(
                SessionInitial('user'),
              ),
          ),
        ],
        child: Material(
          color: MyColors.lightGreyBlueish,
          child: LayoutBuilder(
            builder: (ctx, constrains) => KeyboardDismissable(
              child: Container(
                width: constrains.maxWidth,
                height: constrains.maxHeight,
                child: Navigator(
                  key: outterNavigator,
                  onGenerateRoute: MyRouter.outter,
                  initialRoute: MyRouter.innerRoute,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
