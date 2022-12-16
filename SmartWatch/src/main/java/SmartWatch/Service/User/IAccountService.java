package SmartWatch.Service.User;

import SmartWatch.Entity.Users;

public interface IAccountService {
	public int AddAccount(Users user);
	
	public Users CheckAccount(Users user);
}
