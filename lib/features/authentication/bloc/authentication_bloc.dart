import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<AuthenticationSignUpNavigateEvent>(authenticationSignUpNavigateEvent);
    on<AuthenticationLogInButtonNavigateEvent>(
        authenticationLogInButtonNavigateEvent);
  }

  FutureOr<void> authenticationSignUpNavigateEvent(
      AuthenticationSignUpNavigateEvent event,
      Emitter<AuthenticationState> emit) {
    print('SignUp Clicked');
    emit(AuthenticationNavigateToSingUpPageActionState());
  }

  FutureOr<void> authenticationLogInButtonNavigateEvent(
      AuthenticationLogInButtonNavigateEvent event,
      Emitter<AuthenticationState> emit) {}
}
