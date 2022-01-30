package Test; /**
 * Created by 土豆烧排骨
 * 2022/1/17 下午 7:14
 */

import com.survey.common.Dbutils;
import com.survey.dao.FirstTitleMapper;
import com.survey.dao.UserMapper;
import com.survey.entity.Admin;
import com.survey.entity.FirstTitle;
import com.survey.entity.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class TestMybatis {
 public static void main(String[] args) throws IOException {
   String resource = "mybatis-config.xml";
   InputStream inputStream = Resources.getResourceAsStream(resource);
   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
   SqlSession sqlSession = sqlSessionFactory.openSession();
   System.out.println(sqlSession);
     SqlSession session = Dbutils.getSqlSession();
     UserMapper mapper = session.getMapper(UserMapper.class);
     User user = mapper.selectUserByNamePwd("2833194.com","123456");
     System.out.println(user);
 }
@Test
    public  void  selectFirstTitleByEid(){
     FirstTitleMapper mapper = Dbutils.getSqlSession().getMapper(FirstTitleMapper.class);
     List<FirstTitle> firstTitles = mapper.selectFirstTitleByEid(1);
     firstTitles.forEach(ft-> System.out.println(ft));

 }

 }


