import 'package:flutter/widgets.dart';
import 'bloc.dart';

class BlocProvider extends InheritedWidget {
  final AndyBloc andyBloc;

  BlocProvider({
    Key key,
    AndyBloc andyBloc,
    Widget child,
  })  : andyBloc = andyBloc ?? AndyBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static AndyBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider)
          .andyBloc;
}