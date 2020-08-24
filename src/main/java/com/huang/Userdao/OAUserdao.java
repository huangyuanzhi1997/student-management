package com.huang.Userdao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huang.pojo.OAClass;
import com.huang.pojo.OAScore;
import com.huang.pojo.OAStudent;
import com.huang.pojo.UserOA;
/**
 * 
 *@author	��Զ־
 *@date		2019��6��22������11:01:56
 *@GitHub	https://github.com/huangyuanzhi1997
 *@Blog		https://www.huangyuanzhi.top
 */
public interface OAUserdao {
	//OAҳ���¼
	public UserOA OaLogin(@Param("username")String username,@Param("password")String password);

	//Student��Ϣ��ѯ
	public List<OAStudent> getSelectMess(@Param("text1")String text1,@Param("text2")String text2);
	//Student��Ϣɾ��
	int deleteStudent(@Param("id")Integer id);
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
   /* public UserOA getUser();*/

    //Score��Ϣ��ѯ
    public List<OAScore> ScoreSelect(@Param("text5")String text5,@Param("text6")String text6);
    //Score��Ϣɾ��
    int deleteScore(@Param("id")Integer id);
    //Score��Ϣ���
    int saveScore(OAScore oaScore);
    //�޸Ĵ�ֵ
    public OAScore getupdateOAScore(@Param("id")Integer id);
    //�޸�Score
    int updateScore(OAScore id);
}
