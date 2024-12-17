/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user.module;

/**
 *
 * @author User
 */
public class User {
    private int id;
    private String name;
    private String email;
    private String password;
    
    public User(int id, String name, String password){
        id = this.id;
        name =this.name;
        email = this.email;
        password = this.password;
    }
    
    public User(){
        
    }
    
    public int getId(){
        return id;
    }
    
    public void setId(){
        this.id = id;
    }
    
    public String getName(){
        return name;
    }
    
    public void setName(){
        this.name = name;
    }
    
    public String getEmail(){
        return email;
    }
    
    public void setEmail(){
        this.email = email;
    }
    
    public String getPassword(){
        return password;
    }
    
    public void setPassword(){
        this.password = password;
    }
    
}
