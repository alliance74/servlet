package com.student.listener;

import com.student.util.DatabaseConnection;
import com.student.util.HibernateUtil;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class AppContextListener implements ServletContextListener {
    
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("Application starting...");
        
        // Test database connection
        DatabaseConnection.testConnection();
        
        // Initialize Hibernate
        try {
            HibernateUtil.getSessionFactory();
            System.out.println("Hibernate initialized successfully!");
        } catch (Exception e) {
            System.err.println("Failed to initialize Hibernate!");
            e.printStackTrace();
        }
    }
    
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Application shutting down...");
        HibernateUtil.shutdown();
    }
}
