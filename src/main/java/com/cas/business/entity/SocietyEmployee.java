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

@Entity(name = "societyEmployee")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SocietyEmployee implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "seId")
    private Integer id;
	
	@Column(name = "seSocietyId")
    private Integer societyId;

	@Column(name = "seName")
    private String name;

    @Column(name= "seQualification")
    private String qualification;

    @Column(name = "seGender")
    private String gender;

    @Column(name = "seDOB")
    private String dob;

    @Column(name = "seCadre")
    private String cadre;

    @Column(name = "seJoiningDate")
    private String joiningDate;

    @Column(name = "seRetirementDate")
    private String retirementDate;

    @Column(name = "seAddress")
    private String address;

    @Column(name = "seMobileNumber")
    private String mobileNumber;

    @Column(name = "seEmailId")
    private String emailId;

    @Column(name = "seAppointedBy")
    private String appointedBy;

    @Column(name = "seDisabledPerson")
    private Boolean isDisabledPerson;

    @Column(name = "sePan")
    private String pan;

}
