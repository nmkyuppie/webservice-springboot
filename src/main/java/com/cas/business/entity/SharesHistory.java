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

@Entity(name = "sharesHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SharesHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "shhId")
    private Integer id;

    @Column(name = "shhSharesId")
    private Integer sharesId;

	@Column(name = "shhSocietyId")
    private Integer societyId;

    @Column(name = "shhYearStart")
    private Integer yearStart;

    @Column(name = "shhYearEnd")
    private Integer yearEnd;

    @Column(name= "shhType")
    private String type;

    @Column(name = "shhAmount")
    private BigDecimal amount;

    @Column(name = "shhUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "shhUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static SharesHistory setUpObject(Shares sh, Integer updatedBy) {
		SharesHistory shh = new SharesHistory();
		shh.setSharesId(sh.getId());
		shh.setSocietyId(sh.getSocietyId());
		shh.setYearStart(sh.getYearStart());
		shh.setYearEnd(sh.getYearEnd());
		shh.setType(sh.getType());
		shh.setAmount(sh.getAmount());
		shh.setUpdatedBy(updatedBy);
		return shh;
	}

}
