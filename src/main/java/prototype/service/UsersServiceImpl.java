package prototype.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import prototype.dao.UsersDao;
import prototype.model.Users;

@Service
public class UsersServiceImpl implements UsersService{

	@Autowired
	private UsersDao udao;
	
	public int insert(Users users) {
		return udao.insert(users);
	}


}
