import 'package:image_search_4day/data/model/photo.dart';
import 'package:image_search_4day/dto/pixabay_result_dto.dart';

extension ToPhoto on Hits {
  Photo toPhoto() {
    return Photo(
      id: id ?? 0,
      webformatURL: webformatURL ?? '',
      views: views ?? 0,
    );
  }
}
