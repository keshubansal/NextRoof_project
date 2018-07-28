package rakshit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class ICSDAuthenticationSupport {
	
public static HttpSession checkAuthentication(HttpServletRequest request) throws AuthenticationException
	
	{
		HttpSession session=request.getSession(false);
		if(session == null)
		{
			throw new AuthenticationException("not valid user,please login first");
			//invalid user
		}
		return session; //valid user
	}


}
