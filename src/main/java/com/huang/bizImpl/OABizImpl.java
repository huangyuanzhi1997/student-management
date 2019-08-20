package com.huang.bizImpl;
import java.util.List;

import com.huang.Userdao.OAUserdao;
import com.huang.biz.OAUserdaoBiz;
import com.huang.pojo.OAClass;
import com.huang.pojo.OAStudent;
import com.huang.pojo.UserOA;
/**
 * 
 *@author	黄远志
 *@date		2019年6月22日下午11:00:59
 *@GitHub	https://github.com/huangyuanzhi1997
 *@Blog		https://www.huangyuanzhi.top
 */
public class OABizImpl implements OAUserdaoBiz {
	private OAUserdao oaUserdao;
	public void setOaUserdao(OAUserdao oaUserdao) {
		this.oaUserdao = oaUserdao;
	}
	//登录
	@Override
	public UserOA OaLogin(String username, String password) {
		return this.oaUserdao.OaLogin(username, password);
	}
	//查询
	@Override
	public List<OAStudent> getSelectMess(String text1, String text2) {
		return this.oaUserdao.getSelectMess(text1, text2);
	}
	//删除
	@Override
	public int deleteStudent(Integer id) {
		return this.oaUserdao.deleteStudent(id);
	}
	//添加
	@Override
	public int saveStudent(OAStudent oaStudent) {
		return this.oaUserdao.saveStudent(oaStudent);
	}
	//修改传值
	@Override
	public OAStudent getupdate(Integer id) {
		return this.oaUserdao.getupdate(id);
	}
	//删除Student
	@Override
	public int updateStudent(OAStudent id) {
		return this.oaUserdao.updateStudent(id);
	}
	//班级查询
	@Override
	public List<OAClass> ClassSelect(String text3, String text4){
		return this.oaUserdao.ClassSelect(text3, text4);
	} 
    //班级删除
	@Override
	public int deleteClass(Integer id) {
		return this.oaUserdao.deleteClass(id);
	}
	//班级添加
	@Override
	public int saveClass(OAClass oaClass) {
		return this.oaUserdao.saveClass(oaClass);
	}
	//修改传值
	@Override
	public OAClass getupdateOAClass(Integer id) {
		return this.oaUserdao.getupdateOAClass(id);
	}
	//班级修改
	@Override
	public int updateClass(OAClass id) {
		return this.oaUserdao.updateClass(id);
	}
	/*@Override
	public UserOA getUser(Integer id) {
		return this.oaUserdao.getUser(id);
	}
*/
	//密码修改
	@Override
	public int UserOAs(UserOA id) {
		return this.oaUserdao.UserOAs(id);
	}
}
