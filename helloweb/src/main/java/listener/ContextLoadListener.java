package listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextLoadListener implements ServletContextListener {
	
	// context가 뜰때, 로딩될때
    public void contextInitialized(ServletContextEvent sce)  { 
    	System.out.println("Application Starts...");
    }
    
	// context가 내려갈때 = tomcat끌떄
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

    
	
}
