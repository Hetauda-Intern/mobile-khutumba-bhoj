part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationState {}

abstract class AuthenticationActionState extends AuthenticationState {}

final class AuthenticationInitial extends AuthenticationState {}

class AuthenticationSucessState extends AuthenticationState {}

class AuthenticationUnsucessState extends AuthenticationState {}

class AuthenticationNavigateToForgetPasswordActionState
    extends AuthenticationActionState {}

class AuthenticationNavigateToGoogleActionState
    extends AuthenticationActionState {}

class AuthenticationNavigateToFacebookActionState
    extends AuthenticationActionState {}

class AuthenticationNavigateToSingUpPageActionState
    extends AuthenticationActionState {}

class AuthenticationNavigateToGetStartPageActionState
    extends AuthenticationActionState {}
