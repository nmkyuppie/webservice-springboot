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

@Entity(name = "inspection")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Inspection implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "iId")
    private Integer id;

	@Column(name = "iSocietyId")
    private Integer societyId;

    @Column(name = "iDate")
    private String date;
    
    @Column(name = "iInspector")
    private String inspector;
    
    @Column(name = "iInspectorName")
    private String inspectorName;
    
    @Column(name = "iReason")
    private String reason;
    
    @Column(name = "iReport")
    private String report;
    
    @Column(name = "iActionTaken")
    private String actionTaken;

    @Column(name = "iDocumentId")
    private String documentId;

    @Column(name = "iFileNames")
    private String fileNames;
    
    @OneToMany(mappedBy = "inspection", fetch = FetchType.EAGER)
    @JsonManagedReference
//    @JoinColumn(name = "dGroupId", referencedColumnName = "iDocumentId", nullable = false, insertable = false, updatable = false)
    private Set<Document> documents;

}
