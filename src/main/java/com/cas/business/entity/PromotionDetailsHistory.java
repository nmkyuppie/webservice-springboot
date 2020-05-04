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

@Entity(name = "promotionDetailsHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PromotionDetailsHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "pdhId")
    private Integer id;
	
	@Column(name = "pdhPromotionDetailsId")
    private Integer promotionDetailsId;
	
	@Column(name = "pdhSocietyId")
    private Integer societyId;

	@Column(name = "pdhName")
    private String name;

    @Column(name = "pdhPromotedTo")
    private String promotedTo;

    @Column(name = "pdhCurrentCadre")
    private String currentCadre;

    @Column(name= "pdhPromotedOn")
    private String promotedOn;

    @Column(name= "pdhApprovedBy")
    private String approvedBy;

    @Column(name= "pdhPromotedOrDePromoted")
    private Boolean promotedOrDePromoted = true;

    @Column(name = "pdhUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "pdhUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static PromotionDetailsHistory setUpObject(PromotionDetails pd, Integer updatedBy) {
		PromotionDetailsHistory pdh = new PromotionDetailsHistory();
		pdh.setPromotionDetailsId(pd.getId());
		pdh.setSocietyId(pd.getSocietyId());
		pdh.setName(pd.getName());
		pdh.setPromotedTo(pd.getPromotedTo());
		pdh.setCurrentCadre(pd.getCurrentCadre());
		pdh.setPromotedOn(pd.getPromotedOn());
		pdh.setApprovedBy(pd.getApprovedBy());
		pdh.setPromotedOrDePromoted(pd.getPromotedOrDePromoted());
		pdh.setUpdatedBy(updatedBy);
		return pdh;
	}

}
