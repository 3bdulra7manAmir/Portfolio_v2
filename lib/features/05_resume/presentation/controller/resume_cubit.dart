import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/cubit_states.dart';
import '../../../../core/utils/functions/url_launcher/urls.dart';
import '../../../../core/utils/logger/app_logger.dart';

class ResumeCubit extends Cubit<DefaultState<void>> {
  ResumeCubit() : super(const InitialState());

  Future<void> loadResume() async {
    emit(const LoadingState());
    
    try {
      // Link Foramt Checker
      final uri = Uri.tryParse(Urls.resumeFlow);
      if (uri == null || (!uri.hasScheme)) {
        emit(const FailureState('Invalid resume URL format'));
        return;
      }

      // Check that it's a flowcv Link
      if (!uri.host.contains('flowcv.com')) {
        emit(const FailureState('Resume URL must be from FlowCV'));
        return;
      }

      emit(const SuccessState(null));
      
    } catch (e) {
      AppLogger.error('Error loading resume: $e');
      emit(FailureState('Failed to load resume: ${e.toString()}'));
    }
  }
}