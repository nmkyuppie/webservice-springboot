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

@Entity(name = "bonusDetailsHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BonusDetailsHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "bonushId")
    private Integer id;

	@Column(name = "bonushSocietyId")
    private Integer societyId;

	@Column(name = "bonushBonusDetailsId")
    private Integer bonusDetailsId;

    @Column(name = "bonushEmployee")
    private String employee;

    @Column(name = "bonushAmount")
    private BigDecimal amount;

    @Column(name = "bonushDate")
    private String date;

    @Column(name = "bonushApprovedBy")
    private String approvedBy;

    @Column(name = "bonushUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "bonushUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static BonusDetailsHistory setUpObject(BonusDetails b, Integer updatedBy) {
		BonusDetailsHistory bdh = new BonusDetailsHistory();
		bdh.setBonusDetailsId(b.getId());
		bdh.setSocietyId(b.getSocietyId());
		bdh.setEmployee(b.getEmployee());
		bdh.setDate(b.getDate());
		bdh.setApprovedBy(b.getApprovedBy());
		bdh.setAmount(b.getAmount());
		bdh.setUpdatedBy(updatedBy);
		return bdh;
	}

}
