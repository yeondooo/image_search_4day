# 매일 만드는 앱 프로젝트 (이미지 검색 앱 서비스)
실력 향상을 위해 [매일 하나의 앱을 만들고 기록](https://youtube.com/playlist?list=PLqalTSLVTm5tldlM57kHnRvG7feOenQMN)합니다.<br>
검색어를 입력하면 입력값에 따라 조회수가 높은 순으로 이미지 5개를 사용자에게 보여주는 서비스 입니다.


## ⚙️ 구현 기능
- 디자인 패턴 적용
    - MVVM 패턴을 적용하여 데이터를 활용 용도에 따라 분리했습니다.
    - MVVM이 적용된 구조를 [클린아키텍처 기반으로 리팩토링](https://github.com/yeondooo/image_search_4day/commit/50df3dd944ace90828e3bed6ec2a1b857d2d215c) 했습니다.
    - 의존성 분리를 위해 useCase 클래스를 구현했습니다.
https://github.com/yeondooo/image_search_4day/blob/c5662aba776e98106335f9b34fb3a1eab0cae60d/lib/domain/use_case/get_top_five_most_viewd_images_use_case.dart#L1-L16

- 라이브러리 활용
    - 상태관리를 위해 Provider를 사용했습니다.
    - 객체를 복제하기 위한 copyWith 메서드 구현, 역/직렬화 처리를 위해 freezed를 사용했습니다.

## ⚒️ 기술 스택
```
dart
flutter
http
provider
json_annotation
go_router
freezed
freezed_annotation
json_serializable
build_runner
```
 

## 🖥️ 구현 화면

<img src="https://github.com/yeondooo/image_search_4day/assets/97602748/75320c72-79de-4986-ac9d-0d91b8889037" width="600">
