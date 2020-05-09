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

@Entity(name = "courtCase")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CourtCase implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ccId")
    private Integer id;

    @Column(name = "ccSocietyId")
    private Integer societyId;

    @Column(name = "ccDate")
    private String date;

    @Column(name = "ccPetitioner")
    private String petitioner;

    @Column(name = "ccRespondent")
    private String respondent;

    @Column(name = "ccHearingNumber")
    private Integer hearingNumber;

    @Column(name = "ccCurrentStatus")
    private String currentStatus;

    @Column(name = "ccAffidavitFDate")
    private String affidavitFDate;

    @Column(name = "ccJudgementDate")
    private String judgementDate;

    @Column(name = "ccDocumentId")
    private String documentId;

    @Column(name = "ccFileNames")
    private String fileNames;
    
    @OneToMany(mappedBy = "courtCase", fetch = FetchType.EAGER)
    @JsonManagedReference
    private Set<Document> documents;
}
