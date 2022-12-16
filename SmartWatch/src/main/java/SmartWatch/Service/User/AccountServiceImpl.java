package SmartWatch.Service.User;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SmartWatch.Dao.UsersDao;
import SmartWatch.Entity.Users;
@Service
public class AccountServiceImpl implements IAccountService {
	@Autowired
	UsersDao usersDao =new UsersDao();
	
	public int AddAccount(Users user) {
		
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		return usersDao.AddAccount(user);
	}

}
