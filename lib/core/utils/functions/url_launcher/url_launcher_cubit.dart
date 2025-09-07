import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../cubit_states.dart';

class UrlLauncherCubit extends Cubit<DefaultState<void>> {
  UrlLauncherCubit() : super(const InitialState());

  Future<void> launchUrlSafe(String url) async {
    emit(const LoadingState());

    try {
      final uri = Uri.tryParse(url);
      if (uri == null) {
        emit(const FailureState('Invalid URL'));
        return;
      }

      final canLaunch = await canLaunchUrl(uri);
      if (!canLaunch) {
        emit(const FailureState('Cannot launch this URL'));
        return;
      }

      final launched = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );

      if (launched) {
        emit(const SuccessState(null));
      } else {
        emit(const FailureState('Failed to launch URL'));
      }
    } catch (e) {
      emit(FailureState('Error: $e'));
    }
  }
}
