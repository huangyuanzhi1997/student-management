package com.huang.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huang.biz.OAUserdaoBiz;
import com.huang.pojo.OAClass;
import com.huang.pojo.OAScore;
import com.huang.pojo.OAStudent;
import com.huang.pojo.PagerMySQL;
import com.huang.pojo.UserOA;

/**
 * 
 *@author	��Զ־
 *@date		2019��6��22������11:01:13
 *@GitHub	https://github.com/huangyuanzhi1997
 *@Blog		https://www.huangyuanzhi.top
 */

@Controller
public class ControllerOA {
	private OAUserdaoBiz oaUserdaoBiz;
	@Resource(name = "oaUserdaoBiz")
	public void setBiz(OAUserdaoBiz oaUserdaoBiz) {
		this.oaUserdaoBiz = oaUserdaoBiz;
	}
	//��¼
	@RequestMapping("/logindo")
	public ModelAndView oaLogin(HttpServletRequest request,UserOA user,HttpSession session,String username,String password,Model model){
		ModelAndView modelAndView=new ModelAndView();
		UserOA userOA=oaUserdaoBiz.OaLogin(username, password);	
		String pwd = user.getPassword();
		session.setAttribute("password", pwd);
		if(userOA!=null){
			session.setAttribute("id",userOA.getId());
			/*System.out.println("id"+userOA.getId());*/
			session.setAttribute("username", username);			
			modelAndView.addObject("userOA",userOA);					
			modelAndView.addObject("mainpage",null);
			modelAndView.setViewName("/Index.jsp");
		}else{		
			request.setAttribute("error","��������ȷ���û���������!");		
			modelAndView.setViewName("/login.jsp");
		}
		return modelAndView;		
	}
	
	
	//Student��Ϣ��ѯ
	@RequestMapping("StudentOAselect")
	public String getSelectMess(String text1,String text2,Model model,
			@RequestParam(value = "pageNo", defaultValue = "1") Integer curPage,
			@RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize){       
		 PageHelper.startPage(curPage, pageSize);
		List<OAStudent> list=oaUserdaoBiz.getSelectMess(text1, text2);
		PageInfo<OAStudent> pageInfo = new PageInfo<OAStudent>(list);
		PagerMySQL<OAStudent> pager = new PagerMySQL<OAStudent>(
				curPage, pageSize, new Long(pageInfo.getTotal()).intValue());
		pager.setEntitiesList(list);
		if (text1!= null && text2!=null) {
			model.addAttribute("huixianName", text1);
			model.addAttribute("huixianNames", text2);
		}
		model.addAttribute("pagerBooks", pager);
		model.addAttribute("mainPage", "/StudentManager.jsp");
		return "/StudentManager.jsp";
	}
	//ɾ��
	@RequestMapping("deleteStudent")
	public ModelAndView deleteStudent(Integer id){
		ModelAndView modelAndView=new ModelAndView();
		int num=oaUserdaoBiz.deleteStudent(id);
		if(num==1){
			modelAndView.setViewName("/StudentOAselect");
		}
		return modelAndView;	
	}
	//���
	@RequestMapping("saveStudent")
	public ModelAndView saveStudent(OAStudent oaStudent,Model model){
		ModelAndView modelAndView=new ModelAndView();
		int rets=oaUserdaoBiz.saveStudent(oaStudent); 		    
	    	if(rets==1){
	    		modelAndView.addObject("biz", rets);
	    		model.addAttribute("mywo","����ɹ�");
	    		modelAndView.setViewName("/StudentOAselect");
	    	}
			return modelAndView;	    		    	
}   
	//�޸Ĵ�ֵ
	@RequestMapping("Select")
	public ModelAndView getFinan(Integer id) {
		ModelAndView view = new ModelAndView();
		OAStudent list=oaUserdaoBiz.getupdate(id);
		if (list != null) {
			view.addObject("list", list);
			view.setViewName("/StudentUpdate.jsp");
		}
		return view;
	}
	
	 //�޸�Student
    @RequestMapping("Studentupdate")
    public String Studentupdate(Model model,Integer id,int sid,String name,String sex,String age,String tel,String grade){   		
    OAStudent bizz=new OAStudent();
    bizz.setId(id);
    bizz.setSid(sid);
    bizz.setName(name);
    bizz.setSex(sex);
    bizz.setAge(age);
    bizz.setTel(tel);
    bizz.setGrade(grade);
    int ret=oaUserdaoBiz.updateStudent(bizz);
	if(ret==1){
		model.addAttribute("mywo","�޸ĳɹ�");
		return "/StudentOAselect";
	} 	
	return "/StudentOAselect";  	
    }
    
	
    
    
    
