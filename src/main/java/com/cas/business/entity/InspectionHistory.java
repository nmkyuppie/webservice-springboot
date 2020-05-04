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

@Entity(name = "inspectionHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class InspectionHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ihId")
    private Integer id;

	@Column(name = "ihInspectionId")
    private Integer inspectionId;

	@Column(name = "ihSocietyId")
    private Integer societyId;

    @Column(name = "ihDate")
    private String date;
    
    @Column(name = "ihInspector")
    private String inspector;
    
    @Column(name = "ihInspectorName")
    private String inspectorName;
    
    @Column(name = "ihReason")
    private String reason;
    
    @Column(name = "ihReport")
    private String report;
    
    @Column(name = "ihActionTaken")
    private String actionTaken;

    @Column(name = "ihDocumentId")
    private String documentId;

    @Column(name = "ihFileNames")
    private String fileNames;

    @Column(name = "ihUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "ihUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static InspectionHistory setUpObject(Inspection i, Integer updatedBy) {
		InspectionHistory ih = new InspectionHistory();
		ih.setInspectionId(i.getId());
		ih.setSocietyId(i.getSocietyId());
		ih.setDate(i.getDate());
		ih.setInspector(i.getInspector());
		ih.setInspectorName(i.getInspectorName());
		ih.setReason(i.getReason());
		ih.setReport(i.getReport());
		ih.setActionTaken(i.getActionTaken());
		ih.setDocumentId(i.getDocumentId());
		ih.setFileNames(i.getFileNames());
		ih.setUpdatedBy(updatedBy);
		return ih;
	}

}
