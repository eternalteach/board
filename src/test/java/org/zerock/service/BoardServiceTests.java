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
	
	// BoardService��ü�� ����� ������ �������� Ȯ���ϴ� �۾�
	// /.testExist
//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
	// ./testExist

	// mapper�� insertSelectKey�� �̿��� ���߿� ������ �Խù��� ��ȣ�� Ȯ���ϴ� �׽�Ʈ
	// /.testRegister
//	@Test
//	public void testRegister() {
//		BoardVO board=new BoardVO();
//		board.setTitle("���� �ۼ��ϴ� ��");
//		board.setContent("���� �ۼ��ϴ� ����");
//		board.setWriter("newbie");
//		
//		service.register(board);
//		
//		log.info("������ �Խù��� ��ȣ: " + board.getBno());
//	}
	// ./testRegister
	
	// ��� �������� �׽�Ʈ
	// /.getList
//		@Test
//		public void testGetList() {
//			service.getList().forEach(board->log.info(board));
//		}
	// ./getList
	
	// �б� �׽�Ʈ
	// /.read
//	@Test
//	public void testGet() {
//		log.info(service.get(1L));
//	}
	// ./read

	// delete�׽�Ʈ
	// /.testDelete
//	@Test
//	public void testDelete() {
//		log.info("REMOVE RESULT: " + service.remove(2L));
//	}
	// ./testDelete
	
	// ���� �׽�Ʈ
	// /.testUpdate
//	@Test
//	public void testUpdate() {
//		BoardVO board = service.get(1L);
//		if(board==null) {
//			return;
//		}
//		board.setTitle("���� �����մϴ�.");
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
