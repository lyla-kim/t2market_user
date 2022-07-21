package kr.co.T2Market.Member.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.T2Market.domain.MemberVO;
import kr.co.T2Market.mapper.MemberMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {

	@Autowired
	private MemberMapper membermapper;
	
	/*
	@Test
	public void memberJoin() throws Exception {
		MemberVO member = new MemberVO();
		
		member.setMember_id("spring_test");
		member.setPass("spring_test");
		member.setMember_name("spring_test");
		member.setAddress("spring_test");
		member.setAddress2("spring_test");
		member.setAddress3("spring_test");
		member.setEmail("spring_test");
		member.setActive("Y");
		member.setMoney(10000);
		member.setAdminck(0);
		
		membermapper.memberJoin(member);			//쿼리 메서드 실행
	}
	
	*/
	
	//아이디 중복 검사
//	@Test
//	public void memberIdChk() throws Exception{
//		String id = "member3"; //존재하는 아이디
//		String id2 = "testadmin"; //존재하지 않는 아이디
//		
//		membermapper.idCheck(id);
//		membermapper.idCheck(id2);
//	}
	
	
	/* 로그인 쿼리 mapper 메서드 테스트 */
    @Test
    public void memberLogin() throws Exception{
        
        MemberVO member = new MemberVO();    // MemberVO 변수 선언 및 초기화
        
        /* 올바른 아이디 비번 입력경우 */
//        member.setMember_id("member3");
//        member.setPass("123456");
        
        /* 올바른 않은 아이디 비번 입력경우 */
        member.setMember_id("test184693");
        member.setPass("test13681");
        
        membermapper.memberLogin(member);
        System.out.println("결과 값 : " + membermapper.memberLogin(member));
        
    }
    
}