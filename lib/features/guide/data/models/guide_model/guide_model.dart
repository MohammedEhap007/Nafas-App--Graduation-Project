import 'package:equatable/equatable.dart';

class GuideModel extends Equatable {
  final String? url;
  final String? title;
  final String? thumbnail;

  const GuideModel({
    this.url,
    this.title,
    this.thumbnail,
  });

  factory GuideModel.fromJson(Map<String, dynamic> json) => GuideModel(
        url: json['url'] as String?,
        title: json['title'] as String?,
        thumbnail: json['thumbnail'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'url': url,
        'title': title,
        'thumbnail': thumbnail,
      };

  @override
  List<Object?> get props => [url, title, thumbnail];
}
