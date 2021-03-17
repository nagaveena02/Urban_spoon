

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class RegDAO {
	public int reg_insert(RegBean rb) throws ClassNotFoundException, SQLException{
	Connection con=DBUtil.DBConnection();
	PreparedStatement ps=con.prepareStatement("insert into proj_user values(?,?,?)");  
	ps.setString(1,rb.getUname());
	ps.setString(2,rb.getEmail());
	
	ps.setString(3,rb.getPswd());
	
	int i = ps.executeUpdate();
	con.close();
	return i;
}

}
