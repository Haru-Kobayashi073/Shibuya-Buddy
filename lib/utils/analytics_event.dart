enum AnalyticsEvent {
  planDetailPageView('plan_detail_page_view'),
  billDetailPageView('bill_detail_page_view'),
  billDetailDialogView('bill_detail_dialog_view'),
  mapPageView('map_page_view'),
  errorView('error_view'),
  deleteAccount('delete_account');

  const AnalyticsEvent(this.key);
  final String key;
}
