import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../config/i18n/generated/l10n.dart';
import '../../utils/cubit_states.dart';
import '../../utils/functions/url_launcher/url_launcher_cubit.dart';
import '../../utils/functions/url_launcher/urls.dart';
import '../../utils/logger/app_logger.dart';
import '../dialog.dart';
import '../error_widget.dart';
import 'button.dart';

class HireMeButton extends StatelessWidget {
  const HireMeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UrlLauncherCubit, DefaultState<void>>(
      listener: (context, state) {
        if (state is FailureState) {
          AppLogger.error('WhatsApp launch failed: ${state.errorMessage}');
          customAppDialog(
            context: context,
            title: S.current.error,
            content: CustomErrorWidget(e: state.errorMessage,) ,
          );
        }
      },
      builder: (context, state) {
        final isLoading = state is LoadingState;
        return CustomButton(
          text: 'Hire Me',
          onPressed: isLoading
            ? () {} : () {
            AppLogger.debug('Opening WhatsApp...');
            context.read<UrlLauncherCubit>().launchUrlSafe(Urls.whatsapp,);
          },
        );
      },
    );
  }
}
