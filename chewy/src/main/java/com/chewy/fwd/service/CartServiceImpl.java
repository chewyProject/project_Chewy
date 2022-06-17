package com.chewy.fwd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chewy.fwd.dao.CartDao;
import com.chewy.fwd.dao.ProductDao;
import com.chewy.fwd.vo.CartVo;
import com.chewy.fwd.vo.ProductVo;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDao cartDao;
	
	@Autowired
	private ProductDao productDao;

	@Override
	public int memberCheck(CartVo cartVo) throws Exception {
		int status = 0;
		
		if(cartDao.memberCheck(cartVo).size() > 0 ) {
			status = 200;
		} else {
			status = 400;
		}
		
		return status;
	}
	
	@Override
	public List<CartVo> saveMemeberInfo(CartVo cartVo) throws Exception {
		return cartDao.memberCheck(cartVo);
	}

	@Override
	public List<ProductVo> selectCartList(int p_no) throws Exception {
		
		return productDao.productInfo(p_no);
	}

	@Override
	public void itemDelete(int p_no) throws Exception {
		
		cartDao.itemDelete(p_no);
	}

}
