package com.cas.business.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name = "enquiry")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Enquiry implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "eId")
    private Integer id;

    @Column(name = "eSocietyId")
    private Integer societyId;

    @Column(name = "eSection")
    private String section;

    @Column(name = "eDate")
    private String enquiryDate;

    @Column(name = "eCompletionDate")
    private String completionDate;

    @Column(name = "eCurrentStatus")
    private String currentStatus;

    @Column(name = "eOfficerName")
    private String officerName;

    @Column(name = "eReportDate")
    private String reportDate;

    @Column(name = "eResultText")
    private String resultText;

    @Column(name = "eActionText")
    private String actionText;

    @Column(name = "eDocumentId")
    private String documentId;

    @Column(name = "eFileNames")
    private String fileNames;
    
    @OneToMany(mappedBy = "enquiry", fetch = FetchType.EAGER)
    @JsonManagedReference
    private Set<Document> documents;
}
