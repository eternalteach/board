package org.zerock.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {

	@Setter(onMethod_= {@Autowired})
	private BoardService service;
	
	// BoardService객체가 제대로 주입이 가능한지 확인하는 작업
	// /.testExist
//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
	// ./testExist

	// mapper의 insertSelectKey를 이용해 나중에 생성된 게시물의 번호를 확인하는 테스트
	// /.testRegister
//	@Test
//	public void testRegister() {
//		BoardVO board=new BoardVO();
//		board.setTitle("새로 작성하는 글");
//		board.setContent("새로 작성하는 내용");
//		board.setWriter("newbie");
//		
//		service.register(board);
//		
//		log.info("생성된 게시물의 번호: " + board.getBno());
//	}
	// ./testRegister
	
	// 목록 가져오는 테스트
	// /.getList
//		@Test
//		public void testGetList() {
//			service.getList().forEach(board->log.info(board));
//		}
	// ./getList
	
	// 읽기 테스트
	// /.read
//	@Test
//	public void testGet() {
//		log.info(service.get(1L));
//	}
	// ./read

	// delete테스트
	// /.testDelete
//	@Test
//	public void testDelete() {
//		log.info("REMOVE RESULT: " + service.remove(2L));
//	}
	// ./testDelete
	
	// 수정 테스트
	// /.testUpdate
//	@Test
//	public void testUpdate() {
//		BoardVO board = service.get(1L);
//		if(board==null) {
//			return;
//		}
//		board.setTitle("제목 수정합니다.");
//		log.info("MODIFY RESULT: " + service.modify(board));
//	}
	// ./testUpdate
	
	// /.test getlist
	@Test
	public void testGetList() {
		service.getList(new Criteria(2,10)).forEach(board -> log.info(board));
	}
	// ./test getlist
	
}
