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

@Entity(name = "courtCaseHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CourtCaseHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cchId")
    private Integer id;

    @Column(name = "cchCourtCaseId")
    private Integer courtCaseId;

    @Column(name = "cchSocietyId")
    private Integer societyId;

    @Column(name = "cchDate")
    private String date;

    @Column(name = "cchPetitioner")
    private String petitioner;

    @Column(name = "cchRespondent")
    private String respondent;

    @Column(name = "cchHearingNumber")
    private Integer hearingNumber;

    @Column(name = "cchCurrentStatus")
    private String currentStatus;

    @Column(name = "cchAffidavitFDate")
    private String affidavitFDate;

    @Column(name = "cchJudgementDate")
    private String judgementDate;

    @Column(name = "cchDocumentId")
    private String documentId;

    @Column(name = "cchFileNames")
    private String fileNames;

    @Column(name = "cchUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "cchUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static CourtCaseHistory setUpObject(CourtCase cc, Integer updatedBy) {
		CourtCaseHistory cch = new CourtCaseHistory();
		cch.setCourtCaseId(cc.getId());
		cch.setSocietyId(cc.getSocietyId());
		cch.setDate(cc.getDate());
		cch.setPetitioner(cc.getPetitioner());
		cch.setRespondent(cc.getRespondent());
		cch.setHearingNumber(cc.getHearingNumber());
		cch.setCurrentStatus(cc.getCurrentStatus());
		cch.setAffidavitFDate(cc.getAffidavitFDate());
		cch.setJudgementDate(cc.getJudgementDate());
		cch.setDocumentId(cc.getDocumentId());
		cch.setFileNames(cc.getFileNames());
		cch.setUpdatedBy(updatedBy);
		return cch;
	}
}
