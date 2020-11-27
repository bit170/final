package com.spring.biz.view.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {

	@RequestMapping("/order-tracking.do")
	public String orderTracking() {
		return "order/order-tracking";
	}
}
