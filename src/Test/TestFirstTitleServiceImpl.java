/**
 * Created by 土豆烧排骨
 * 2022/1/18 下午 11:22
 */


package Test;

import com.survey.entity.FirstTitle;
import com.survey.entity.Student;
import com.survey.service.impl.FirstTitleServiceImpl;
import com.survey.service.impl.UserServiceImpl;
import org.junit.Test;

import java.util.List;

public class TestFirstTitleServiceImpl {

   @Test
    public  void Test01(){
       FirstTitleServiceImpl firstTitleService = new FirstTitleServiceImpl();
       List<FirstTitle> firstTitles = firstTitleService.listFirstTitle(1);
       System.out.println(firstTitles);
   }
   @Test
   public  void Test02(){
      UserServiceImpl userService = new UserServiceImpl();
      Student student = userService.stuLogin("admin", "admin");
      System.out.println(student);
   }

}
