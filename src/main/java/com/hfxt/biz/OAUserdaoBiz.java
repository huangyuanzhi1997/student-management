package com.hfxt.biz;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hfxt.pojo.OAClass;
import com.hfxt.pojo.OAStudent;
import com.hfxt.pojo.UserOA;

public interface OAUserdaoBiz {
	//OAҳ���¼
	public UserOA OaLogin(@Param("username")String username,@Param("password")String password);
	//Student��Ϣ��ѯ
	public List<OAStudent> getSelectMess(@Param("text1")String text1,@Param("text2")String text2);
	//Student��Ϣɾ��
	int deleteStudent(Integer id);
	//Student��Ϣ���
	int saveStudent(OAStudent oaStudent);
	//�޸Ĵ�ֵ
	public OAStudent getupdate(@Param("id")Integer id);
	 //�޸�Student
    int updateStudent(OAStudent id);
   //Class�༶��ѯ
  	public List<OAClass> ClassSelect(@Param("text3")String text3,@Param("text4")String text4);
  	 //Class�༶ɾ��
  	int deleteClass(@Param("id")Integer id);
  	//Class�༶���
  	int saveClass(OAClass oaClass);
  	//Class�༶�޸Ĵ�ֵ
    public OAClass getupdateOAClass(@Param("id")Integer id);
      //Class�༶�޸�
    int updateClass(OAClass id);
    //�����޸�
    int UserOAs(UserOA id);
   //User���ѯ
    /*public UserOA getUser(Integer id);*/
}
