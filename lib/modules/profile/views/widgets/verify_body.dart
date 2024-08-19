part of '../profile_view.dart';

class _VerifyBody extends StatelessWidget {
  const _VerifyBody();

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);

    return Card(
      child: Padding(
        padding: EdgeInsetsDirectional.all(10.w),
        child: TextButton(
          onPressed: () {},
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(10.r),
            dashPattern: const [10, 10],
            color: Colors.grey,
            strokeWidth: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Icon(
                    size: 50.r,
                    Icons.document_scanner_rounded,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Text(
                    language.Verify_Identity,
                    textAlign: TextAlign.center,
                    style: TextStyles.tsP15B,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
