package site.nicezo.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.HtmlUtils;

import site.nicezo.dto.Board;
import site.nicezo.dto.Member;
import site.nicezo.service.BoardService;
import site.nicezo.util.Pager;

@Controller
public class BoardController {
	@Autowired
	private WebApplicationContext context;
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/notice")
	public String noticeBoard() {
		return "board/notice";
	}
	
	@RequestMapping("/qna")
	public String qnaBoard() {
		return "board/qna";
	}
	
	@RequestMapping("/event")
	public String eventBoard() {
		return "board/event";
	}
	
	@RequestMapping("/board_manager")
	public String boardManager(@RequestParam int category, Model model, HttpSession session) {
		model.addAttribute("category", category);
		return "board/board_manager";
	}
	
	@RequestMapping(value = "/board_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> boardList(@RequestParam(defaultValue = "1") int pageNum, 
			@RequestParam int category) {
		int totalBoard=boardService.getBoardCount(category);
		int pageSize=10;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		pagerMap.put("category", category);

		Map<String, Object> returnMap=new HashMap<String, Object>();
		List<Board> boardList = boardService.getBoardList(pagerMap);
		for(Board board : boardList) {
			board.setRegdate(board.getRegdate().substring(0,10));
		}
		returnMap.put("boardList", boardList);
		returnMap.put("pager", pager);
		
		return returnMap;
	}
	
	@RequestMapping(value = "/board_add", method = RequestMethod.POST)
	public String boardAdd(@ModelAttribute Board board,@RequestParam(name="file",required=false) MultipartFile file,Model model) throws IllegalStateException, IOException {
	
		
		String uploadDir = context.getServletContext().getRealPath("/resources/b_image");
		
		String upload = System.currentTimeMillis()+"";
		
		board.getFile().transferTo(new File(uploadDir, upload));
		
		board.setImage(upload);
		
		board.setContent(HtmlUtils.htmlEscape(board.getContent()));
		if (file.isEmpty()) {
			model.addAttribute("msg","이미지 파일을 선택해주세요!");
			return  "board/notice";
		}else if(board.getSubject().equals("")) {
			model.addAttribute("msg","제목을 입력해주세요!");
			return "board/notice";
		}
		boardService.addBoard(board); 
		System.out.println(board.getSubject());
		return "board/notice";							
		
	}
	
	@RequestMapping(value = "/board_view/{num}", method = RequestMethod.GET)
	public String noticeView(@PathVariable int num, Model model) {
		boardService.updateReadCount(num);
		Board board = boardService.getBoard(num);
		board.setRegdate(board.getRegdate().substring(0,10));
		model.addAttribute("board", board);
		return "board/board_view";
	}

	@RequestMapping(value = "/board_modify/{num}", method = RequestMethod.GET)
	public String boardModify(@PathVariable int num, Model model) {
		model.addAttribute("board", boardService.getBoard(num));
		return "board/board_modify";
	}
	
	@RequestMapping(value = "/board_update", method = RequestMethod.POST)
	public String boardUpdate(@ModelAttribute Board board, @RequestParam String currentImage) {
		if(board.getImage()==null || board.getImage().equals("")) {
			board.setImage(currentImage);
		}
		boardService.modifyBoard(board);
		if(board.getCategory() == 1) return "board/notice";
		return "board/event";
	}
	
	@RequestMapping("/board_remove/{num}")
	@ResponseBody
	public String boardRemove(@PathVariable int num) {
		boardService.removeBoard(num);
		return "success";
	}
}



























