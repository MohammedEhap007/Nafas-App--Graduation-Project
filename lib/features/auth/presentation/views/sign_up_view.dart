import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nafas_app/core/helper/build_error_bar.dart';
import 'package:nafas_app/core/helper/show_custom_snack_bar.dart';
import 'package:nafas_app/core/services/get_it_service.dart';
import 'package:nafas_app/features/auth/domain/repos/auth_repo.dart';
import 'package:nafas_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:nafas_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:nafas_app/features/home/presentation/views/nav_bar.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signUp';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        getIt.get<AuthRepo>(),
      ),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<SignUpCubit, SignUpState>(
            listener: (context, state) {
              if (state is SignUpSuccess) {
                Navigator.pushReplacementNamed(context, NavBarView.routeName);
                showCustomSnackBar(context, message: 'تم انشاء الحساب بنجاح', isSucceeded: true);
              }
              if (state is SignUpFailure) {
                buildErrorBar(
                  context,
                  state.errorMessage,
                );
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is SignUpLoading ? true : false,
                child: const SignUpViewBody(),
              );
            },
          ),
        ),
      ),
    );
  }
}
