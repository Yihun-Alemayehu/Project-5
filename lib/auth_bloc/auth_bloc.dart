import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_5/data/model/user_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(LoadingState());
      await Future.delayed(Duration(seconds: 5));
      emit(
        AuthenticatedState(
          user: User(
              username: event.user.username, password: event.user.password),
        ),
      );
    });
    on<RegisterEvent>((event, emit) async {
      emit(LoadingState());
      await Future.delayed(Duration(seconds: 5));
      emit(
        AuthenticatedState(
          user: User(
              username: event.user.username, password: event.user.password),
        ),
      );
    });
  }
}
