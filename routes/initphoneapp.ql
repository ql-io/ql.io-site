-- combine 4 phone app's start-up API calls into a single one

ud = select GMGetUserDetailsResponseType from pp.gmapi.gud where session_token = "{session_token}";
sf = select GetSupportedFeaturesResponseType from pp.gmapi.gsf where session_token = "{session_token}";
rh = select GMRecentHistoryResponseType from pp.gmapi.rh where session_token = "{session_token}" and days = "{days}";
nc = select GMMobileNotificationConfigureResponseType from pp.gmapi.mnc where session_token = "{session_token}" and DRT = "{DRT}" and device_token = "{device_token}";

return {"user": "{ud}", "features": "{sf}", "history": "{rh}", "notifications": "{nc}"}
via route '/initphoneapp' using method get;