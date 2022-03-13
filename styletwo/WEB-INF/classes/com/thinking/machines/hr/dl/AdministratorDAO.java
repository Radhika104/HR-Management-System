package com.thinking.machines.hr.dl;
import java.util.*;
import java.sql.*;
public class AdministratorDAO 
{
public AdministratorDTO getByUsername(String username) throws DAOException
{
try
{
Connection connection=DAOConnection.getConnection();
PreparedStatement preparedStatement;
preparedStatement=connection.prepareStatement("Select *from Administrator where uname=?");
preparedStatement.setString(1,username);
ResultSet resultSet=preparedStatement.executeQuery();
if(resultSet.next()==false)
{
resultSet.close();
preparedStatement.close();
connection.close();
throw new DAOException("Username :  "+username+" not exists.");
}
preparedStatement.close();
resultSet.close();
preparedStatement=connection.prepareStatement("Select *from Administrator where uname=? ");
preparedStatement.setString(1,username);
resultSet=preparedStatement.executeQuery();
String password;
AdministratorDTO administratorDTO=new AdministratorDTO();
while(resultSet.next()==true)
{
username=resultSet.getString("uname");
password=resultSet.getString("pwd");
administratorDTO.setusername(username);
administratorDTO.setPassword(password);
}
resultSet.close();
preparedStatement.close();
connection.close();
return administratorDTO;
}catch(SQLException sqlException)
{
throw new DAOException(sqlException.getMessage());//remove after testing
}
}
}