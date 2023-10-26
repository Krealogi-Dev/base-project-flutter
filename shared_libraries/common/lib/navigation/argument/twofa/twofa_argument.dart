import 'package:dependencies/equatable/equatable.dart';

class TwoFaArgument extends Equatable {
  final String twoFaToken;
  final String email;
  final String password;
  final bool remeber;

  const TwoFaArgument(
      {required this.twoFaToken,
      required this.email,
      required this.password,
      required this.remeber});

  @override
  List<Object?> get props => [
        twoFaToken,
        email,
        password,
        remeber,
      ];
}
