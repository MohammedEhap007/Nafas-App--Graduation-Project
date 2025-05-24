import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nafas_app/core/helper/build_error_bar.dart';
import 'package:nafas_app/core/helper/show_custom_snack_bar.dart';
import 'package:nafas_app/core/services/get_it_service.dart';
import 'package:nafas_app/features/auth/domain/repos/auth_repo.dart';
import 'package:nafas_app/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:nafas_app/features/auth/presentation/views/widgets/log_in_view_body.dart';
import 'package:nafas_app/features/home/presentation/views/nav_bar.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});
  static const routeName = 'logIn';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(
        getIt.get<AuthRepo>(),
      ),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<SignInCubit, SignInState>(
            listener: (context, state) {
              if (state is SignInSuccess) {
                Navigator.pushReplacementNamed(context, NavBarView.routeName);
                showCustomSnackBar(context,
                    message: 'تم تسجيل الدخول بنجاح', isSucceeded: true);
              }
              if (state is SignInFailure) {
                buildErrorBar(
                  context,
                  state.errorMessage,
                );
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is SignInLoading ? true : false,
                child: const LogInViewBody(),
              );
            },
          ),
        ),
      ),
    );
  }
}
