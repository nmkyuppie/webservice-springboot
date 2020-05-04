package com.cas.business.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name = "societyEmployeeHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SocietyEmployeeHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "sehId")
    private Integer id;
	
	@Column(name = "sehSocietyId")
    private Integer societyId;
	
	@Column(name = "sehSocietyEmployeeId")
    private Integer societyEmployeeId;

	@Column(name = "sehName")
    private String name;

    @Column(name= "sehQualification")
    private String qualification;

    @Column(name = "sehGender")
    private String gender;

    @Column(name = "sehDOB")
    private String dob;

    @Column(name = "sehCadre")
    private String cadre;

    @Column(name = "sehJoiningDate")
    private String joiningDate;

    @Column(name = "sehRetirementDate")
    private String retirementDate;

    @Column(name = "sehAddress")
    private String address;

    @Column(name = "sehMobileNumber")
    private String mobileNumber;

    @Column(name = "sehEmailId")
    private String emailId;

    @Column(name = "sehAppointedBy")
    private String appointedBy;

    @Column(name = "sehDisabledPerson")
    private Boolean isDisabledPerson;

    @Column(name = "sehPan")
    private String pan;

    @Column(name = "sehUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "sehUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static SocietyEmployeeHistory setUpObject(SocietyEmployee se, Integer loginId) {
		SocietyEmployeeHistory seh = new SocietyEmployeeHistory();
		seh.setSocietyId(se.getSocietyId());
		seh.setSocietyEmployeeId(se.getId());
		seh.setName(se.getName());
		seh.setQualification(se.getQualification());
		seh.setGender(se.getGender());
		seh.setDob(se.getDob());
		seh.setCadre(se.getCadre());
		seh.setJoiningDate(se.getJoiningDate());
		seh.setRetirementDate(se.getRetirementDate());
		seh.setAddress(se.getAddress());
		seh.setAppointedBy(se.getAppointedBy());
		seh.setMobileNumber(se.getMobileNumber());
		seh.setEmailId(se.getEmailId());
		seh.setIsDisabledPerson(se.getIsDisabledPerson());
		seh.setPan(se.getPan());
		seh.setUpdatedBy(loginId);
		return seh;
	}

}