	/*========================================Score��Ϣ==============================================*/
	
	
	

    
    
    
	//Score��Ϣ��ѯ
	@RequestMapping("ScoreOAselect")
	public String ScoreSelect(String text5,String text6,Model model,
			@RequestParam(value = "pageNo", defaultValue = "1") Integer curPage,
			@RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize){       
		 PageHelper.startPage(curPage, pageSize);
		List<OAScore> list=oaUserdaoBiz.ScoreSelect(text5, text6);
		PageInfo<OAScore> pageInfo = new PageInfo<OAScore>(list);
		PagerMySQL<OAScore> pager = new PagerMySQL<OAScore>(
				curPage, pageSize, new Long(pageInfo.getTotal()).intValue());
		pager.setEntitiesList(list);
		if (text5!= null && text6!=null) {
			model.addAttribute("huixianName", text5);
			model.addAttribute("huixianNames", text6);
		}
		model.addAttribute("pagerBooks", pager);
		model.addAttribute("mainPage", "/ScoreManager.jsp");
		return "/ScoreManager.jsp";
	}
	//ɾ��
	@RequestMapping("deleteScore")
	public ModelAndView deleteScore(Integer id){
		ModelAndView modelAndView=new ModelAndView();
		int num=oaUserdaoBiz.deleteScore(id);
		if(num==1){
			modelAndView.setViewName("/ScoreOAselect");
		}
		return modelAndView;	
	}
	//���
	@RequestMapping("saveScore")
	public ModelAndView saveScore(OAScore oaScore,Model model){
		ModelAndView modelAndView=new ModelAndView();
		int rets=oaUserdaoBiz.saveScore(oaScore); 		    
	    	if(rets==1){
	    		modelAndView.addObject("biz", rets);
	    		model.addAttribute("mywo","����ɹ�");
	    		modelAndView.setViewName("/ScoreOAselect");
	    	}
			return modelAndView;	    		    	
}   
	//�޸Ĵ�ֵ
	@RequestMapping("Selectss")
	public ModelAndView getupdateOAScore(Integer id) {
		ModelAndView view = new ModelAndView();
		OAScore list=oaUserdaoBiz.getupdateOAScore(id);
		if (list != null) {
			view.addObject("list", list);
			view.setViewName("/ScoreUpdate.jsp");
		}
		return view;
	}

    
    
	
	 //�޸�Score
   @RequestMapping("Scoreupdate")
   public String Scoreupdate(Model model,Integer id,int sid,String sname,String course,String teacher,String score,String time){   		
   OAScore bizz=new OAScore();
   bizz.setId(id);
   bizz.setSid(sid);
   bizz.setSname(sname);
   bizz.setCourse(course);
   bizz.setTeacher(teacher);
   bizz.setScore(score);
   bizz.setTime(time);
   int ret=oaUserdaoBiz.updateScore(bizz);
	if(ret==1){
		model.addAttribute("mywo","�޸ĳɹ�");
		return "/ScoreOAselect";
	} 	
	return "/ScoreOAselect";  	
   }
	
	
	
    
    
    
    
    
    
   
   
   
    
   //Class�༶��ѯ
  	@RequestMapping("ClassOAselect")
  	public String ClassSelect(String text3,String text4,Model model,
  			@RequestParam(value = "pageNo", defaultValue = "1") Integer curPage,
  			@RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize){       
  		 PageHelper.startPage(curPage, pageSize);
  		List<OAClass> list=oaUserdaoBiz.ClassSelect(text3, text4);
  		PageInfo<OAClass> pageInfo = new PageInfo<OAClass>(list);
  		PagerMySQL<OAClass> pager = new PagerMySQL<OAClass>(
  				curPage, pageSize, new Long(pageInfo.getTotal()).intValue());
  		pager.setEntitiesList(list);
  		if (text3!= null && text4!=null) {
  			model.addAttribute("huixianName", text3);
  			model.addAttribute("huixianNames", text4);
  		}
  		model.addAttribute("pagerBooks", pager);
  		model.addAttribute("mainPage", "/ClassManger.jsp");
  		return "/ClassManger.jsp";
  	}
  //ɾ��
  	@RequestMapping("deleteClass")
  	public ModelAndView deleteClass(Integer id){
  		ModelAndView modelAndView=new ModelAndView();
  		int num=oaUserdaoBiz.deleteClass(id);
  		if(num==1){
  			modelAndView.setViewName("/ClassOAselect");
  		}
  		return modelAndView;	
  	}
  	//���
  	@RequestMapping("saveClass")
  	public ModelAndView saveClass(OAClass oaClass,Model model){
  		ModelAndView modelAndView=new ModelAndView();
  		int rets=oaUserdaoBiz.saveClass(oaClass);	    
  	    	if(rets==1){
  	    		modelAndView.addObject("biz", rets);
  	    		model.addAttribute("mywo","����ɹ�");
  	    		modelAndView.setViewName("/ClassOAselect");
  	    	}
  			return modelAndView;	    		    	
  }   
  	//�޸Ĵ�ֵ
  	@RequestMapping("Selects")
  	public ModelAndView getFinans(Integer id) {
  		ModelAndView view = new ModelAndView();
  		OAClass list=oaUserdaoBiz.getupdateOAClass(id);
  		if (list != null) {
  			view.addObject("list", list);
  			view.setViewName("/ClassUpdate.jsp");
  		}
  		return view;
  	}
  	 //�޸�Class
    @RequestMapping("Classupdate")
      public String Classupdate(Model model,Integer id,String classid,String classname,String classexplain){   		
     OAClass bizz=new OAClass();
      bizz.setId(id);
      bizz.setClassid(classid);
      bizz.setClassname(classname);
      bizz.setClassexplain(classexplain);
      int ret=oaUserdaoBiz.updateClass(bizz);
  	if(ret==1){
  		model.addAttribute("mywo","�޸ĳɹ�");
  		return "/ClassOAselect";
  	} 	
  	return "/ClassOAselect";  	
      }
    //�޸�����
    @RequestMapping("OAUserupdates")
      public String Classupdate(Model model,int id,String password){   		
    UserOA bizz=new UserOA();
      bizz.setId(id);
      bizz.setPassword(password);
      int ret=oaUserdaoBiz.UserOAs(bizz);
  	if(ret==1){
  		return "/login.jsp";
  	} 	
  	return "/login.jsp";  	
      }
    //�޸Ĵ�ֵ
	/*@RequestMapping("Selectss")
  	public ModelAndView getFinanss() {
  		ModelAndView view = new ModelAndView();
  		UserOA list=oaUserdaoBiz.getUser();
  		if (list != null) {
  			view.addObject("list", list);
  			view.setViewName("/PasswordUpdate.jsp");
  		}
  		return view;
  	}*/
	}
