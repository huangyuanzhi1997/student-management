package com.huang.pojo;
/**
 *
 *@author	黄远志
 *@date		2019年8月22日下午11:37:29
 *@GitHub	https://github.com/huangyuanzhi1997
 */
public class OAScore {
	private int id;
	private int num;
	private String name;
	private String course;
	private String teacher;
	private String score;
	private String time;

	@Override
	public String toString() {
		return "OAScore{" +
				"id=" + id +
				", num=" + num +
				", name='" + name + '\'' +
				", course='" + course + '\'' +
				", teacher='" + teacher + '\'' +
				", score='" + score + '\'' +
				", time='" + time + '\'' +
				'}';
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getId() {
		return id;
	}

	public int getNum() {
		return num;
	}

	public String getName() {
		return name;
	}

	public String getCourse() {
		return course;
	}

	public String getTeacher() {
		return teacher;
	}

	public String getScore() {
		return score;
	}

	public String getTime() {
		return time;
	}
}
