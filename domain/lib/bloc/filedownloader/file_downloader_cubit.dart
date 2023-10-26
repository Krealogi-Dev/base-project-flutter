import 'dart:io';

import 'package:common/constants/constants.dart';
import 'package:common/state/view_data_state.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dependencies/bloc/bloc.dart';
import 'package:path/path.dart';
import 'bloc.dart';
import 'package:http/http.dart' as http;
import 'package:dependencies/open_filex/open_filex.dart';

class FileDownloaderCubit extends Cubit<FileDownloaderState> {
  final authenticationRepository;
  // final AppRepository authenticationRepository;
  FileDownloaderCubit({
    required this.authenticationRepository,
  }) : super(
          FileDownloaderState(
            fileDownloaderState: ViewData.initial(),
          ),
        );

  void downloadFileAbsensi({
    required String slug,
    required String statusAbsensi,
    String? eventName,
  }) async {
    emit(state.copyWith(fileDownloaderState: ViewData.loading()));
    final authTokenAsync = await authenticationRepository.getAccessToken();
    final authToken = authTokenAsync.getOrElse(() => '');
    final response = await http.post(
      Uri.parse(
          '${Config.baseURL}partner/profile/me/eo/acara/$slug/peserta/v3/download?status_absensi=$statusAbsensi'),
      headers: Map.from(
        {'Authorization': 'Bearer $authToken'},
      ),
    );
    final bytes = response.bodyBytes;
    final filename =
        basename(eventName == null ? "peserta-acara.xlsx" : "$eventName.xlsx");
    final dir = await getApplicationDocumentsDirectory();
    var file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes);
    await OpenFilex.open(
      file.path,
    );
    emit(state.copyWith(fileDownloaderState: ViewData.initial()));
  }
}
