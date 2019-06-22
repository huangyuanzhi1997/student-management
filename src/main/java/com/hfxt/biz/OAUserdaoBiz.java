package com.hfxt.biz;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hfxt.pojo.OAClass;
import com.hfxt.pojo.OAStudent;
import com.hfxt.pojo.UserOA;

public interface OAUserdaoBiz {
	//OA页面登录
	public UserOA OaLogin(@Param("username")String username,@Param("password")String password);
	//Student信息查询
	public List<OAStudent> getSelectMess(@Param("text1")String text1,@Param("text2")String text2);
	//Student信息删除
	int deleteStudent(Integer id);
	//Student信息添加
	int saveStudent(OAStudent oaStudent);
	//修改传值
	public OAStudent getupdate(@Param("id")Integer id);
	 //修改Student
    int updateStudent(OAStudent id);
   //Class班级查询
  	public List<OAClass> ClassSelect(@Param("text3")String text3,@Param("text4")String text4);
  	 //Class班级删除
  	int deleteClass(@Param("id")Integer id);
  	//Class班级添加
  	int saveClass(OAClass oaClass);
  	//Class班级修改传值
    public OAClass getupdateOAClass(@Param("id")Integer id);
      //Class班级修改
    int updateClass(OAClass id);
    //密码修改
    int UserOAs(UserOA id);
   //User表查询
    /*public UserOA getUser(Integer id);*/
}
