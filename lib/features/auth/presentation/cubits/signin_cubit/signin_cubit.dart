import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nafas_app/features/auth/domain/entities/user_entity.dart';
import 'package:nafas_app/features/auth/domain/repos/auth_repo.dart';

part 'signin_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());

  final AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    emit(SignInLoading());
    final result = await authRepo.signInWithEmailAndPassword(
      email,
      password,
    );
    result.fold(
      (failure) => emit(
        SignInFailure(
          errorMessage: failure.errorMessage,
        ),
      ),
      (userEntity) => emit(
        SignInSuccess(
          userEntity: userEntity,
        ),
      ),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SignInLoading());
    final result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(
        SignInFailure(
          errorMessage: failure.errorMessage,
        ),
      ),
      (userEntity) => emit(
        SignInSuccess(
          userEntity: userEntity,
        ),
      ),
    );
  }
}
