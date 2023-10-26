import 'package:common/data/model/enum/enum.dart';
import 'package:common/error/failure_response.dart';
import 'package:common/state/view_data_state.dart';
import 'package:dependencies/bloc/bloc.dart';
import 'package:dependencies/image_cropper/image_cropper.dart';
import 'package:dependencies/image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:resources/colors.gen.dart';

import 'bloc.dart';

class ImagePickerCubit extends Cubit<ImagePickerState> {
  ImagePickerCubit()
      : super(
          ImagePickerState(
            filePickerResult: ViewData.initial(),
          ),
        );

  void pickImage({
    required SourceImageEnum source,
    bool needCrop = false,
  }) async {
    try {
      ImagePicker picker = ImagePicker();
      if (source == SourceImageEnum.camera) {
        final result = await picker.pickImage(
          source: ImageSource.camera,
          preferredCameraDevice: CameraDevice.front,
        );
        if (needCrop) {
          if (result?.path == null) {
            emit(
              state.copyWith(
                filePickerResult: ViewData.error(
                  message: "Gagal ambil file",
                  failure: const FailureResponse(
                    errorMessage: "Gagal ambil file",
                  ),
                ),
              ),
            );
            return;
          }
          await cropImage(
            filePath: result?.path ?? "",
            onSuccess: (result) {
              emit(
                state.copyWith(
                  filePickerResult: ViewData.loaded(data: result),
                ),
              );
            },
            onError: (error) {
              emit(
                state.copyWith(
                  filePickerResult: ViewData.error(
                    message: error,
                    failure: const FailureResponse(
                      errorMessage: "Gagal ambil file",
                    ),
                  ),
                ),
              );
            },
          );
          return;
        }
        emit(state.copyWith(filePickerResult: ViewData.loaded(data: result)));
      } else {
        final result = await picker.pickImage(
          source: ImageSource.gallery,
        );
        if (needCrop) {
          if (result?.path == null) {
            emit(
              state.copyWith(
                filePickerResult: ViewData.error(
                  message: "Gagal ambil file",
                  failure: const FailureResponse(
                    errorMessage: "Gagal ambil file",
                  ),
                ),
              ),
            );
            return;
          }
          await cropImage(
            filePath: result?.path ?? "",
            onSuccess: (result) {
              emit(
                state.copyWith(
                  filePickerResult: ViewData.loaded(data: result),
                ),
              );
            },
            onError: (error) {
              emit(
                state.copyWith(
                  filePickerResult: ViewData.error(
                    message: error,
                    failure: const FailureResponse(
                      errorMessage: "Gagal ambil file",
                    ),
                  ),
                ),
              );
            },
          );
          return;
        }
        emit(state.copyWith(filePickerResult: ViewData.loaded(data: result)));
      }
    } catch (e) {
      emit(
        state.copyWith(
          filePickerResult: ViewData.error(
            message: "Gagal ambil file",
            failure: const FailureResponse(errorMessage: "Gagal ambil file"),
          ),
        ),
      );
    }
  }

  Future cropImage({
    required String filePath,
    required Function(XFile file) onSuccess,
    required Function(String error) onError,
  }) async {
    try {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: filePath,
        cropStyle: CropStyle.rectangle,
        aspectRatio: const CropAspectRatio(
          ratioX: 3,
          ratioY: 2,
        ),
        compressFormat: ImageCompressFormat.png,
        compressQuality: 90,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Crop Gambar',
            toolbarColor: ColorName.primary,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false,
          ),
          IOSUiSettings(
            title: 'Crop Gambar',
          ),
        ],
      );
      XFile xFile = XFile(croppedFile?.path ?? "");
      onSuccess(xFile);
    } catch (e) {
      onError("Gagal crop");
    }
  }
}
