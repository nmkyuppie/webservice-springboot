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

@Entity(name = "enquiryhistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class EnquiryHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ehId")
    private Integer id;

	@Column(name = "ehEnquiryId")
    private Integer enquiryId;

    @Column(name = "ehSocietyId")
    private Integer societyId;

    @Column(name = "ehSection")
    private String section;

    @Column(name = "ehDate")
    private String enquiryDate;

    @Column(name = "ehCompletionDate")
    private String completionDate;

    @Column(name = "ehCurrentStatus")
    private String currentStatus;

    @Column(name = "ehOfficerName")
    private String officerName;

    @Column(name = "ehReportDate")
    private String reportDate;

    @Column(name = "ehResultText")
    private String resultText;

    @Column(name = "ehActionText")
    private String actionText;

    @Column(name = "ehDocumentId")
    private String documentId;

    @Column(name = "ehFileNames")
    private String fileNames;

    @Column(name = "ehUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "ehUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static EnquiryHistory setUpObject(Enquiry e, Integer updatedBy) {
		EnquiryHistory eh = new EnquiryHistory();
		eh.setEnquiryId(e.getId());
		eh.setSocietyId(e.getSocietyId());
		eh.setSection(e.getSection());
		eh.setEnquiryDate(e.getEnquiryDate());
		eh.setCompletionDate(e.getCompletionDate());
		eh.setCurrentStatus(e.getCurrentStatus());
		eh.setOfficerName(e.getOfficerName());
		eh.setReportDate(e.getReportDate());
		eh.setResultText(e.getResultText());
		eh.setActionText(e.getActionText());
		eh.setDocumentId(e.getDocumentId());
		eh.setFileNames(e.getFileNames());
		eh.setUpdatedBy(updatedBy);
		return eh;
	}
}
