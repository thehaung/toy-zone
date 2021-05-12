package com.toyZone.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.toyZone.dto.ProductOrderDto;
import com.toyZone.model.ProductOrder;
import com.toyZone.repository.ProductOrderRepo;
import com.toyZone.service.ProductOrderService;

@Service
public class ProductOrderServiceImpl implements ProductOrderService {
<<<<<<< HEAD
	@Autowired
	ProductOrderRepo productOrderRepo;
	@Override
	public void saveProductOderService(ProductOrderDto productOrderDto) {
		// TODO Auto-generated method stub
		ProductOrder productOrder = productOrderDto.convertToEntitiy();
		
		productOrderRepo.insert(productOrder);
		
	}
	@Override
	public List<ProductOrderDto> getListProductOrderDtoByOrder(Integer idOrder) {
		// TODO Auto-generated method stub
		List<ProductOrderDto> productOrderDtos = new ArrayList<ProductOrderDto>();
		
		Map<String, Object> property = new HashMap<String, Object>();
		property.put("odder_id", idOrder);
		
		List<ProductOrder> productOrders =(List<ProductOrder>) (productOrderRepo.findByProperty(property, null, null, null, null, null)[1]);
		for(ProductOrder entity : productOrders) {
			productOrderDtos.add(entity.convertToDto());
		}
		return productOrderDtos;
	}
	
=======
    @Autowired
    ProductOrderRepo productOrderRepo;

    @Override
    public void saveProductOderService(ProductOrderDto productOrderDto) {
        // TODO Auto-generated method stub
        ProductOrder productOrder = productOrderDto.convertToEntitiy();

        productOrderRepo.insert(productOrder);

    }

    @Override
    public List<ProductOrderDto> getListProductOrderDtoByOrder(Integer idOrder) {
        // TODO Auto-generated method stub
        List<ProductOrderDto> productOrderDtos = new ArrayList<ProductOrderDto>();

        Map<String, Object> property = new HashMap<String, Object>();
        property.put("odder_id", idOrder);

        List<ProductOrder> productOrders = (List<ProductOrder>) (productOrderRepo.findByProperty(property, null, null, null, null, null)[1]);
        for (ProductOrder entity : productOrders) {
            productOrderDtos.add(entity.convertToDto());
        }
        return productOrderDtos;
    }

>>>>>>> develop
}
