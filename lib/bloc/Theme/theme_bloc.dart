import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ToggleThemeEvent, ToggleThemeState> {
  ThemeBloc() : super(ToggleThemeState()) {
    on<LightOrDarkTheme>(_toggle);
  }

  void _toggle(LightOrDarkTheme event, Emitter<ToggleThemeState> emit){
    emit(state.copyWith(isSwitch: !state.isSwitch)) ;
  }
}
