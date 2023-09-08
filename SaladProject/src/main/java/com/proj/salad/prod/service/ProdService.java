package com.proj.salad.prod.service;

import com.proj.salad.prod.vo.NutrientVO;
import com.proj.salad.prod.vo.ProdVO;
import org.springframework.dao.DataAccessException;

import java.util.List;

/* 김동혁: ProdService 추가 및 수정 (23.07.17) */
public interface ProdService {
	public List<ProdVO> selectProdList() throws DataAccessException;

	public NutrientVO selectProdNutrient(int prodNum) throws DataAccessException;
}
