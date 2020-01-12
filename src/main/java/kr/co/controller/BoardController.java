package kr.co.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.BoardService;
import kr.co.vo.BoardVO;

import java.util.regex.Pattern;
@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	public static boolean isEmail(String email) {
	        if (email==null) return false;
	        boolean b = Pattern.matches(
	            "[\\w\\~\\-\\.]+@[\\w\\~\\-]+(\\.[\\w\\~\\-]+)+", 
	            email.trim());
	        return b;
	   }
	@Inject
	BoardService service;
	// 자세히 보면 method가  GET이면 model.addAttribute로 추가하고
	// method가 POST면 service.write()로 method를 바로 실행시켜서
	// DB로 접근해서 data를 처리한다!
	// 게시판 글 작성 화면
	@RequestMapping(value = "/board/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("writeView");
	}

	// 게시판 글 작성
	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
	public String write(BoardVO boardVO) throws Exception{
		logger.info("write");
		if(boardVO.getEmail()==""||boardVO.getPassword()==""||boardVO.getTitle()==""||boardVO.getContent()=="") {
			return "redirect:/board/list";
		}
		if(isEmail(boardVO.getEmail())) {
			service.write(boardVO);
		}
		return "redirect:/board/list";
	}
	
	// 게시판 조회
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(BoardVO boardVO, Model model) throws Exception{
		logger.info("read");
		//readView.jsp에 있는 read가 바로 이 read다.
		//model을 만들어놓고 read라는 이름으로 service.read()의 값을 넣는다.
		//마치 ServletConext에서 setAttribute(키,값);과 같다고 볼 수 있다.
		model.addAttribute("read", service.read(boardVO.getBno()));
			
		return "board/readView";
	}
	
	//게시판 목록 조회
	@RequestMapping(value = "/list",method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("list");
		model.addAttribute("list",service.list());
		return "board/list";
	}
	// 게시판 수정뷰
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(BoardVO boardVO, Model model) throws Exception{
		logger.info("updateView");
		//update실행!
		model.addAttribute("update", service.read(boardVO.getBno()));
		
		return "board/updateView";
	}
	
	// 게시판 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(BoardVO boardVO) throws Exception{
		logger.info("update");
		service.update(boardVO);
		return "redirect:/board/list";
	}

	// 게시판 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(BoardVO boardVO) throws Exception{
		logger.info("delete");
		
		service.delete(boardVO.getBno());
		
		return "redirect:/board/list";
	}
}