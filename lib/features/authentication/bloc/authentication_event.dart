part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationEvent {}

class AuthenticationLogInButtonNavigateEvent extends AuthenticationEvent {}

class AuthenticationForgetPasswordClickedEvent extends AuthenticationEvent {}

class AuthenticationGoogleButtonClickedEvent extends AuthenticationEvent {}

class AuthenticationFacebookButtonClickedEvent extends AuthenticationEvent {}

class AuthenticationSignUpNavigateEvent extends AuthenticationEvent {}
