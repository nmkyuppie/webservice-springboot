package com.cas.business.entity;

import java.io.Serializable;
import java.math.BigDecimal;
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

@Entity(name = "stockVerificationHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class StockVerificationHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "svhId")
    private Integer id;

	@Column(name = "svhStockVerificationId")
    private Integer stockVerificationId;

	@Column(name = "svhSocietyId")
    private Integer societyId;

    @Column(name = "svhDate")
    private String date;

    @Column(name = "svhDefects")
    private String defects;

    @Column(name= "svhOfficerName")
    private String officerName;

    @Column(name = "svhFineAmount")
    private BigDecimal fineAmount;

    @Column(name= "svhFineRemittance")
    private String fineRemittance;

    @Column(name= "svhFineDate")
    private String fineDate;

    @Column(name= "svhFineChallanNumber")
    private String fineChallanNumber;

    @Column(name = "svhUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "svhUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static StockVerificationHistory setUpObject(StockVerification sv, Integer updatedBy) {
		StockVerificationHistory svh = new StockVerificationHistory();
		svh.setStockVerificationId(sv.getId());
		svh.setSocietyId(sv.getSocietyId());
		svh.setDate(sv.getDate());
		svh.setDefects(sv.getDefects());
		svh.setOfficerName(sv.getOfficerName());
		svh.setFineAmount(sv.getFineAmount());
		svh.setFineRemittance(sv.getFineRemittance());
		svh.setFineDate(sv.getFineDate());
		svh.setFineChallanNumber(sv.getFineChallanNumber());
		svh.setUpdatedBy(updatedBy);
		return svh;
	}

}
