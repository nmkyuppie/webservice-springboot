package com.cas.business.entity;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name = "stockVerification")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class StockVerification implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "svId")
    private Integer id;

	@Column(name = "svSocietyId")
    private Integer societyId;

    @Column(name = "svDate")
    private String date;

    @Column(name = "svDefects")
    private String defects;

    @Column(name= "svOfficerName")
    private String officerName;

    @Column(name = "svFineAmount")
    private BigDecimal fineAmount;

    @Column(name= "svFineRemittance")
    private String fineRemittance;

    @Column(name= "svFineDate")
    private String fineDate;

    @Column(name= "svFineChallanNumber")
    private String fineChallanNumber;

}
