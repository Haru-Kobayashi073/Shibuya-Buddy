import '../domain/entities/plan_prompt.dart';
import '../i18n/strings.g.dart';

class TranslatePrompt {
  TranslatePrompt(
    this.locale,
    this.planPrompt,
  );
  final AppLocale locale;
  final PlanPrompt planPrompt;

  String switchPromptLocale() {
    return switch (locale) {
      AppLocale.en => enPrompt(),
      AppLocale.ja => jaPrompt(),
      AppLocale.zhHans => zhHansPrompt(),
      AppLocale.zhHant => zhHantPrompt(),
      AppLocale.ko => krPrompt(),
    };
  }

  String jaPrompt() {
    return '''
      渋谷区内での観光プランを考えてください。

      日付は、${planPrompt.schedules.firstDate}から${planPrompt.schedules.lastDate}までの間で考えてください。

      人数は、大人が${planPrompt.adultCount}人と子供が${planPrompt.childCount}人です。

      交通手段は、${planPrompt.transports.join(',')}です。
      )}です。

      旅のトピックは、${planPrompt.topics.map((e) => e.translatedNameMap[AppLocale.ja]).join(',')}です。

      出力は以下のフォーマットにしてください。

      - プラン内容に関係のある画像のURL(画像を生成し、URLを返してください)
      - プラン概要のタイトルを渋谷という単語を使わずに、提案するスポットに関連したタイトルを出力
      - 観光スポットのタイトル
      - 観光スポットの名前
      - 観光スポットのサムネイルURL(画像を生成し、URLを返してください)
      - 観光スポットの営業時間
      - 観光スポットの平均予算
      - 観光スポットのWebサイトURL
      - 観光スポットの緯度、経度
      - プラン概要についてのメッセージの送信

      観光スポットの提案は、地名ではなく、場所を提案してください。

      URLに関しては、実際にアクセス可能なものを出力してください。

      日本語で出力してください。
  ''';
  }

  String zhHansPrompt() {
    return '''
      请想出一个在渋谷区内的观光旅行计划。

      日期请考虑从${planPrompt.schedules.firstDate}到${planPrompt.schedules.lastDate}。

      人数为成人${planPrompt.adultCount}人，儿童${planPrompt.childCount}人。

      交通方式为${planPrompt.transports.join(',')}。

      旅行主题为${planPrompt.topics.map((e) => e.translatedNameMap[AppLocale.zhHans]).join(',')}。

      输出请使用以下格式。

      - 与计划相关的图片URL(生成图片并返回URL)
      - 请输出与推荐景点相关的标题，不使用“涩谷”一词。
      - 景点标题
      - 景点名称
      - 景点缩略图URL(生成图片并返回URL)
      - 景点营业时间
      - 景点平均预算
      - 景点网站URL
      - 景点纬度、经度
      - 关于计划概要的信息发送

      景点推荐请提供地点而非地名。

      请输出可以实际访问的URL。

      请用简体字输出。
  ''';
  }

  String zhHantPrompt() {
    return '''
      請想出一個在渋谷區內的觀光旅行計畫。

      日期請考慮從${planPrompt.schedules.firstDate}到${planPrompt.schedules.lastDate}。

      人數為成人${planPrompt.adultCount}人，兒童${planPrompt.childCount}人。

      交通方式為${planPrompt.transports.join(',')}。

      旅行主題為${planPrompt.topics.map((e) => e.translatedNameMap[AppLocale.zhHant]).join(',')}。

      輸出請使用以下格式。

      - 與計畫相關的圖片URL(生成圖片並返回URL)
      - 請輸出與推薦景點相關的標題，不使用“澀谷”一詞。
      - 景點標題
      - 景點名稱
      - 景點縮略圖URL(生成圖片並返回URL)
      - 景點營業時間
      - 景點平均預算
      - 景點網站URL
      - 景點緯度、經度
      - 關於計畫概要的信息發送

      景點推薦請提供地點而非地名。

      請輸出可以實際訪問的URL。

      請用繁體字輸出。
  ''';
  }

  String enPrompt() {
    return '''
      Please create a sightseeing plan within Shibuya Ward.

      Consider the dates from ${planPrompt.schedules.firstDate} to ${planPrompt.schedules.lastDate}.

      The number of people is ${planPrompt.adultCount} adults and ${planPrompt.childCount} children.

      Transportation methods include ${planPrompt.transports.join(',')}.

      Travel themes include ${planPrompt.topics.map((e) => e.translatedNameMap[AppLocale.en]).join(',')}.

      Please use the following format for output.

      - URL of an image related to the plan (generate an image and provide the URL)
      - Please output a title related to the proposed spot without using the word "Shibuya."
      - Title of sightseeing spots
      - Name of sightseeing spots
      - Thumbnail URL of the sightseeing spots (generate an image and provide the URL)
      - Business hours of sightseeing spots
      - Average budget of sightseeing spots
      - Website URL of sightseeing spots
      - Latitude and longitude of sightseeing spots
      - Send messages about the plan summary

      Proposals for sightseeing spots should specify locations rather than place names.

      Please output URLs that are actually accessible.

      Please output in English.
  ''';
  }

  String krPrompt() {
    return '''
      시부야 구 내에서 관광 계획을 세워주세요.

      날짜는 ${planPrompt.schedules.firstDate}부터 ${planPrompt.schedules.lastDate}까지 고려해주세요.

      인원은 성인${planPrompt.adultCount}명과 어린이${planPrompt.childCount}명입니다.

      교통수단은 ${planPrompt.transports.join(',')}입니다.

      여행 주제는 ${planPrompt.topics.map((e) => e.translatedNameMap[AppLocale.ko]).join(',')}입니다.

      출력은 다음 형식으로 해주세요.

      - 계획과 관련된 이미지 URL(이미지를 생성하고 URL을 반환해주세요)
      - 추천하는 장소와 관련된 제목을 출력하되, "시부야"라는 단어는 사용하지 마세요.
      - 관광지 제목
      - 관광지 이름
      - 관광지 썸네일 URL(이미지를 생성하고 URL을 반환해주세요)
      - 관광지 운영 시간
      - 관광지 평균 예산
      - 관광지 웹사이트 URL
      - 관광지의 위도, 경도
      - 계획 개요에 대한 메시지 전송

      관광지 제안은 지명이 아닌 장소를 제안해주세요.

      URL에 대해서는 실제로 접근 가능한 것을 출력해주세요.

      한국어로 출력해주세요.
    ''';
  }
}
