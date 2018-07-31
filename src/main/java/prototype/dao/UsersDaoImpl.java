package prototype.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import prototype.model.Users;

@Repository
public class UsersDaoImpl implements UsersDao{
	@Autowired
	private SqlSessionTemplate sst;
	
	public int insert(Users users) {
		int result= sst.insert("usersns.insert",users);
		return result;
	}
}
