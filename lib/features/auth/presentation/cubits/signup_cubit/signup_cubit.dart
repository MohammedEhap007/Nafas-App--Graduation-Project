import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nafas_app/features/auth/domain/entities/user_entity.dart';
import 'package:nafas_app/features/auth/domain/repos/auth_repo.dart';

part 'signup_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());

  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
    String name,
    String email,
    String password,
  ) async {
    emit(SignUpLoading());
    final result = await authRepo.createUserWithEmailAndPassword(
      name,
      email,
      password,
    );
    result.fold(
      (failure) => emit(
        SignUpFailure(errorMessage: failure.errorMessage),
      ),
      (userEntity) => emit(
        SignUpSuccess(userEntity: userEntity),
      ),
    );
  }
}
