part of '../profile_view.dart';

class _SuccessBody extends StatelessWidget {
  const _SuccessBody();

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    final ProfileBloc profileBloc = BlocProvider.of(context);
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(10.w),
            children: [
              _AccountBody(
                imgUrl: profileBloc.getMeResponseModel.userData.profileImg,
                email: profileBloc.getMeResponseModel.userData.email,
                name: profileBloc.getMeResponseModel.userData.name,
                phone: profileBloc.getMeResponseModel.userData.phone.toString(),
                rate: profileBloc.getMeResponseModel.userData.ratingsQuantity,
              ),
              const _WorkspaceBody(),
              const _VerifyBody(),
              SizedBox(height: 10.h),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.w),
          child: FilledButton(
            onPressed: () async {
              // profileBloc.add(const ProfileEvent.updateMe());
            },
            child: Text(language.Update_Profile),
          ),
        )
      ],
    );
  }
}
