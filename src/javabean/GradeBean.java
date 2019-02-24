package javabean;

public class GradeBean {
	
	private String name;	//�̸�
	private int point;		//����
	private String grade;
	private String totalInfo;
	
	//�޴� [source]/[Generate Getter and Setters ��]�� �̿� �ڵ� ����
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
	//������ ������ ����ϴ� �޼ҵ�� ���� ����
	public String getGrade() {
		if (point >= 90)
			grade = "A";
		else if (point >= 80)
			grade = "B";
		else if (point >= 70)
			grade = "C";
		else if (point >= 60)
			grade = "D";
		else 
			grade = "F";
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "GradeBean [name=" + name + ", point=" + point + ", grade=" + grade + "]";
	}
	public String getTotalInfo() {
		return toString();
	}
	public void setTotalInfo(String totalInfo) {
		this.totalInfo = totalInfo;
	}
	
	
}
