class GeneralResponseDto {
  GeneralResponseDto({
    this.success,
    this.message,
  });

  final bool? success;
  final String? message;

  factory GeneralResponseDto.fromJson(Map<String, dynamic> json) =>
      GeneralResponseDto(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
      );
}
