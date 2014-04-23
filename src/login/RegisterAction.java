package login;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;



public class RegisterAction extends ActionSupport implements ModelDriven {
	UserRegistrationModel obRegistrationModel;

	public String execute() throws Exception {
		RegistrationDAO obRegistrationDAO = new RegistrationDAO();
		int queryResult = obRegistrationDAO.registration(obRegistrationModel);
		if (queryResult == 0) {
			addActionError("It is a duplicate entry. Please enter another user id.");
			return ERROR;
		}
		
		else {
			return SUCCESS;
		}

	}

	public String show() {
		return INPUT;
	}

	@Override
	public Object getModel() {
		obRegistrationModel = new UserRegistrationModel();
		return obRegistrationModel;
	}

}
