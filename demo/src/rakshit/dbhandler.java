package rakshit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import oracle.jdbc.pool.OracleDataSource;

public class dbhandler {
	

	public Connection getdbcon() {
		// TODO Auto-generated method stub
		
			Connection con=null;
			OracleDataSource ods;
			try {
				ods = new OracleDataSource();
				
				ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
				con=ods.getConnection("rakshit1","icsd1");
				System.out.println("con est.");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
				
	return con;

	}
	
	public void insertIntotbltenant(String strunm, String strpwd, String strmail) {
		// TODO Auto-generated method stub
		Connection con=getdbcon();
		//2- specify your objective
		//statement ,,, preparedstatment--
		try {
			PreparedStatement stmt=con.prepareStatement("insert into tbltenant values (?,?,?)");
			
			stmt.setString(1, strunm);
			stmt.setString(2, strpwd);
			stmt.setString(3, strmail);
			
			//3- pass the paramter if any
			//4- execute your query
			stmt.executeUpdate();//i d u
			con.close();
			
			System.out.println("data inserted");
			//5 close your connection
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

	public void insertIntotblowner(String strunm, String strpwd, String strmail) {
		// TODO Auto-generated method stub
		Connection con=getdbcon();
		//2- specify your objective
		//statement ,,, preparedstatment--
		try {
			PreparedStatement stmt=con.prepareStatement("insert into tblowner values (?,?,?)");
			
			stmt.setString(1, strunm);
			stmt.setString(2, strpwd);
			stmt.setString(3, strmail);
			
			//3- pass the paramter if any
			//4- execute your query
			stmt.executeUpdate();//i d u
			con.close();
			
			System.out.println("data inserted");
			//5 close your connection
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		


}
	
//	create table addproperty
//	(
//	  ownername  varchar(50),
//	  description varchar(100),
//	  propertytype varchar(10),
//	  bedrooms varchar(3),
//	  propertysize varchar(7),
//	  price varchar(7),
//	  address  varchar(60),
//	  state varchar(30),
//	  city varchar(10),
//	  zipcode varchar(7),
//	  furnished varchar(3),
//	  gym varchar(3),
//	  security1 varchar(3),
//	  ac varchar(3),
//	  parking varchar(3),
//	  pet varchar(3)
//	  )
//	  desc addproperty;
	
	public void deleteMultipleRows(String strSelRows[])
	{
		String strRes="";
		int i=strSelRows.length;
		int j=0;
		for(String str:strSelRows)
		{
			if(j==i-1)
			{
				strRes=strRes+str;
			}
			else
			{
				strRes=strRes+str+",";
			}
			j++;
		}
		System.out.println(strRes);
		Connection con=getdbcon();
		try {
			PreparedStatement stmt=con.prepareStatement("delete from addproperty where propertyid in("+strRes+")");
			stmt.executeUpdate();
			con.close();
			System.out.println(" rows deleted");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	
	public int getmaxPropertyid(String strcolnm,String strtblnm)
	{
		Connection con=getdbcon();
		int id=0;
		try{
			PreparedStatement stmt=con.prepareStatement("select max("+strcolnm+") as id from "+strtblnm);
			ResultSet rset=stmt.executeQuery();
			
			while(rset.next())
			{
				
				
		id=	rset.getInt("id");
		
				
				
			}
			id=id+1;

		con .close();
		}
		catch(Exception e)
		{
			
		}
		return id;

		
	}

	public void addproperty(int propertyid,String strname,String strdesc,String strpropertytype,String strbedrooms,String strpropsize,String strprice,String straddress,String strstate,String strcity,String strzipcode,String ammenities,String file,String phoneno,String file1)
	   {
		   Connection con=getdbcon();
		   System.out.println("inside func");
		   try {
			PreparedStatement stmt=con.prepareStatement("insert into addproperty values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			stmt.setInt(1, propertyid);
			stmt.setString(2,strname);
			stmt.setString(3,strdesc);
			stmt.setString(4, strpropertytype);
			stmt.setString(5, strbedrooms);
			stmt.setString(6, strpropsize);
			stmt.setString(7,strprice);
			stmt.setString(8,straddress);
			stmt.setString(9, strstate);
			stmt.setString(10, strcity);
			stmt.setString(11, strzipcode);
			stmt.setString(12,ammenities );
			stmt.setString(13, file);
			stmt.setString(14,phoneno );
			stmt.setString(15, file1);
			stmt.executeUpdate();
			System.out.println("desc:"+strdesc+" mobileno:"+phoneno);
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   }
	   
   
   public LinkedList<Listproperty> getpropertytable(String strname1)
   {
 	  LinkedList<Listproperty> lst=new LinkedList<>();
 	  Connection con=getdbcon();
 	  try {
 		PreparedStatement stmt=con.prepareStatement("select * from addproperty where ownername=?");
 		stmt.setString(1, strname1);
 		ResultSet rset=stmt.executeQuery();
 		while(rset.next())
 		{
 			
// 			create table addproperty
// 			(
// 			  ownername  varchar(50),
// 			  description varchar(100),
// 			  propertytype varchar(10),
// 			  bedrooms varchar(3),
// 			  propertysize varchar(7),
// 			  price varchar(7),
// 			  address  varchar(60),
// 			  state varchar(30),
// 			  city varchar(10),
// 			  zipcode varchar(7),
// 			  ammenities varchar(30),
// 			  image varchar(140)
// 			  )
            int propertyid;
 			String strname,strdesc, strpropertytype, strbedrooms, strpropsize, strprice, straddress, strstate, strcity,strzipcode,ammenities,filename,strphoneno,filename1;
 			propertyid=rset.getInt("propertyid");
 			strname=rset.getString("ownername");
 			strdesc=rset.getString("description");
 			strpropertytype=rset.getString("propertytype");
 			strbedrooms=rset.getString("bedrooms");
 			strpropsize=rset.getString("propertysize");
 			strprice=rset.getString("price");
 			straddress=rset.getString("address");
 			strstate=rset.getString("state");
 			strcity=rset.getString("city");
 			strzipcode=rset.getString("zipcode");
 			ammenities=rset.getString("ammenities");
 			filename=rset.getString("image");
 			strphoneno=rset.getString("Mobileno");
 			filename1=rset.getString("image1");
 			Listproperty p1=new Listproperty(propertyid,strname,strdesc,strpropertytype,strbedrooms,strpropsize,strprice,straddress,strstate,strcity,strzipcode,ammenities,filename,strphoneno,filename1);
 			//Emp e1=new Emp(strEmpno,strEname,strEage,strEadd,strEsal);
 			lst.add(p1);
 		}
 		con.close();
 	} catch (SQLException e) {
 		
 		// TODO Auto-generated catch block
 		e.printStackTrace();
 	}
 	  return lst;
   }

   
   
   public LinkedList<Listproperty> Searchpropertytable(String strpropertytype1,String city,String state)
   {
 	  LinkedList<Listproperty> lst=new LinkedList<>();
 	  Connection con=getdbcon();
 	  try {
 		PreparedStatement stmt=con.prepareStatement("select * from addproperty where propertytype=? and city=? and state=?");
 		stmt.setString(1, strpropertytype1);
 		stmt.setString(2, city);
 		stmt.setString(3, state);
 		ResultSet rset=stmt.executeQuery();
 		while(rset.next())
 		{
 						  
            int propertyid;
 			String strname,strdesc, strpropertytype, strbedrooms, strpropsize, strprice, straddress, strstate, strcity,strzipcode,ammenities,filename,strphoneno,filename1;
 			propertyid=rset.getInt("propertyid");
 			strname=rset.getString("ownername");
 			
 			strdesc=rset.getString("description");
 			strpropertytype=rset.getString("propertytype");
 			strbedrooms=rset.getString("bedrooms");
 			strpropsize=rset.getString("propertysize");
 			strprice=rset.getString("price");
 			straddress=rset.getString("address");
 			strstate=rset.getString("state");
 			strcity=rset.getString("city");
 			strzipcode=rset.getString("zipcode");
 			ammenities=rset.getString("ammenities");
 			filename=rset.getString("image");
 			strphoneno=rset.getString("Mobileno");
 			filename1=rset.getString("image1");
 			Listproperty p1=new Listproperty(propertyid,strname,strdesc,strpropertytype,strbedrooms,strpropsize,strprice,straddress,strstate,strcity,strzipcode,ammenities,filename,strphoneno,filename1);
 			lst.add(p1);
 		}
 		con.close();
 	} catch (SQLException e) {
 		
 		// TODO Auto-generated catch block
 		e.printStackTrace();
 	}
 	  return lst;
   }

   

  
}
