part of 'splash_cubit.dart';

class SplashState {
  ConnectionStatus connectionStatus;
  SplashState({required this.connectionStatus});

  SplashState copyWith(ConnectionStatus? connectionStatus) {
    return SplashState(
        connectionStatus: connectionStatus ?? this.connectionStatus);
  }
}
