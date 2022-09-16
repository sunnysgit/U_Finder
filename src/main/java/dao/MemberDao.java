package dao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.Member;

public class MemberDao {
	
	// 싱글턴 객체 생성
	private static MemberDao instance = new MemberDao();
	
	// 유일한 생성자 private으로 객체생성 막음
	private MemberDao() {
	}
	
	// 싱글턴 객체 얻기(부르기)
	public static MemberDao getInstance() {
		return instance;
	}
	
	// mybatis 사용할 객체
	private static SqlSession session;
	
	static {	// 클래스 초기화 블럭
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
		}catch (Exception e) {
			System.out.println("초기화 에러 " + e.getMessage());
		}
	}
	// joinResult, confirmId, loginResult
	public Member select(String id) {
		return (Member) session.selectOne("memberns.select", id);
	}
	
	// confirmNick_nm
	public Member confirmNick(String nickname) {
		return (Member) session.selectOne("memberns.confirmNick", nickname);
	}
	// joinResult, 
	public int insert(Member member) {
		return session.insert("memberns.insert", member);
	}

}
