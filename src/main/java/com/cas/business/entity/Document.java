package com.cas.business.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity(name = "document")
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(exclude = {"petition", "inspection", "enquiry", "courtCase"})
@ToString(exclude = {"petition", "inspection"})
public class Document implements Serializable {

	private static final long serialVersionUID = -5705651634213468482L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "dId")
    private Integer id;

	@Column(name = "dSocietyId")
    private Integer societyId;

    @Column(name = "dGroupId")
    private String groupId;

    @Column(name = "dFileName")
    private String fileName;

    @Column(name = "dIsActive")
    private Boolean isActive = true;

    @Column(name = "dCreatedBy")
    private Integer createdBy;
    
    @Column(name = "dCreatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdOn;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="dGroupId", referencedColumnName = "pDocumentId", nullable=false, insertable = false, updatable = false)
    @JsonBackReference
    private Petition petition;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="dGroupId", referencedColumnName = "iDocumentId", nullable=false, insertable = false, updatable = false)
    @JsonBackReference
    private Inspection inspection;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="dGroupId", referencedColumnName = "eDocumentId", nullable=false, insertable = false, updatable = false)
    @JsonBackReference
    private Enquiry enquiry;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="dGroupId", referencedColumnName = "ccDocumentId", nullable=false, insertable = false, updatable = false)
    @JsonBackReference
    private CourtCase courtCase;

}
