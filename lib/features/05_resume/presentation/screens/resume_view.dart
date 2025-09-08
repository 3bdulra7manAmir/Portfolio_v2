import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/cubit_states.dart';
import '../../../../core/widgets/circular_indicator.dart';
import '../../../../core/widgets/error_widget.dart';
import '../controller/resume_cubit.dart';
import '../widgets/resume_webview.dart';


class Resume extends StatelessWidget
{
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ResumeCubit()..loadResume(),
      child: BlocBuilder<ResumeCubit, DefaultState<void>>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const CustomLoadingIndicator();
          } 
          else if (state is SuccessState) {
            return const ResumeWebView();
          } 
          else if (state is FailureState) {
            return Center(child: CustomErrorWidget(e: state.errorMessage));
          }
          return const SizedBox();
        },
      ),
    );
  }
}

