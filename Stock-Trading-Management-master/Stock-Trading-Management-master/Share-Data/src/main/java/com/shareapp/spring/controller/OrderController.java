package com.shareapp.spring.controller;

import com.shareapp.spring.service.CommisionService;
import com.shareapp.spring.service.Jdbc;
import com.shareapp.spring.service.OrderService;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.shareapp.spring.dao.OrderRepository;
import com.shareapp.spring.model.Order;

import javax.servlet.http.HttpServletRequest;
import java.net.URL;
import java.sql.SQLException;
import java.util.List;

@Controller
@SessionAttributes("found")
public class OrderController {

	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderRepository orderRepository;
	@Autowired
	private CommisionService commisionService;


//	DATA IN JSON FORMAT
//	@RequestMapping(value="/orders",method=RequestMethod.GET)
//	@ResponseBody
//	public List<Order> orderDisplay(ModelMap model) {
//		model.put("orders",orderRepository.findAll());
//		return orderRepository.findAll();
//	}

//	@RequestMapping(value="/orders",method=RequestMethod.GET)
//	public String orderDisplay(ModelMap model, HttpServletRequest request) {
//		String result = SessionAlive.redirectPage(model,request);
//		String redirectPage;
//		if(result=="")
//			redirectPage=result;
//		else
//			return result;
//
//
//		String query="select * from orders o,register r,shares s where o.user_id="+{""};
//
//
//
//		model.put("showorder",orderRepository.findAll());
//		return redirectPage;
//	}
@RequestMapping(value="/orders",method=RequestMethod.GET)
public String orderDisplay(ModelMap model,HttpServletRequest request) {
	List<Order> orderList=orderService.ShowOrderList(request);
//	for(Order o:orderList) {
//		System.out.println(o.getShare_id());
//		System.out.println(o.getShare_name());
//		System.out.println(o.getQuantity());
//		System.out.println(o.getShare_price());
//	}
	model.put("orderList",orderList);
	return "sell";
}

	@RequestMapping(value="/sell_shares",method=RequestMethod.GET)
	public String sell_summary(ModelMap model, @RequestParam(name="share_name") String share_name,@RequestParam(name="quantity") String quantity,@RequestParam(name="price") String price,@RequestParam(name="share_id") int share_id) {
		Order order=new Order();
		order.setShare_name(share_name);
		order.setShare_price(Double.parseDouble(price));
		order.setQuantity(Integer.parseInt(quantity));
		order.setShare_id(share_id);
		model.put("order",order);
		return "sell_page";
	}

	@RequestMapping(value="/sell",method = RequestMethod.POST)
	public String sellShare(HttpServletRequest request,@RequestParam("share_name") String shareName, @RequestParam("price") Double price,@RequestParam("quantity") int quantity,@RequestParam("share_id") int share_id) {
		try {
			orderService.sell_share(share_id,quantity,request);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

		return "redirect:/orders";
	}

	@RequestMapping(value="/purchase", method=RequestMethod.POST)
	public String purchaseShare(HttpServletRequest request,@RequestParam("quantity") int quantity,@RequestParam("id") int share_id) {
		System.out.println("xxx");
		System.out.println(quantity);
		System.out.println(share_id);
		try
		{
			orderService.purchase(share_id,quantity,request);
		}
		catch(SQLException e)
		{
			throw new RuntimeException(e);
		}

		return "redirect:/orders";

	}
////	@RequestMapping(value="/calculateCost",method = RequestMethod.POST)
//	public String calculateShareCost(@ModelAttribute("order") Order order,ModelMap model, BindingResult bindingResult, HttpServletRequest request) throws SQLException {
//		String result = SessionAlive.redirectPage(model,request);
//		String redirectPage = result==""? "orderlist":result;
//		Share share = (Share) model.getAttribute("found");
//		model.put("found",share);
//		// sql query execution
//
//		String q="select s.name,s.price from share s,orders o where s.id=o.id and o.user_id =;";
//		Connection connection= Jdbc.JdbcConnect();
//		Statement st = connection.createStatement();
//		ResultSet rs =st.executeQuery(q);
////		System.out.println(order.getQuantity());
////		order.setOrdername(share.getName());
////		order.setOrderprice(share.getPrice());
////		order.setCategory(category);
////		order.setQuantity(quantity);
////		if(order.getCategory().equalsIgnoreCase("buy"))
////			orderRepository.save(order);
//
//
////		double cost = orderService.calculateCost(share,order,order.getCategory());
////		model.addAttribute("cost", "Your "+order.getCategory()+ " share equivalent cost is : "+String.format("%.2f",cost)+"/-");
////		model.addAttribute("price",cost);
//		return "result";
//	}
//
//	@RequestMapping(value="/commision", method=RequestMethod.GET)
//	public String calculateCommision(@RequestParam double price,ModelMap model) {
//		double commision = commisionService.calculateCommision(price);
//		model.addAttribute("commision","Brokers Commision is: "+String.format("%.2f",commision));
//		return "result";
//	}
}
