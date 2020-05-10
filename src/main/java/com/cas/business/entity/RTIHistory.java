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

@Entity(name = "rtiHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RTIHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rtihId")
    private Integer id;

    @Column(name = "rtihRTIId")
    private Integer rtiId;

    @Column(name = "rtihSocietyId")
    private Integer societyId;

    @Column(name = "rtihReceivedDate")
    private String receivedDate;

    @Column(name = "rtihCompletionDate")
    private String completionDate;

    @Column(name = "rtihPetitionerName")
    private String petitionerName;

    @Column(name = "rtihAddress")
    private String address;

    @Column(name = "rtihSubject")
    private String subject;

    @Column(name = "rtihDescription")
    private String description;

    @Column(name = "rtihReportDate")
    private String reportDate;

    @Column(name = "rtihPendingReason")
    private String pendingReason;

    @Column(name = "rtihDocumentId")
    private String documentId;

    @Column(name = "rtihFileNames")
    private String fileNames;

    @Column(name = "rtihUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "rtihUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static RTIHistory setUpObject(RTI rti, Integer updatedBy) {
		RTIHistory rtih = new RTIHistory();
		rtih.setRtiId(rti.getId());
		rtih.setSocietyId(rti.getSocietyId());
		rtih.setReceivedDate(rti.getReceivedDate());
		rtih.setCompletionDate(rti.getCompletionDate());
		rtih.setPetitionerName(rti.getPetitionerName());
		rtih.setAddress(rti.getAddress());
		rtih.setSubject(rti.getSubject());
		rtih.setDescription(rti.getDescription());
		rtih.setReportDate(rti.getReportDate());
		rtih.setPendingReason(rti.getPendingReason());
		rtih.setDocumentId(rti.getDocumentId());
		rtih.setFileNames(rti.getFileNames());
		rtih.setUpdatedBy(updatedBy);
		return rtih;
	}
}
