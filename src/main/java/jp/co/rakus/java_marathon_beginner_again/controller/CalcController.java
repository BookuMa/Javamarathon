package jp.co.rakus.java_marathon_beginner_again.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.rakus.java_marathon_beginner_again.domain.Number;

@Controller
@RequestMapping("/calc-controller")
public class CalcController {
	@ModelAttribute
	public InputValueForm setUpForm() { 
		return new InputValueForm();
	}
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("/view-page")
	public String viewPage() {
		return "inputnumbers";
	}
	
	
	
	@RequestMapping("/calc")
	public String calc(InputValueForm form){
		int num1 = Integer.parseInt(form.getNum1());
		int num2 = Integer.parseInt(form.getNum2());
		int answer = num1 * num2;
		
		Number number = new Number();
		number.setNum1(num1);
		number.setNum2(num2);
		number.setResult(answer);
		
		session.setAttribute("number", number);
		
		return "outputnumber";
	}
	
	@RequestMapping("/calc2")
	public String calc2(){
		return "outputnumber2";
	}
}
