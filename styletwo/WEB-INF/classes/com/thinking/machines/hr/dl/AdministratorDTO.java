package com.thinking.machines.hr.dl;
import java.util.*;
import java.math.*;
public class AdministratorDTO implements java.io.Serializable,Comparable<AdministratorDTO>
{
public String username;
public String password;
public AdministratorDTO()
{
this.username="";
this.password="";
}
public void setusername(String username)
{
this.username=username;
}
public String getusername()
{
return this.username;
}
public void setPassword(String password)
{
this.password=password;
}
public String getPassword()
{
return this.password;
}
public boolean equalTo(Object object)
{
if(!(object instanceof AdministratorDTO)) return false;
AdministratorDTO other=(AdministratorDTO)object;
return this.username.equalsIgnoreCase(other.username);
}
public int hashCode()
{
return username.hashCode();
}
public int compareTo(AdministratorDTO administrator)
{
return this.username.compareTo(administrator.username);
}
}