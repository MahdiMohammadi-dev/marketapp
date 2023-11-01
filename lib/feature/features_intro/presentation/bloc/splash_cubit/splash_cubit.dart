import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:marketapp/feature/features_intro/repositories/splash_repository.dart';
import 'package:meta/meta.dart';

part 'splash_cubit_state.dart';
part 'connection_status.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState(connectionStatus: ConnectionInitial()));

  SplashRepository splashRepository = SplashRepository();

  Future<void> checkConnectionEvent() async {
    emit(state.copyWith(ConnectionInitial()));

    bool isConnected = await splashRepository.checkConnectivity();
    if (isConnected == true) {
      emit(state.copyWith(ConnectionOn()));
    } else {
      emit(state.copyWith(ConnectionOff()));
    }
  }
}
