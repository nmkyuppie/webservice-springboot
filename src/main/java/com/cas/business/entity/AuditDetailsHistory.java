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

@Entity(name = "auditDetailsHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AuditDetailsHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "adhId")
    private Integer id;

    @Column(name = "adhAuditDetailsId")
    private Integer auditDetailsId;

    @Column(name = "adhSocietyId")
    private Integer societyId;

    @Column(name = "adhProfit")
    private String profit;

    @Column(name = "adhLoss")
    private String loss;

    @Column(name = "adhNetProfit")
    private String netProfit;

    @Column(name = "adhCumulativeLoss")
    private String cumulativeLoss;

    @Column(name = "adhImbalance")
    private String imbalance;

    @Column(name = "adhCoverDeficit")
    private String coverDeficit;

    @Column(name = "adhShareCapital")
    private String shareCapital;

    @Column(name = "adhWorkingCapital")
    private String workingCapital;

    @Column(name = "adhLoanAdvances")
    private String loanAdvances;

    @Column(name = "adhLoanOutstanding")
    private String loanOutstanding;

    @Column(name = "adhLoanOverDue")
    private String loanOverdue;

    @Column(name = "adhStatutoryReserves")
    private String statutoryReserves;

    @Column(name = "adhOtherReserves")
    private String otherReserves;

    @Column(name = "adhBorrowings")
    private String borrowings;

    @Column(name = "adhYearStart")
    private Integer yearStart;

    @Column(name = "adhYearEnd")
    private Integer yearEnd;

    @Column(name = "adhUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "adhUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static AuditDetailsHistory setUpObject(AuditDetails ad, Integer updatedBy) {
		AuditDetailsHistory adh = new AuditDetailsHistory();
		adh.setAuditDetailsId(ad.getId());
		adh.setSocietyId(ad.getSocietyId());
		adh.setYearStart(ad.getYearStart());
		adh.setYearEnd(ad.getYearEnd());
		adh.setProfit(ad.getProfit());
		adh.setLoss(ad.getLoss());
		adh.setNetProfit(ad.getNetProfit());
		adh.setCumulativeLoss(ad.getCumulativeLoss());
		adh.setImbalance(ad.getImbalance());
		adh.setCoverDeficit(ad.getCoverDeficit());
		adh.setShareCapital(ad.getShareCapital());
		adh.setWorkingCapital(ad.getWorkingCapital());
		adh.setLoanAdvances(ad.getLoanAdvances());
		adh.setLoanOutstanding(ad.getLoanOutstanding());
		adh.setLoanOverdue(ad.getLoanOverdue());
		adh.setStatutoryReserves(ad.getStatutoryReserves());
		adh.setOtherReserves(ad.getOtherReserves());
		adh.setBorrowings(ad.getBorrowings());
		adh.setUpdatedBy(updatedBy);
		return adh;
	}
}
