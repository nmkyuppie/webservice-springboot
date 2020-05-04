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

@Entity(name = "promotionDetails")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PromotionDetails implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "pdId")
    private Integer id;
	
	@Column(name = "pdSocietyId")
    private Integer societyId;

	@Column(name = "pdName")
    private String name;

    @Column(name = "pdPromotedTo")
    private String promotedTo;

    @Column(name = "pdCurrentCadre")
    private String currentCadre;

    @Column(name= "pdPromotedOn")
    private String promotedOn;

    @Column(name= "pdApprovedBy")
    private String approvedBy;

    @Column(name= "pdPromotedOrDePromoted")
    private Boolean promotedOrDePromoted = true;

}
