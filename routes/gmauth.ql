-- GMAuthenticateUser with email/password

return select * from pp.gmapi.gmauth where Email = "{Email}" and Password = "{Password}"

via route '/gmauth' using method get;