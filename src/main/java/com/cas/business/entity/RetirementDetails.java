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

@Entity(name = "retirementDetails")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RetirementDetails implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rdId")
    private Integer id;

    @Column(name = "rdSocietyId")
    private Integer societyId;

    @Column(name = "rdEmployeeId")
    private Integer employeeId;

    @Column(name = "rdRetirementDate")
    private String retirementDate;

    @Column(name = "rdJoiningCadre")
    private String joiningCadre;

    @Column(name = "rdRetiringCadre")
    private String retiringCadre;

    @Column(name = "rdBenefitToBeSettled")
    private String benefitToBeSettled;

    @Column(name = "rdSettledUptoMonth")
    private String settledUptoMonth;

    @Column(name = "rdBalanceAmount")
    private Double balanceAmount;

    @Column(name = "rdReasonForPending")
    private String reasonForPending;

    @Column(name = "rdTypeOfBenefit")
    private String typeOfBenefit;

}
