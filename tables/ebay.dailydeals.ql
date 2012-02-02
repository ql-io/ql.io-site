create table dailydeals
  on select get from "http://anywhere.ebay.com/services/feed/deals/?version=3&dealdetail=2&type=0&siteid={siteId}"
    using defaults siteId = "0"
