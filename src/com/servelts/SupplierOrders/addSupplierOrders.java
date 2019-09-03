package com.servelts.SupplierOrders;


import java.io.IOException; 


import java.io.PrintWriter; 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;

  
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;
  
// Servlet Name 
@WebServlet("/addSupplierOrders") 


public class addSupplierOrders extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException { 
		
    		
    		try {
    			
    			Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","bawwa");
                
                Double unitPrice = Double.valueOf(request.getParameter("unitPrice"));
                Integer NOSunits = Integer.valueOf(request.getParameter("NOSunits"));
                Double totalPrice = (Double) unitPrice * NOSunits;
                
                PreparedStatement ps = connection.prepareStatement("INSERT INTO supplierorders values(?,?,?,?,?,?,?,?,?,?,?)");
               
                ps.setString(1, String.valueOf(request.getParameter("sOrderID")));
                ps.setDate(2, java.sql.Date.valueOf(request.getParameter("sOrderDate")));
                ps.setString(3, String.valueOf(request.getParameter("supplierID")));
                ps.setString(4, String.valueOf(request.getParameter("supplierName")));
                ps.setString(5, String.valueOf(request.getParameter("itemID")));
                ps.setString(6, String.valueOf(request.getParameter("itemName")));
                ps.setInt(7, Integer.valueOf(request.getParameter("NOSunits")));
                ps.setDate(8,java.sql.Date.valueOf(request.getParameter("arrivingDate")));
                ps.setString(9, request.getParameter("unitPrice"));
                ps.setDouble(10, totalPrice);
                ps.setString(11, "not arrived");
                
                int i = ps.executeUpdate();
                ps.close();
                
               
 
                connection.close();
                PrintWriter out = response.getWriter();
                out.println("<script language = 'JavaScript'>alert('Date Inserted Successfully!!!');</script>");
    		} catch (Exception e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    		response.sendRedirect("viewSupplierOrders.jsp");
    		
    		
    	}

    }