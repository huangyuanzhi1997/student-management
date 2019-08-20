package com.huang.bizImpl;
import java.util.List;

import com.huang.Userdao.OAUserdao;
import com.huang.biz.OAUserdaoBiz;
import com.huang.pojo.OAClass;
import com.huang.pojo.OAStudent;
import com.huang.pojo.UserOA;
/**
 * 
 *@author	��Զ־
 *@date		2019��6��22������11:00:59
 *@GitHub	https://github.com/huangyuanzhi1997
 *@Blog		https://www.huangyuanzhi.top
 */
public class OABizImpl implements OAUserdaoBiz {
	private OAUserdao oaUserdao;
	public void setOaUserdao(OAUserdao oaUserdao) {
		this.oaUserdao = oaUserdao;
	}
	//��¼
	@Override
	public UserOA OaLogin(String username, String password) {
		return this.oaUserdao.OaLogin(username, password);
	}
	//��ѯ
	@Override
	public List<OAStudent> getSelectMess(String text1, String text2) {
		return this.oaUserdao.getSelectMess(text1, text2);
	}
	//ɾ��
	@Override
	public int deleteStudent(Integer id) {
		return this.oaUserdao.deleteStudent(id);
	}
	//���
	@Override
	public int saveStudent(OAStudent oaStudent) {
		return this.oaUserdao.saveStudent(oaStudent);
	}
	//�޸Ĵ�ֵ
	@Override
	public OAStudent getupdate(Integer id) {
		return this.oaUserdao.getupdate(id);
	}
	//ɾ��Student
	@Override
	public int updateStudent(OAStudent id) {
		return this.oaUserdao.updateStudent(id);
	}
	//�༶��ѯ
	@Override
	public List<OAClass> ClassSelect(String text3, String text4){
		return this.oaUserdao.ClassSelect(text3, text4);
	} 
    //�༶ɾ��
	@Override
	public int deleteClass(Integer id) {
		return this.oaUserdao.deleteClass(id);
	}
	//�༶���
	@Override
	public int saveClass(OAClass oaClass) {
		return this.oaUserdao.saveClass(oaClass);
	}
	//�޸Ĵ�ֵ
	@Override
	public OAClass getupdateOAClass(Integer id) {
		return this.oaUserdao.getupdateOAClass(id);
	}
	//�༶�޸�
	@Override
	public int updateClass(OAClass id) {
		return this.oaUserdao.updateClass(id);
	}
	/*@Override
	public UserOA getUser(Integer id) {
		return this.oaUserdao.getUser(id);
	}
*/
	//�����޸�
	@Override
	public int UserOAs(UserOA id) {
		return this.oaUserdao.UserOAs(id);
	}
}
