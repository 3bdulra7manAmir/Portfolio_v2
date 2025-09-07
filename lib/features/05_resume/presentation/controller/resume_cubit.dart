import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/cubit_states.dart';
import '../../../../core/utils/functions/url_launcher/urls.dart';

class ResumeCubit extends Cubit<DefaultState<void>> {
  ResumeCubit() : super(const InitialState());

  Future<void> loadResume() async {
    emit(const LoadingState());
    
    try {
      // التحقق من صحة الرابط
      if (Urls.resumeFlow.isEmpty) {
        emit(const FailureState('Resume URL is empty'));
        return;
      }

      // التحقق من صيغة الرابط
      final uri = Uri.tryParse(Urls.resumeFlow);
      if (uri == null || (!uri.hasScheme)) {
        emit(const FailureState('Invalid resume URL format'));
        return;
      }

      // التحقق من أن الرابط من flowcv
      if (!uri.host.contains('flowcv.com')) {
        emit(const FailureState('Resume URL must be from FlowCV'));
        return;
      }

      // محاكاة تحقق من الاتصال (اختياري)
      if (kIsWeb) {
        // يمكن إضافة تحقق إضافي هنا إذا لزم الأمر
        await Future.delayed(const Duration(milliseconds: 500));
      }

      emit(const SuccessState(null));
      
    } catch (e) {
      debugPrint('Error loading resume: $e');
      emit(FailureState('Failed to load resume: ${e.toString()}'));
    }
  }

  // دالة للتحقق من حالة الاتصال
  Future<bool> checkConnection() async {
    try {
      // يمكن إضافة تحقق من الاتصال هنا إذا لزم الأمر
      return true;
    } catch (e) {
      return false;
    }
  }

  // دالة لإعادة المحاولة
  Future<void> retry() async {
    await loadResume();
  }
}