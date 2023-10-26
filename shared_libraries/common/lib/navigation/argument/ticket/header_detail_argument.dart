class HeaderDetailArgument {
  HeaderDetailArgument({
    this.title,
    this.ticketId,
    this.problem,
    this.category,
    this.courier,
    this.courierType,
    this.status,
  });
  final String? title;
  final String? ticketId;
  final String? problem;
  final String? category;
  final String? courier;
  final String? courierType;
  final String? status;

  factory HeaderDetailArgument.fromJson(Map<String, dynamic> json) =>
      HeaderDetailArgument(
        title: json['title'],
        problem: json['problem'],
        category: json['category'],
        courier: json['courier'],
        courierType: json['courierType'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'problem': problem,
      'category': category,
      'courier': courier,
      'courierType': courierType,
      'status': status,
    };
  }

  HeaderDetailArgument copyWith({
    String? title,
    String? ticketId,
    String? problem,
    String? category,
    String? courier,
    String? courierType,
    String? status,
  }) {
    return HeaderDetailArgument(
      title: title ?? this.title,
      ticketId: ticketId ?? this.ticketId,
      problem: problem ?? this.problem,
      category: category ?? this.category,
      courier: courier ?? this.courier,
      courierType: courierType ?? this.courierType,
      status: status ?? this.status,
    );
  }
}
