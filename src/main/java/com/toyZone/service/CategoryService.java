package com.toyZone.service;

import java.util.List;

import com.toyZone.dto.CategoryDto;

public interface CategoryService {
<<<<<<< HEAD
	List<CategoryDto> viewAllService();
	CategoryDto saveCategoryService(CategoryDto categoryDto);
	String deleteCategoryService(Integer id);
	Object[] viewPageCategoryService(int offset, int limit);
	CategoryDto findByIdCategoryService(Integer id);
	Object[] findFilterCategoryService(String[] filter);
=======
    List<CategoryDto> viewAllService();

    CategoryDto saveCategoryService(CategoryDto categoryDto);

    String deleteCategoryService(Integer id);

    Object[] viewPageCategoryService(int offset, int limit);

    CategoryDto findByIdCategoryService(Integer id);

    Object[] findFilterCategoryService(String[] filter);
>>>>>>> develop
}