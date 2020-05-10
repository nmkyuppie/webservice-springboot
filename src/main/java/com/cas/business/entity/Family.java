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

@Entity(name = "family")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Family implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "fId")
    private Integer familyId;

    @Column(name = "fEmployeeId")
    private Integer familyEmployeeId;

    @Column(name = "fSocietyId")
    private Integer societyId;

    @Column(name = "fName")
    private String familyName;

    @Column(name = "fAge")
    private Integer familyAge;

    @Column(name = "fDob")
    private String familyDob;

    @Column(name = "fGender")
    private String familyGender;

    @Column(name = "fRelation")
    private String familyRelation;
}
