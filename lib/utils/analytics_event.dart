enum ScreenViewEvent {
  planDetailPageView('plan_detail_page_view'),
  billDetailPageView('bill_detail_page_view'),
  billDetailDialogView('bill_detail_dialog_view'),
  mapPageView('map_page_view'),
  errorView('error_view');

  const ScreenViewEvent(this.key);
  final String key;
}

enum UserActionEvent {
  deleteAccount('delete_account'),
  chatLimitReached('chat_limit_reached'),
  completeCreatePlan('complete_create_plan'),
  customError('custom_error');

  const UserActionEvent(this.key);
  final String key;
}
