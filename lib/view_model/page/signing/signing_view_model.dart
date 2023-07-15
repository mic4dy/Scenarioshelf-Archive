import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/state/signing/signing_state.dart';

part 'signing_view_model.g.dart';

@riverpod
class SigningViewModel extends _$SigningViewModel {
  @override
  SigningState build() {
    return const SigningState();
  }

  void onTapObscureIcon() => state = state.copyWith(isObscure: !state.isObscure);
}
