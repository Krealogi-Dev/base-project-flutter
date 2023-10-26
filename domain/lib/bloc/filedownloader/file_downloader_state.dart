import 'package:common/state/view_data_state.dart';

class FileDownloaderState<T> {
  final ViewData<T> fileDownloaderState;

  const FileDownloaderState({
    required this.fileDownloaderState,
  });

  FileDownloaderState copyWith({
    ViewData<T>? fileDownloaderState,
  }) {
    return FileDownloaderState(
      fileDownloaderState: fileDownloaderState ?? this.fileDownloaderState,
    );
  }
}
