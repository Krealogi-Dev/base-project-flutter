import 'package:common/state/view_data_state.dart';
import 'package:dependencies/file_picker/file_picker.dart';

class FilePickerState {
  final ViewData<PlatformFile> filePicker;

  FilePickerState({required this.filePicker});

  FilePickerState copyWith({
    ViewData<PlatformFile>? filePicker,
  }) {
    return FilePickerState(
      filePicker: filePicker ?? this.filePicker,
    );
  }
}
