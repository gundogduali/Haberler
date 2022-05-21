import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../pages/root/navbar_item.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(const NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.genres:
        emit(const NavigationState(NavbarItem.genres, 1));
        break;
      case NavbarItem.profile:
        emit(const NavigationState(NavbarItem.profile, 2));
        break;
    }
  }
}
