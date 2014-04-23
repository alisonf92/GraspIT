package questions;


import java.io.Serializable;

public class AdminQuestion implements Serializable{

	private static final long serialVersionUID = 1L;
	private String subject;
	private String quesno;
	private String question;
	private String ans1;
	private String ans2;
	private String ans3;
	private String ans4;
	private String rightAns;
	
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAns1() {
		return ans1;
	}
	public void setAns1(String ans1) {
		this.ans1 = ans1;
	}
	public String getAns2() {
		return ans2;
	}
	public void setAns2(String ans2) {
		this.ans2 = ans2;
	}
	public String getAns3() {
		return ans3;
	}
	public void setAns3(String ans3) {
		this.ans3 = ans3;
	}
	public String getAns4() {
		return ans4;
	}
	public void setAns4(String ans4) {
		this.ans4 = ans4;
	}
	public String getRightAns() {
		return rightAns;
	}
	public void setRightAns(String rightAns) {
		this.rightAns = rightAns;
	}
	public String getSubject() {
		return subject;
	}
	public void setLanguage(String subject) {
		this.subject = subject;
	}
	public String getQuesno() {
		return quesno;
	}
	public void setQuesno(String quesno) {
		this.quesno = quesno;
	}
	
	
}
