import 'package:common/state/view_data_state.dart';
import 'package:dependencies/image_picker/image_picker.dart';

class ImagePickerState {
  final ViewData<XFile> filePickerResult;

  const ImagePickerState({
    required this.filePickerResult,
  });

  ImagePickerState copyWith({
    ViewData<XFile>? filePickerResult,
  }) {
    return ImagePickerState(
      filePickerResult: filePickerResult ?? this.filePickerResult,
    );
  }
}
