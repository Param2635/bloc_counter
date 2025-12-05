part of 'theme_bloc.dart';

class ToggleThemeState extends Equatable {

  bool isSwitch ;

  ToggleThemeState({
    this.isSwitch = false});

  ToggleThemeState copyWith({bool? isSwitch}){
    return ToggleThemeState(
      isSwitch: isSwitch?? this.isSwitch
    );
  }

  @override
   List<Object> get props => [isSwitch];
}