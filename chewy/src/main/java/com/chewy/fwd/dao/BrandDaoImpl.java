package com.chewy.fwd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chewy.fwd.service.BrandMapper;
import com.chewy.fwd.vo.BrandVo;
import com.chewy.fwd.vo.CategoryVo;

@Repository
public class BrandDaoImpl implements BrandDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<BrandVo> popular(int ct) throws Exception {
		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

		BrandVo brandVo = new BrandVo();
		
		brandVo.setB_name(bct(ct));
		
		return mapper.popular(brandVo);
	}

	public List<BrandVo> alphabet(String alphabet, int ct) throws Exception {
		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);
		
		BrandVo brandVo = new BrandVo();
		
		brandVo.setB_name(alphabet);
		brandVo.setBct(bct(ct));
		
		List<BrandVo> alpha = null;
		
		switch (brandVo.getB_name()) {
		case "a":
		case "b":
		case "c":
		case "d":
		case "e":
		case "f":
		case "g":
		case "h":
		case "i":
		case "j":
		case "k":
		case "l":
		case "m":
		case "n":
		case "o":
		case "p":
		case "q":
		case "r":
		case "s":
		case "t":
		case "u":
		case "v":
		case "w":
		case "x":
		case "y":
		case "z":
			
			alpha = mapper.alphabet(brandVo);
			
			break;
		}
		return alpha;
	}
	
	public String bct(int ct) {
		
		String bCt = null;
		
		switch(ct) {
			
			case 1: 
				bCt =  "Dog";
				
				break;
			case 2:
				bCt = "Cat";
				
				break;
			case 3:
				bCt = "Fish";

				break;
				
			case 4:
				bCt = "Bird";

				break;
				
			case 5:
				bCt = "SmallPet";

				break;
				
			case 6:
				bCt = "Reptile";

				break;
				
			case 7:
				bCt = "Farm_animal";

				break;
				
			case 8:
				bCt = "Horse";

				break;
				
			case 9:
				bCt = "Pharmacy";

				break;
				
			case 10:
				bCt = "Pet_parents";

				break;
		}
		
		return bCt;
	}
	
	
	public List<CategoryVo> big() throws Exception {
		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);
		return mapper.big();
	}
	
	public List<CategoryVo> medium(int ct) throws Exception {
		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);
		
		String bct = bct(ct);
			
		return mapper.medium(bct);
		
	}
	
	public String bctName(int ct) throws Exception {
		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);
		
		return mapper.bctName(ct);
	}
	
	public List<CategoryVo> foodSelect(CategoryVo categoryVo) throws Exception {
		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);
		
		if(categoryVo.getBct_no() == 4) {
			categoryVo.setMct_no(33);
		} else if(categoryVo.getBct_no() == 6) {
			categoryVo.setMct_no(45);
		} else if(categoryVo.getBct_no() == 8){
			categoryVo.setMct_no(31);
		} else {
			categoryVo.setMct_no(1);
		}
		
		List<CategoryVo> cateVo = mapper.foodNo(categoryVo);
		
		for(int i=0; i<cateVo.size(); i++) {
			categoryVo.setSize(i);
			
			cateVo.get(i).setBct_no(categoryVo.getBct_no());
			
			cateVo.get(i).setMct_no(categoryVo.getMct_no());
			
			cateVo.get(i).setSct_name(mapper.foodSelect(categoryVo));
			
		}
		
		return cateVo;
	}
	
	public List<CategoryVo> treatsSelect(CategoryVo categoryVo) throws Exception {
		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);
		
		if(categoryVo.getBct_no()==1) {
			categoryVo.setMct_no(2);
		} else if(categoryVo.getBct_no()==2) {
			categoryVo.setMct_no(20);
		} else if(categoryVo.getBct_no()==3) {
			categoryVo.setMct_no(25);
		}
		
		List<CategoryVo> cateVo = mapper.foodNo(categoryVo);
		
		for(int i=0; i<cateVo.size(); i++) {
			categoryVo.setSize(i);
			
			cateVo.get(i).setBct_no(categoryVo.getBct_no());
			
			cateVo.get(i).setMct_no(categoryVo.getMct_no());
			
			cateVo.get(i).setSct_name(mapper.treatsSelect(categoryVo));
			
		}
		
		return cateVo;
	}
	
	public List<CategoryVo> supSelect(CategoryVo categoryVo) throws Exception {
		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);
		
		List<CategoryVo> cateVo = mapper.supNo(categoryVo);
		
		for(int i=0; i<cateVo.size(); i++) {
			categoryVo.setSize(i);
			
			cateVo.get(i).setBct_no(categoryVo.getBct_no());
			cateVo.get(i).setMct_name(mapper.supSelect(categoryVo));
			
		}
		
		return cateVo;
	}
	
	public String bctAd(int bctNo) throws Exception {
		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);
		
		return mapper.bctAd(bctNo);
	}
	
	public List<CategoryVo> shopall(CategoryVo categoryVo) throws Exception {
		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);
		
		List<CategoryVo> cateVo = mapper.shopby(categoryVo);
		
 		for(int i=0; i<cateVo.size(); i++) {
			categoryVo.setMct_no(cateVo.get(i).getMct_no());
			
			cateVo.get(i).setBct_no(categoryVo.getBct_no());
			cateVo.get(i).setMct_name(mapper.shopbyall(categoryVo));
		}
		
		return cateVo;
	}
	
	public List<CategoryVo> shopS(CategoryVo categoryVo) throws Exception {
		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);
		
		if(categoryVo.getBct_no() == 5) {
			categoryVo.setMct_no(39);
		} else if(categoryVo.getBct_no() == 8) {
			categoryVo.setMct_no(62);
		}
		
		List<CategoryVo> cateVo = mapper.foodNo(categoryVo);
		
		for(int i=0; i<cateVo.size(); i++) {
			categoryVo.setSize(i);
			
			cateVo.get(i).setBct_no(categoryVo.getBct_no());
			
			cateVo.get(i).setMct_no(categoryVo.getMct_no());
			
			cateVo.get(i).setSct_name(mapper.foodSelect(categoryVo));
		}
		
		return cateVo;
	}
}
