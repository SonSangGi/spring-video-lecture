package com.jhta.cope.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.cope.dao.ManagerDao;
import com.jhta.cope.vo.User;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	ManagerDao managerDao;

	@Override
	public List<User> getAllUser() throws Exception {		
		return managerDao.getAllUser();
	}

	@Override
	public List<User> getUserByName(String userName) throws Exception {
		return managerDao.getUserByName(userName);
	}

	@Override
	public User getUserByNo(String userNo) throws Exception {
		return managerDao.getUserByNo(userNo);
	}
}