import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/generated/l10n.dart';
import '../../../../../core/routes/app_route.dart';
import '../../../../../core/widgets/empty_view.dart';
import '../../../../../core/widgets/error_view.dart';
import '../../../../../core/widgets/loading_view.dart';
import '../../../../../core/widgets/profile_avatar.dart';
import '../../../../../core/widgets/profile_rating_bar.dart';
import '../../../../chat/one_chat/data/models/chat_room_args_model.dart';
import '../../controllers/approved_join/approved_join_cubit.dart';
import '../../data/models/aproved_join_response_model.dart';
import '../../../my_commutes/data/models/get_commutes_response_model.dart';

class OneCommuteAprovedJoinBody extends StatelessWidget {
  const OneCommuteAprovedJoinBody({super.key, required this.commuteModel});
  final CommuteModel commuteModel;

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);

    BlocProvider.of<ApprovedJoinCubit>(context)
        .getApprovedJoin(commuteModel.id);
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: BlocBuilder<ApprovedJoinCubit, ApprovedJoinState>(
              builder: (context, state) {
                return state.when(
                  loading: () => const LoadingView(),
                  success: (approvedJoin) => Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: approvedJoin.length,
                            itemBuilder: (context, index) =>
                                ApprovedJoinItemView(
                              aprovedJoin: approvedJoin[index],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  failure: () => const ErrorView(),
                  empty: () => EmptyView(
                      icon: Icons.groups, text: language.no_approved_requests),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ApprovedJoinItemView extends StatelessWidget {
  const ApprovedJoinItemView({super.key, required this.aprovedJoin});
  final AprovedJoinModel aprovedJoin;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: ProfileAvatar(name: aprovedJoin.userData.name, radius: 10),
        title: Text(aprovedJoin.userData.name),
        subtitle: ProfileRatingBar(
            rating: aprovedJoin.userData.ratingsQuantity, itemSize: 25),
        trailing: IconButton.outlined(
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          onPressed: () {
            AppRouter.push(
              context: context,
              page: Pages.oneChat,
              arguments: ChatRoomArgsModel(
                friendId: aprovedJoin.user,
                friendName: aprovedJoin.userData.name,
                friendImageUrl: aprovedJoin.userData.image,
              ),
            );
          },
          icon: const Icon(Icons.chat),
        ),
      ),
    );
  }
}
