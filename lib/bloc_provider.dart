import 'package:flutter/widgets.dart';
import 'bloc.dart';

class BlocProvider extends InheritedWidget {
  final CounterBloc counterBloc;

  BlocProvider({
    Key key,
    CounterBloc counterBloc,
    Widget child,
  })  : counterBloc = counterBloc ?? CounterBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static CounterBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider)
          .counterBloc;
}