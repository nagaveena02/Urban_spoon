

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class LogDAO {

	public int getUser(RegBean sb) throws ClassNotFoundException, SQLException {
	       
    	Connection con =DBUtil.DBConnection();
        String query = "SELECT * FROM proj_user where uname = '" + sb.getUname()  +"'";

        PreparedStatement preparedStatement = con.prepareStatement(query);
        ResultSet rs = preparedStatement.executeQuery();
       
        rs.next();
        if(rs.getString(3).equals(sb.getPswd())&& rs.getString(1).equals(sb.getUname()))
       {     rs.close();
        	return 1;
       }
        
        else {
        	 rs.close();
        	return 0;
        }
        
}
}
