package com.cas.business.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name = "bs_logindetails")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDetails implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
    @Column(name = "loginid")
    private Integer loginId;

    @Column(name = "username")
    private String userName;

    @Column(name = "password")
    private String password;

    @Column(name = "email")
    private String email;

    @Column(name = "mobileno")
    private String mobileNumber;

    @Column(name = "islocked")
    private Boolean isLocked;

    @Column(name = "isvalid")
    private Boolean isValid;

    @Column(name = "userroleid")
    private Integer userRoleId;

}
