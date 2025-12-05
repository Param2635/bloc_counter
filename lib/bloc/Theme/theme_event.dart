part of 'theme_bloc.dart';

abstract class ToggleThemeEvent{

  const ToggleThemeEvent();
  @override
  List<Object> get props => [];
}

class LightOrDarkTheme extends ToggleThemeEvent{}

// class DarkTheme extends ToggleThemeEvent{}