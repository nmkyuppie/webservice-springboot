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

@Entity(name = "petition")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Petition implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pId")
    private Integer id;

    @Column(name = "pSocietyId")
    private Integer societyId;

    @Column(name = "pAgainstEmployee")
    private String againstEmployee;

    @Column(name = "pDocumentId")
    private String documentId;

    @Column(name = "pFileNames")
    private String fileNames;

    @Column(name = "pReceivedDate")
    private String receivedDate;

    @Column(name = "pCompletionDate")
    private String completionDate;

    @Column(name = "pStatus")
    private String status;

    @Column(name = "pActionTaken")
    private String actionTaken;
    
    @OneToMany(mappedBy = "petition", fetch = FetchType.EAGER)
    @JsonManagedReference
    private Set<Document> documents;
}
