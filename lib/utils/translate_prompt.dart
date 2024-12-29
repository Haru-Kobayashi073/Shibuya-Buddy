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
    };
  }

  String jaPrompt() {
    return '''
      渋谷区内での観光プランを考えてください。

      日付は、${planPrompt.schedules.firstDate}から${planPrompt.schedules.lastDate}までの間で考えてください。

      人数は、${planPrompt.numberOfPeople}人です。

      交通手段は、${planPrompt.transports.join(',')}です。
      )}です。

      カテゴリーは、${planPrompt.categories.join(',')}です。

      旅のトピックは、${planPrompt.topics.join(',')}です。

      出力は以下のフォーマットにしてください。

      - プラン内容に関係のある画像のURL(画像を生成し、URLを返してください)
      - プラン概要のタイトル(提案するスポットに関連したタイトル)
      - プラン内容に関係のあるトピックのリスト
        - トピックの名前
        - トピックのサムネイルURL(画像を生成し、URLを返してください)
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

      人数为${planPrompt.numberOfPeople}人。

      交通方式为${planPrompt.transports.join(',')}。

      类别为${planPrompt.categories.join(',')}。

      旅行主题为${planPrompt.topics.join(',')}。

      输出请使用以下格式。

      - 与计划相关的图片URL(生成图片并返回URL)
      - 计划概要标题(与推荐热点相关的标题)
      - 与计划相关的主题列表
        - 主题名称
        - 主题缩略图URL(生成图片并返回URL)
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

      人數為${planPrompt.numberOfPeople}人。

      交通方式為${planPrompt.transports.join(',')}。

      類別為${planPrompt.categories.join(',')}。

      旅行主題為${planPrompt.topics.join(',')}。

      輸出請使用以下格式。

      - 與計畫相關的圖片URL(生成圖片並返回URL)
      - 計畫概要標題(與推薦熱點相關的標題)
      - 與計畫相關的主題列表
        - 主題名稱
        - 主題縮略圖URL(生成圖片並返回URL)
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

      The number of people is ${planPrompt.numberOfPeople}.

      Transportation methods include ${planPrompt.transports.join(',')}.

      Categories include ${planPrompt.categories.join(',')}.

      Travel topics include ${planPrompt.topics.join(',')}.

      Please use the following format for output.

      - URL of an image related to the plan (generate an image and provide the URL)
      - Title of the plan summary (related to proposed spots)
      - List of topics related to the plan
        - Topic name
        - Thumbnail URL of the topic (generate an image and provide the URL)
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
}
