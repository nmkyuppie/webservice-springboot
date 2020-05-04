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

@Entity(name = "boardDetailsHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardDetailsHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bdhId")
    private Integer id;

    @Column(name = "bdhSocietyId")
    private Integer societyId;

    @Column(name = "bdhBoardDetailsId")
    private Integer boardDetailsId;

    @Column(name = "bdhName")
    private String name;

    @Column(name = "bdhPosition")
    private String position;

    @Column(name = "bdhIsActive")
    private Boolean isActive = true;

    @Column(name = "bdhPhoneNumber")
    private String phoneNumber;

    @Column(name = "bdhAddress")
    private String address;

    @Column(name = "bdhCommunity")
    private String community;

    @Column(name = "bdhAadhaar")
    private String aadhaar;

    @Column(name = "bdhGender")
    private String gender;

    @Column(name = "bdhElectedYearFrom")
    private Integer electedYearFrom;

    @Column(name = "bdhElectedYearTo")
    private Integer electedYearTo;

    @Column(name = "bdhUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "bdhUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static BoardDetailsHistory setUpObject(BoardDetails bd, Integer updatedBy) {
		BoardDetailsHistory bdh = new BoardDetailsHistory();
		bdh.setBoardDetailsId(bd.getId());
		bdh.setName(bd.getName());
		bdh.setSocietyId(bd.getSocietyId());
		bdh.setPosition(bd.getPosition());
		bdh.setIsActive(bd.getIsActive());
		bdh.setPhoneNumber(bd.getPhoneNumber());
		bdh.setAddress(bd.getAddress());
		bdh.setCommunity(bd.getCommunity());
		bdh.setAadhaar(bd.getAadhaar());
		bdh.setGender(bd.getGender());
		bdh.setElectedYearFrom(bd.getElectedYearFrom());
		bdh.setElectedYearTo(bd.getElectedYearTo());
		bdh.setUpdatedBy(updatedBy);
		return bdh;
	}
}
