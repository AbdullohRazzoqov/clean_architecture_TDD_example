
import 'package:bloc/bloc.dart';
import 'package:clean_architecture_tdd_example/core/resources/state_status.dart';
import 'package:clean_architecture_tdd_example/features/login/domain/entities/login_request.dart';
import 'package:clean_architecture_tdd_example/features/login/domain/use_cases/login_use_cases.dart';


part 'login_screen_event.dart';
part 'login_screen_state.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  final LoginUseCase authUseCase;

  LoginScreenBloc(this.authUseCase) : super(const LoginScreenState()) {
    on<SignIn>((event, emit) async {

      emit(state.copyWith(status: StateStatus.loading));

      final isValidated = _validateFields(event.loginRequest);

      if (isValidated) {
        final result = await authUseCase.login(event.loginRequest);

        if (result) {
          emit(state.copyWith(status: StateStatus.success));
        }
      } else {
        emit(state.copyWith(status: StateStatus.error));
      }
    });
  }

  bool _validateFields(LoginRequest loginRequest) {
    return true;
  }
}
