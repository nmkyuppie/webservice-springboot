package com.cas.business.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name = "bs_branchdetails")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Society implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer branchId;

	@Column
    private String branch;

    @Column
    private String instituition;

    @Column
    private String paccs;

    @Column(name = "regno")
    private String registrationNumber;

    @Column
    private String dateOfRegistration;

    @Column
    private String dateOfStarting;

    @Column
    private String circle;

    @Column
    private String region;

    @Column
    private String village;

    @Column
    private String post;

    @Column
    private String taluk;

    @Column
    private String district;

    @Column
    private String pinCode;

    @Column
    private String block;

    @Column
    private String constituition;

    @Column
    private String parliament;

    @Column
    private String policeStation;

    @Column
    private String location;

    @Column
    private String shares;

}
