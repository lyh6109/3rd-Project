package com.cafe24.ourplanners.board.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cafe24.ourplanners.board.domain.BoardVO;
import com.cafe24.ourplanners.board.service.BoardService;
import com.cafe24.ourplanners.util.PagingUtil;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Inject
	private BoardService service;
	
	
/////////////////////////////////////엔지니어 게시판 컨트롤러///////////////////////////////////
	
	@RequestMapping(value = "engineer", method = RequestMethod.GET)
	public String engineerboard() {
		return "board/engineer/board_engineer";
	}
	
	//목록보기
	@RequestMapping(value = "engineer/list", method = RequestMethod.GET)
	public String listEngineerBoard(Model model, HttpServletRequest req) {
		
		List<BoardVO> lists = null;
				
		int pageSize = 10; //한페이지에 출력할 게시물의 개수
		int blockPage = 10; //한 블럭에 표시할 페이지번호의 개수
				
		//페이지 파라미터 처리
		int nowPage = req.getParameter("nowPage")==null ? 1 : Integer.parseInt(req.getParameter("nowPage"));
		
		//뤄리문에서 가져올 start값, end값 구하기
		int start = (nowPage-1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		int totalRecordCount = 0;
				
		try {
			
			totalRecordCount = service.getTotalCount();
			
			//lists = service.list();
			
			lists = service.listPage(start, end);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String pagingDiv = PagingUtil.pagingAjax(totalRecordCount, pageSize, blockPage, nowPage, "");
		
		model.addAttribute("lists", lists);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pagingDiv", pagingDiv);
		
		return "board/engineer/board_engineer_list";
	}
	
	//글읽기
	@RequestMapping(value = "engineer/view", method = RequestMethod.GET)
	public String viewEngineerBoard(Model model, HttpServletRequest req, HttpSession session, HttpServletResponse resp) throws IOException {
		
		
		BoardVO vo = null;
		try {
			vo = service.view(Integer.parseInt(req.getParameter("board_srl")));
			
			vo.setContents(vo.getContents().replace("\r\n", "<br/>"));
			
			service.visitCount(Integer.parseInt(req.getParameter("board_srl")));
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("view", vo);
		
		
		return "board/engineer/board_engineer_view";
	}
		
	//글쓰기 폼 가져오기
	@RequestMapping(value = "engineer/write", method = RequestMethod.GET)
	public String writeEngineerBoard() {
		return "board/engineer/board_engineer_write";
	}
	
	// 글쓰기 처리
	@ResponseBody
	@RequestMapping(value = "engineer/writeAciton", method = RequestMethod.POST)
	public Map<String, Object> writeAction(HttpServletRequest req, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();

		int result = 0;
		if (session.getAttribute("loginUserInfo") == null) {
			map.put("code", "login");
			map.put("message", "로그인 후 작성해주세요");
			return map;
		}
		
		try {
			result = service.write(req);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		if (result <= 0) {
			map.put("code", "FAIL");
			map.put("message", "작성 실패 하였습니다.");
		} else {
			map.put("code", "SUCCESS");
			map.put("message", "글쓰기를 성공하였습니다.");
		}
		
		return map;
	}
	

	//글수정 폼 가져오기
	@RequestMapping(value = "engineer/modify/{board_srl}", method = RequestMethod.GET)
	public String modifyEngineerBoard(@PathVariable Integer board_srl, Model model) {
		try {
			service.modify(board_srl, model);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return "board/engineer/board_engineer_modify";
	}
	
	//글수정 처리
	@ResponseBody
	@RequestMapping(value = "engineer/modifyAction", method = RequestMethod.POST)
	public Map<String, Object> modifyActionEngineerBoard(HttpServletRequest req, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();

		int result = 0;
		if (session.getAttribute("loginUserInfo") == null) {
			map.put("code", "login");
			map.put("message", "로그인 후 수정해주세요");
			return map;
		}
		
		try {
			result = service.modifyAction(req);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		if (result <= 0) {
			map.put("code", "FAIL");
			map.put("message", "수정 실패 하였습니다.");
		} else {
			map.put("code", "SUCCESS");
			map.put("message", "글수정을 성공하였습니다.");
		}
		
		return map;
	}
	
	//삭제 처리
	@ResponseBody
	@RequestMapping(value = "engineer/delete/{board_srl}", method = RequestMethod.POST)
	public Map<String, Object> deleteEngineerBoard(@PathVariable Integer board_srl, HttpSession session){
		Map<String, Object> map = new HashMap<String, Object>();
		
		int result = 0;
		
		if (session.getAttribute("loginUserInfo") == null) {
			map.put("code", "login");
			map.put("message", "로그인 후 삭제해주세요");
			return map;
		}
		
		try {
			result = service.delete(board_srl);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		if (result <= 0) {
			map.put("code", "FAIL");
			map.put("message", "삭제 실패 하였습니다.");
		} else {
			map.put("code", "SUCCESS");
			map.put("message", "삭제 하였습니다.");
		}
		
		return map;
	}
	
	
	
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////의뢰인 게시판 컨트롤러///////////////////////////////////
	
	//목록보기
	@RequestMapping(value = "client", method = RequestMethod.GET)
	public String listClientBoard(Model model) {
		try{
			//service.list();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "board/client/board_client_list";
	}
	
	//글쓰기 폼 가져오기
	@RequestMapping(value = "client", method = RequestMethod.POST)
	public String writeClientBoard() {
		return "board/client/board_client_write";
	}
	//글쓰기 처리
	@RequestMapping(value= "clientAction", method = RequestMethod.POST)
	public void writeClientBoardAction(HttpServletRequest req, HttpServletRequest resp, HttpSession session) throws IOException {
		
	}
	//글수정
	@RequestMapping(value = "client/{boardSrl}", method = RequestMethod.PUT)
	public String modifyClientBoard(@PathVariable String boardSrl) {
		return "board/client/board_client_modify";
	}
	//해당 글 삭제
	@RequestMapping(value = "client/{boardSrl}", method = RequestMethod.DELETE)
	public String deleteClientBoard(@PathVariable String boardSrl) {
		return "board/client/board_client_list";
	}
}
