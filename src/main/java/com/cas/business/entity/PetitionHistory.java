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

@Entity(name = "petitionHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PetitionHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "phId")
    private Integer id;

    @Column(name = "phPetitionId")
    private Integer petitionId;

    @Column(name = "phSocietyId")
    private Integer societyId;

    @Column(name = "phAgainstEmployee")
    private String againstEmployee;

    @Column(name = "phDocumentId")
    private String documentId;

    @Column(name = "phFileNames")
    private String fileNames;

    @Column(name = "phReceivedDate")
    private String receivedDate;

    @Column(name = "phCompletionDate")
    private String completionDate;

    @Column(name = "phStatus")
    private String status;

    @Column(name = "phActionTaken")
    private String actionTaken;

    @Column(name = "phUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "phUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static PetitionHistory setUpObject(Petition p, Integer updatedBy) {
		PetitionHistory ph = new PetitionHistory();
		ph.setPetitionId(p.getId());
		ph.setSocietyId(p.getSocietyId());
		ph.setAgainstEmployee(p.getAgainstEmployee());
		ph.setDocumentId(p.getDocumentId());
		ph.setFileNames(p.getFileNames());
		ph.setReceivedDate(p.getReceivedDate());
		ph.setCompletionDate(p.getCompletionDate());
		ph.setStatus(p.getStatus());
		ph.setActionTaken(p.getActionTaken());
		ph.setUpdatedBy(updatedBy);
		return ph;
	}
}
