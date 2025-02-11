enum AnalyticsEvent {
  planDetailPageView('plan_detail_page_view'),
  billDetailPageView('bill_detail_page_view'),
  mapPageView('map_page_view'),
  errorView('error_view'),
  deleteUser('delete_user');

  const AnalyticsEvent(this.key);
  final String key;
}
