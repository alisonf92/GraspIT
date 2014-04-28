package login;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import login.LoginModel;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class LoginAction extends ActionSupport implements ModelDriven<LoginModel>, SessionAware, RequestAware {
	LoginModel login;
	Map session;
	Map request;

	public String execute() throws Exception {
		RegistrationDAO obLoginDao = new RegistrationDAO();
		boolean bol = obLoginDao.studentLogin(login);

		session.put("username", request.get("username"));
		if (bol) {
			return SUCCESS;
		} else {
			addActionError("Please Enter valid user name.");
			return ERROR;
		}
	}

	public String display() {
		return INPUT;
	}

	@Override
	public LoginModel getModel() {
		login = new LoginModel();
		return login;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public Map getRequest() {
		return request;
	}

	public void setRequest(Map request) {
		this.request = request;
	}

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		if ("".equals(login.getUsername())) {
			addFieldError("username", getText("studentname"));
		}
		if ("".equals(login.getPassword())) {
			addFieldError("password", getText("password"));
		}
		super.validate();
	}
	public String logOut(){
		session.remove("user");
		return "success";
	}
}
