
学生信息管理系统 
===============
日期：2019/6/22  
---------------
说明：  
---------------
开发人员：Huang  
开发周期：2019/6/15——2019/6/22（共计7天）  
系统环境：Windows  
开发工具：Eclipse  
Java版本：JDK 1.8  
服务器：Tomcat 7.0  
数据库：MySQL 5.0  
系统采用技术：Spring+Spring MVC+MyBatis+Bootstrap+jQuery  
  
## 功能实现 

### 登录模块
通过链接数据库实现管理员登录功能，包含记住账号按钮。

登陆成功：登陆成功出现欢迎界面，背景图是大学的。。。 然后对学生信息各个模块进行相关操作。

### 主要模块
学生信息管理、学生成绩管理、班级信息管理、修改密码、退出登录。  
#### 学生信息管理
包含学生姓名、性别、出生日期、户籍等。实现对学生信息增删改查功能。(优化)  
#### 学生成绩管理
包含学号、姓名、课程、任课老师、成绩、时间(新增)
#### 班级信息管理
包含编号、班级名称、班级院系等。实现对班级信息增删改查功能。(优化)  
#### 修改密码
包含输入原密码、新密码、再次输入新密码。输入成功后退出系统，跳转到登录界面，使用新密码登录。(优化)  
#### 退出登录
点击直接退出登录，跳转到登录界面。(新增)  

## 部分功能展示
### 登录界面

![image](https://github.com/huangyuanzhi1997/student-management/blob/master/images/stu01.png)

### 主界面

![image](https://github.com/huangyuanzhi1997/student-management/blob/master/images/stu02.png)

### 学生信息管理

![image](https://github.com/huangyuanzhi1997/student-management/blob/master/images/stu03.png)

#### 查询

![image](https://github.com/huangyuanzhi1997/student-management/blob/master/images/stu04.png)

#### 更新

![image](https://github.com/huangyuanzhi1997/student-management/blob/master/images/stu05.png)

![image](https://github.com/huangyuanzhi1997/student-management/blob/master/images/stu06.png)

#### 增加

![image](https://github.com/huangyuanzhi1997/student-management/blob/master/images/stu07.png)

![image](https://github.com/huangyuanzhi1997/student-management/blob/master/images/stu08.png)

#### 删除

![image](https://github.com/huangyuanzhi1997/student-management/blob/master/images/stu09.png)

### 学生成绩管理

![image](https://github.com/huangyuanzhi1997/student-management/blob/master/images/stu10.png)

### 班级管理

![image](https://github.com/huangyuanzhi1997/student-management/blob/master/images/stu11.png)

### 修改密码

![image](https://github.com/huangyuanzhi1997/student-management/blob/master/images/stu12.png)


## 技术讲解

此项目采用注解式开发，项目结构如下：






未完……
















