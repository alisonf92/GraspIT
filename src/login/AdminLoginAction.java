package login;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import login.LoginModel;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class AdminLoginAction extends ActionSupport implements ModelDriven<AdminModel>, SessionAware, RequestAware {
	AdminModel login;
	Map session;
	Map request;

	public String execute() throws Exception {
		RegistrationDAO dao = new RegistrationDAO();
		boolean b = dao.adminLogin(login);

		session.put("username", request.get("username"));
		if (b) {
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
	public AdminModel getModel() {
		login = new AdminModel();
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
			addFieldError("username", getText("adminname"));
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
