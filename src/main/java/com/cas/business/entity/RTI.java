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

@Entity(name = "rti")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RTI implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rtiId")
    private Integer id;

    @Column(name = "rtiSocietyId")
    private Integer societyId;

    @Column(name = "rtiReceivedDate")
    private String receivedDate;

    @Column(name = "rtiCompletionDate")
    private String completionDate;

    @Column(name = "rtiPetitionerName")
    private String petitionerName;

    @Column(name = "rtiAddress")
    private String address;

    @Column(name = "rtiSubject")
    private String subject;

    @Column(name = "rtiDescription")
    private String description;

    @Column(name = "rtiReportDate")
    private String reportDate;

    @Column(name = "rtiPendingReason")
    private String pendingReason;

    @Column(name = "rtiDocumentId")
    private String documentId;

    @Column(name = "rtiFileNames")
    private String fileNames;
    
    @OneToMany(mappedBy = "rti", fetch = FetchType.EAGER)
    @JsonManagedReference
    private Set<Document> documents;
}
