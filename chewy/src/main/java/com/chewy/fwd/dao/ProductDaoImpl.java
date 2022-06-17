package com.chewy.fwd.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chewy.fwd.service.ProductMapper;
import com.chewy.fwd.vo.CategoryVo;
import com.chewy.fwd.vo.ImgVo;
import com.chewy.fwd.vo.ProductVo;
import com.chewy.fwd.vo.Search;

@Repository
public class ProductDaoImpl implements ProductDao{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ProductVo> productInfo(int p_no) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.productInfo(p_no);
	}

	@Override
	public List<ImgVo> productImg(int p_no) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.productImg(p_no);
	}
	
	@Override
	public List<ProductVo> selectProductList(Search search) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectProductList(search);
	}

	@Override
	public void insertProduct(ProductVo productVo) throws Exception {
		System.out.println("insert productDaoImpl");
		
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		 mapper.insertProduct(productVo);
		
	}

	@Override
	public void updateProduct(ProductVo productVo) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		 mapper.updateProduct(productVo);
	}


	@Override
	public void deleteProduct(ProductVo productVo) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		 mapper.deleteProduct(productVo);
	}


	@Override
	public ProductVo selectProduct(ProductVo productVo) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectProduct(productVo);
	}


	@Override
	public int getProductListCnt(Search search) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.getProductListCnt(search);
	}

	@Override
	public List<CategoryVo> bCategoryList() throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.bCategoryList();
	}

	@Override
	public List<CategoryVo> mCategoryList(Map<String, String> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		
		System.out.println("daoImpl mCategory");
//		String CateCount = CateCount(ct);
//		System.out.println("CateCount : " + CateCount);
		
//		System.out.println("mapper.mCategoryList(CateCount) : " + mapper.mCategoryList(CateCount));
		
//		return mapper.mCategoryList(CateCount);
		
		return mapper.mCategoryList(map);
	}

	@Override
	public List<CategoryVo> sCategoryList(Map<String, String> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		System.out.println("daoImpl sCategory");
		
		return mapper.sCategoryList(map);
	}

	
	
	@Override
	public void addProduct(ProductVo productVo) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		mapper.addProduct(productVo);
		
	}
	
	@Override
	public List<CategoryVo> cateCountList(CategoryVo categoryVo) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		
		
		//categoryVo.setCate(CateCount(categoryVo.getBct_no()));
		
		
		List<CategoryVo> ctList = mapper.cateCountList(categoryVo);
		
		return ctList;
	}
	
	
	public String CateCount(int ct)  {
		String cate = null;
		
		switch (ct) {

		case 1:
			cate = "dog";
			
			break;
			
		case 2:
			cate = "cat";
			break;
			
		case 3:
			cate = "fish";
			break;
		case 4:
			cate = "bird";
			break;
		case 5:
			cate = "smallPet";
			break;
		case 6:
			cate = "reptile";
			break;
		case 7:
			cate = "farm_Animal";
			break;	
		case 8:
			cate = "horse";
			break;
		case 9:
			cate = "pharmacy";
			break;
		case 10:
			cate = "pet_Parents";
			break;
			
		}
		
		return cate;
		
		
	}
	
	@Override
	public List<CategoryVo> selectBCateList() throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectBCateList();	}
	

	@Override
	public List<CategoryVo> selectMCateList(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectMCateList(map);
	}

	@Override
	public List<CategoryVo> selectSCateList(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectSCateList(map);
	}

	@Override
	public int sortByCnt(Search search) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		System.out.println("daoImpl sortBy");
		return mapper.sortByCnt(search);
	}

	@Override
	public List<ProductVo> sortBy(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		System.out.println("DaoImpl sortBy");
		return mapper.sortBy(map);
	}

	@Override
	public List<ProductVo> selectBrandList(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectBrandList(map);
	}
	
	@Override
	public List<ProductVo> selectMBrandList(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectMBrandList(map);
	}
	
	@Override
	public List<ProductVo> selectSBrandList(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectSBrandList(map);
	}
	
	
	
	

	@Override
	public List<ProductVo> selectColCateList(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectColCateList(map);
	}

	@Override
	public List<ProductVo> selectColBDetailList(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectColBDetailList(map);
	}
	
	@Override
	public List<ProductVo> selectColMDetailList(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectColMDetailList(map);
	}
	
	@Override
	public List<ProductVo> selectColSDetailList(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectColSDetailList(map);
	}

	@Override
	public int colBProductCnt(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.colBProductCnt(map);
	}
	
	
	@Override
	public int colProductCnt(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.colProductCnt(map);
	}

	@Override
	public int colSProductCnt(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.colSProductCnt(map);
	}

	@Override
	public List<ProductVo> checkbox(Map<String, Object> map) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.checkbox(map);
	}

//	@Override
//	public List<CategoryVo> selectCateList(Map<String, String> map) throws Exception {
//		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
//		return mapper.selectCateList(map);
//	}


	
	
}
