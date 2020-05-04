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

@Entity(name = "auditDetails")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AuditDetails implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "adId")
    private Integer id;

    @Column(name = "adSocietyId")
    private Integer societyId;

    @Column(name = "adProfit")
    private String profit;

    @Column(name = "adLoss")
    private String loss;

    @Column(name = "adNetProfit")
    private String netProfit;

    @Column(name = "adCumulativeLoss")
    private String cumulativeLoss;

    @Column(name = "adImbalance")
    private String imbalance;

    @Column(name = "adCoverDeficit")
    private String coverDeficit;

    @Column(name = "adShareCapital")
    private String shareCapital;

    @Column(name = "adWorkingCapital")
    private String workingCapital;

    @Column(name = "adLoanAdvances")
    private String loanAdvances;

    @Column(name = "adLoanOutstanding")
    private String loanOutstanding;

    @Column(name = "adLoanOverDue")
    private String loanOverdue;

    @Column(name = "adStatutoryReserves")
    private String statutoryReserves;

    @Column(name = "adOtherReserves")
    private String otherReserves;

    @Column(name = "adBorrowings")
    private String borrowings;

    @Column(name = "adYearStart")
    private Integer yearStart;

    @Column(name = "adYearEnd")
    private Integer yearEnd;
}
