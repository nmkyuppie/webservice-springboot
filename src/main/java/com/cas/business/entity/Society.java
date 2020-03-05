package com.cas.business.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import com.cas.utils.StringListConverter;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name = "society")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Society implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "sId")
    private Integer id;

	@Column(name = "sName")
    private String name;

    @Column(name= "sInstituition")
    private String instituition;

    @Column(name = "sRegistrationNumber")
    private String registrationNumber;

    @Column(name = "sRegistrationDate")
    private String registrationDate;

    @Column(name = "sStartingDate")
    private String startingDate;

    @Column(name = "sCircle")
    private String circle;

    @Column(name = "sRegion")
    private String region;

    @Column(name = "sVillage")
    private String village;

    @Column(name = "sPost")
    private String post;

    @Column(name = "sTaluk")
    private String taluk;

    @Column(name = "sDistrict")
    private String district;

    @Column(name = "sPinCode")
    private String pinCode;

    @Column(name = "sBlock")
    private String block;

    @Column(name = "sConstituition")
    private String constituition;

    @Column(name = "sParliament")
    private String parliament;

    @Column(name = "sPoliceStation")
    private String policeStation;

    @Column(name = "sLocation")
    private String location;

    @Column(name = "sShares")
    private String shares;
    
    @Column(name = "sBuilding")
    private String building;
    
    @Column(name = "sAreaSqFt")
    private String areaSqFt;
    
    @Column(name = "sChittaNumber")
    private String chittaNumber;
    
    @Column(name = "sPattaNumber")
    private String pattaNumber;
    
    @Column(name = "sPan")
    private String pan;
    
    @Column(name = "sMarketingBusiness")
    private String marketingBusiness;
    
    @Column(name = "sAreaCoverage")
    @Convert(converter = StringListConverter.class)
    private List<String> areaCoverage;
    
    @Column(name = "sHasBranch")
    private Boolean hasBranch;

}
