import 'package:equatable/equatable.dart';

abstract class OtpEvent extends Equatable {
  const OtpEvent();

  @override
  List<Object> get props => [];
}

class SendOtpEvent extends OtpEvent {
  final String phoneNumber;

  const SendOtpEvent(this.phoneNumber);

  @override
  List<Object> get props => [phoneNumber];
}

class VerifyOtpEvent extends OtpEvent {
  final String otp;

  const VerifyOtpEvent(this.otp);

  @override
  List<Object> get props => [otp];
}