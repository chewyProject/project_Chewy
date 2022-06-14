package com.chewy.fwd.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chewy.fwd.dao.ProductDao;
import com.chewy.fwd.vo.CategoryVo;
import com.chewy.fwd.vo.ImgVo;
import com.chewy.fwd.vo.ProductVo;
import com.chewy.fwd.vo.Search;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDao productDao;

	@Override
	public List<ProductVo> productInfo(ProductVo productVo) throws Exception {
		return productDao.productInfo(productVo.getP_no());
	}

	@Override
	public List<ImgVo> productImg(int p_no) throws Exception {
		return productDao.productImg(p_no);
	}
	
	@Override
	public List<ProductVo> selectProductList(Search search) throws Exception {
		System.out.println("serviceImpl selectProductList");
		return productDao.selectProductList(search);
	}

	@Override
	public void insertProduct(ProductVo productVo) throws Exception {
		System.out.println("productServiceImpl");
		
		productDao.insertProduct(productVo);
		 
	}

	@Override
	public void updateProduct(ProductVo productVo) throws Exception {
		 productDao.updateProduct(productVo);
	}

	@Override
	public void deleteProduct(ProductVo productVo) throws Exception {
		 productDao.deleteProduct(productVo);
	}

	@Override
	public ProductVo selectProduct(ProductVo productVO) throws Exception {
		return productDao.selectProduct(productVO);
	}

	@Override
	public int getProductListCnt(Search search) throws Exception {
		return productDao.getProductListCnt(search);
	}

	@Override
	public List<CategoryVo> bCategoryList() throws Exception {
		return productDao.bCategoryList();
	}

	@Override
	public List<CategoryVo> mCategoryList(Map<String, String> map) throws Exception {
		return productDao.mCategoryList(map);
	}

	@Override
	public List<CategoryVo> sCategoryList(Map<String, String> map) throws Exception {
		return productDao.sCategoryList(map);
	}

	
	
	@Override
	public void addProduct(ProductVo productVo) throws Exception {
		productDao.addProduct(productVo);
	}

	@Override
	public List<CategoryVo> cateCountList(CategoryVo categoryVo) throws Exception {
		return productDao.cateCountList(categoryVo);
	}

	@Override
	public List<CategoryVo> selectBCateList() throws Exception {
		return productDao.selectBCateList();
	}
	
	@Override
	public List<CategoryVo> selectMCateList() throws Exception {
		return productDao.selectMCateList();
	}

	@Override
	public List<CategoryVo> selectSCateList() throws Exception {
		return productDao.selectSCateList();
	}

	@Override
	public int sortByCnt(Search search) throws Exception {
		return productDao.sortByCnt(search);
	}

	@Override
	public List<ProductVo> sortBy(Map<String, Object> map) throws Exception {
		System.out.println("serviceImpl sortBy");
		return productDao.sortBy(map);
	}

	@Override
	public List<ProductVo> selectBrandList() throws Exception {
		return productDao.selectBrandList();
	}
	
	@Override
	public List<ProductVo> selectMBrandList(Map<String, Object> map) throws Exception {
		return productDao.selectMBrandList(map);
	}
	
	@Override
	public List<ProductVo> selectSBrandList(Map<String, Object> map) throws Exception {
		return productDao.selectSBrandList(map);
	}
	
	

	@Override
	public List<ProductVo> selectColCateList(Map<String, Object> map) throws Exception {
		
		return productDao.selectColCateList(map);
	}

	@Override
	public List<ProductVo> selectColBDetailList(Map<String, Object> map) throws Exception {
		return productDao.selectColBDetailList(map);
	}
	
	@Override
	public List<ProductVo> selectColMDetailList(Map<String, Object> map) throws Exception {
		return productDao.selectColMDetailList(map);
	}

	@Override
	public List<ProductVo> selectColSDetailList(Map<String, Object> map) throws Exception {
		return productDao.selectColSDetailList(map);
	}

	@Override
	public int colBProductCnt(Map<String, Object> map) throws Exception {
		return productDao.colBProductCnt(map);
	}

	
	@Override
	public int colProductCnt(Map<String, Object> map) throws Exception {
		return productDao.colProductCnt(map);
	}

	@Override
	public int colSProductCnt(Map<String, Object> map) throws Exception {
		return productDao.colSProductCnt(map);
	}

	@Override
	public List<ProductVo> checkbox(Map<String, Object> map) throws Exception {
		return productDao.checkbox(map);
	}


	

//	@Override
//	public List<CategoryVo> selectCateList(Map<String, String> map) throws Exception {
//		return productDao.selectCateList(map);
//	}
	
	
	
	
	
	
}
