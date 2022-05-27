import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/bottom_navigation/navigation_cubit.dart';
import '../categories/categories_screen.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';
import 'bnv_items.dart';
import 'navbar_item.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(),
      body: _body(),
    );
  }

  BlocBuilder<NavigationCubit, NavigationState> _bottomNavigationBar() {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state.index,
          items: BnvItems().items,
          onTap: _onTap,
        );
      },
    );
  }

  BlocBuilder<NavigationCubit, NavigationState> _body() {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        if (state.navbarItem == NavbarItem.home) {
          return const HomeScreen();
        } else if (state.navbarItem == NavbarItem.genres) {
          return const CategoriesScreen();
        } else if (state.navbarItem == NavbarItem.profile) {
          return const ProfileScreen();
        }
        return Container();
      },
    );
  }

  void _onTap(int index) {
    if (index == 0) {
      BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.home);
    } else if (index == 1) {
      BlocProvider.of<NavigationCubit>(context)
          .getNavBarItem(NavbarItem.genres);
    } else if (index == 2) {
      BlocProvider.of<NavigationCubit>(context)
          .getNavBarItem(NavbarItem.profile);
    }
  }
}
