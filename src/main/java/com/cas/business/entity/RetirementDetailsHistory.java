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

@Entity(name = "retirementDetailsHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RetirementDetailsHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rdhId")
    private Integer id;

    @Column(name = "rdhRetirementDetailsId")
    private Integer retirementDetailsId;

    @Column(name = "rdhSocietyId")
    private Integer societyId;

    @Column(name = "rdhEmployeeId")
    private Integer employeeId;

    @Column(name = "rdhRetirementDate")
    private String retirementDate;

    @Column(name = "rdhJoiningCadre")
    private String joiningCadre;

    @Column(name = "rdhRetiringCadre")
    private String retiringCadre;

    @Column(name = "rdhBenefitToBeSettled")
    private String benefitToBeSettled;

    @Column(name = "rdhSettledUptoMonth")
    private String settledUptoMonth;

    @Column(name = "rdhBalanceAmount")
    private Double balanceAmount;

    @Column(name = "rdhReasonForPending")
    private String reasonForPending;

    @Column(name = "rdhTypeOfBenefit")
    private String typeOfBenefit;

    @Column(name = "rdhUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "rdhUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static RetirementDetailsHistory setUpObject(RetirementDetails rd, Integer updatedBy) {
		RetirementDetailsHistory rdh = new RetirementDetailsHistory();
		rdh.setRetirementDetailsId(rd.getId());
		rdh.setSocietyId(rd.getSocietyId());
		rdh.setEmployeeId(rd.getEmployeeId());
		rdh.setRetirementDate(rd.getRetirementDate());
		rdh.setJoiningCadre(rd.getJoiningCadre());
		rdh.setRetiringCadre(rd.getRetiringCadre());
		rdh.setBenefitToBeSettled(rd.getBenefitToBeSettled());
		rdh.setSettledUptoMonth(rd.getSettledUptoMonth());
		rdh.setBalanceAmount(rd.getBalanceAmount());
		rdh.setReasonForPending(rd.getReasonForPending());
		rdh.setTypeOfBenefit(rd.getTypeOfBenefit());
		rdh.setUpdatedBy(updatedBy);
		return rdh;
	}

}
