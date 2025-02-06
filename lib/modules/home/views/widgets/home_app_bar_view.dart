import 'package:blur/blur.dart';
import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/modules/my_profile/controllers/my_profile_bloc/my_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';
import 'package:badges/badges.dart' as badges;
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/routes/app_route.dart';
import '../../../../core/themes/app_theme_controller.dart';
import '../../../../core/widgets/profile_avatar.dart';
import '../../../commutes/my_commutes/controllers/commutes_bloc/commutes_bloc.dart';
import '../../controllers/home_cubit/home_cubit.dart';

class HomeAppBarView extends StatelessWidget {
  const HomeAppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<MyProfileBloc>()
        ..add(
          const MyProfileEvent.started(),
        ),
      child: const _HomeAppBarBody(),
    );
  }
}

class _HomeAppBarBody extends StatefulWidget {
  const _HomeAppBarBody();

  @override
  State<_HomeAppBarBody> createState() => _HomeAppBarBodyState();
}

class _HomeAppBarBodyState extends State<_HomeAppBarBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeBloc = BlocProvider.of<HomeCubit>(context);
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Row(
        children: [
          Expanded(
            child: BlocBuilder<MyProfileBloc, MyProfileState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const _UserBody(isLoading: true),
                  success: (getMeResponseModel) => _UserBody(
                    isLoading: false,
                    name: getMeResponseModel.userData.name,
                    profileImg: getMeResponseModel.userData.image,
                  ),
                );
              },
            ),
          ),
          IconButton.filled(
            onPressed: () {
              AppRouter.push(context: context, page: Pages.notifi);
            },
            icon: const Icon(
              Icons.notifications,
            ),
          ),
          IconButton.filled(
            onPressed: () {
              AppRouter.push(context: context, page: Pages.chats);
            },
            icon: const Icon(Icons.chat),
          ),
          IconButton.filled(
            onPressed: () {
              if (homeBloc.scaffoldKey.currentState!.isDrawerOpen) {
                homeBloc.scaffoldKey.currentState!.closeDrawer();
              } else {
                homeBloc.scaffoldKey.currentState!.openDrawer();
              }
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
        ],
      ).frosted(
        blur: 2,
        padding: EdgeInsets.all(10.w),
        borderRadius: BorderRadius.circular(15.r),
        frostColor: ColorManger.background,
      ),
    );
  }
}

class _UserBody extends StatelessWidget {
  const _UserBody({
    required this.isLoading,
    this.name,
    this.profileImg,
  });
  final bool isLoading;
  final String? name;
  final String? profileImg;

  @override
  Widget build(BuildContext context) {
    final commutesBloc = BlocProvider.of<CommutesBloc>(context);

    return Skeletonizer(
      enabled: isLoading,
      child: ListTile(
        onTap: () {
          AppRouter.push(context: context, page: Pages.profile);
        },
        dense: true,
        leading: BlocBuilder<CommutesBloc, CommutesState>(
          builder: (context, state) {
            return badges.Badge(
              badgeStyle: badges.BadgeStyle(
                badgeColor: commutesBloc.commutes
                        .where((element) => element.isActive == true)
                        .toList()
                        .isEmpty
                    ? ColorManger.red
                    : ColorManger.green,
              ),
              position: badges.BadgePosition.topStart(),
              child: ProfileAvatar(
                radius: 10,
                name: name.toString(),
                imageUrl: profileImg,
              ),
            );
          },
        ),
        title: Text(
          maxLines: 1,
          'Hi, $name',
          style: TextStyles.tsP15B,
        ),
        subtitle: Text(
          Jiffy.now().yMMMEdjm,
        ),
        trailing: const VerticalDivider(
          color: ColorManger.white,
        ),
      ),
    );
  }
}
