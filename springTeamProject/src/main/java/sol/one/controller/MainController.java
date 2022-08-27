package sol.one.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import sol.one.VO.replyVO;

@Controller
@RequestMapping("/member")
public class MainController {

	
	
	@GetMapping("/main")
	public void main(Model model) {
		replyVO vo = new replyVO();
		vo.setUser_id(1);
		vo.setProduct_id(1);
		
		model.addAttribute("vo",vo);
	}
}