package kr.or.ddit.servlet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * welcome Page를 로드하기 위한 서블릿.
 * @author PC-2
 *
 */
@Controller
@RequestMapping("/index.do")
public class IndexController {
	@GetMapping
	public String indexPage() {
	
		return "index"; 
		
	}
}
