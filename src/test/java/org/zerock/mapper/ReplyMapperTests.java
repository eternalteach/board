package org.zerock.mapper;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {
	private Long[] bnoArr = { 622634L, 622633L, 622632L };
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;


	// /. insert test

	@Test
	public void testCreat() {
		IntStream.rangeClosed(1, 10).forEach(i -> {
			ReplyVO vo = new ReplyVO();
			// 게시물의 번호
			vo.setBno(bnoArr[i % 3]);
			vo.setReply("댓글 테스트 " + i);
			vo.setReplyer("replyer" + i);
			mapper.insert(vo);
		});
	}
	// ./ insert test

	@Test
	public void testMapper() {
		log.info(mapper);
	}
	
	@Test
	public void testRead() {
		Long targetRno=5L;
		ReplyVO vo=mapper.read(targetRno);
		log.info(vo);
	}
	
	@Test
	public void testDelete() {
		Long targetRno=1L;
		mapper.delete(targetRno);
	}
	
	@Test
	public void testUpdate() {
		Long targetRno=10L;
		ReplyVO vo = mapper.read(targetRno);
		vo.setReply("UPDATE REPLY");
		int count = mapper.update(vo);
		log.info("update count:" + count);
	}
	
	@Test
	public void testList() {
		Criteria cri=new Criteria();
		List<ReplyVO> replies = mapper.getListWithPaging(cri, bnoArr[0]);
		replies.forEach(reply -> log.info(reply));
	}
	
	@Test
	public void testList2() {
		Criteria cri = new Criteria(2,10);
		List<ReplyVO> replies=mapper.getListWithPaging(cri, 622634L);
		replies.forEach(reply->log.info(reply));
	}
}
