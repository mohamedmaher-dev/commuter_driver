part of '../sign_in_view.dart';

class _SignInActions extends StatelessWidget {
  const _SignInActions();
  @override
  Widget build(BuildContext context) {
    final SignInBloc signInBloc = BlocProvider.of<SignInBloc>(context);
    final Language language = Language.of(context);
    return Column(
      children: [
        FilledButton(
          onPressed: () {
            signInBloc.add(const SignInEvent.signIn());
          },
          child: Text(
            language.Sign_In,
          ),
        ),
        SizedBox(height: 10.h),
        GoogleBTN(onPressed: () {}, language: language),
        SizedBox(height: 10.h),
        TextButton(
          onPressed: () {
            AppRouter.pushReplacement(
              context: context,
              page: Pages.signUp,
              data: {"name": "mohamed"},
            );
          },
          child: Text(
            language.Create_Account,
          ),
        )
      ],
    );
  }
}
