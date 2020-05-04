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

@Entity(name = "boardDetails")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardDetails implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bdId")
    private Integer id;

    @Column(name = "bdSocietyId")
    private Integer societyId;

    @Column(name = "bdName")
    private String name;

    @Column(name = "bdPosition")
    private String position;

    @Column(name = "bdIsActive")
    private Boolean isActive = true;

    @Column(name = "bdPhoneNumber")
    private String phoneNumber;

    @Column(name = "bdAddress")
    private String address;

    @Column(name = "bdCommunity")
    private String community;

    @Column(name = "bdAadhaar")
    private String aadhaar;

    @Column(name = "bdGender")
    private String gender;

    @Column(name = "bdElectedYearFrom")
    private Integer electedYearFrom;

    @Column(name = "bdElectedYearTo")
    private Integer electedYearTo;
}
