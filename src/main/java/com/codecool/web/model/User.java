package com.codecool.web.model;

import java.util.Objects;

public final class User extends AbstractModel {
    
    private final String email;
    private final String name;
    private final String password;
    
    public User(int id, String email, String name, String password) {
        super(id);
        this.email = email;
        this.name = name;
        this.password = password;
    }
    
    public String getName() {
        return name;
    }
    
    public String getEmail() {
        return email;
    }
    
    public String getPassword() {
        return password;
    }
    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        User user = (User) o;
        return Objects.equals(email, user.email) &&
                Objects.equals(password, user.password) &&
                Objects.equals(name, user.name);
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), email, password, name);
    }
}
