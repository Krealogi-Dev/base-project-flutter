import 'package:common/error/failure_response.dart';
import 'package:common/state/view_data_state.dart';
import 'package:dependencies/bloc/bloc.dart';
import 'package:dependencies/file_picker/file_picker.dart';

import 'file_picker_state.dart';

class FilePickerCubit extends Cubit<FilePickerState> {
  FilePickerCubit()
      : super(
          FilePickerState(
            filePicker: ViewData.initial(),
          ),
        );

  void pickFile({
    FileType type = FileType.custom,
    List<String>? allowedExtensions,
  }) async {
    try {
      FilePickerResult? result;
      if (type == FileType.custom) {
        result = await FilePicker.platform
            .pickFiles(type: type, allowedExtensions: allowedExtensions);
        emit(
          state.copyWith(
            filePicker: ViewData.loaded(data: result?.files.single),
          ),
        );
      } else {
        result = await FilePicker.platform.pickFiles(type: type);
        emit(
          state.copyWith(
            filePicker: ViewData.loaded(data: result?.files.single),
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          filePicker: ViewData.error(
            message: "Gagal ambil file",
            failure: const FailureResponse(errorMessage: "Gagal ambil file"),
          ),
        ),
      );
    }
  }
}
