package kr.co.T2Market.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.T2Market.domain.MemberVO;
import kr.co.T2Market.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper membermapper;
	
	@Override
	public void memberJoin(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
		
		membermapper.memberJoin(member);
	}
	
	@Override
	public int idCheck(String member_id) throws Exception {
		
		return membermapper.idCheck(member_id);
	}
	
	/* 로그인 */
    @Override
    public MemberVO memberLogin(MemberVO member) throws Exception {
        
        return membermapper.memberLogin(member);
    }
    
    /* 주문자 정보 */
	@Override
	public MemberVO getMemberInfo(String member_id) {
		
		return membermapper.getMemberInfo(member_id);
		
	}

}
