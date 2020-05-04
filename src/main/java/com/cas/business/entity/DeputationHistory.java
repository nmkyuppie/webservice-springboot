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

@Entity(name = "deputationHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class DeputationHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "dphId")
    private Integer id;

	@Column(name = "dphDeputationId")
    private Integer deputationId;

	@Column(name = "dphSocietyId")
    private Integer societyId;

    @Column(name = "dphEmployee")
    private String employee;

    @Column(name = "dphPost")
    private String post;

    @Column(name = "dphBankSociety")
    private String bankSociety;

    @Column(name = "dphStartDate")
    private String startDate;
    
    @Column(name = "dphEndDate")
    private String endDate;

    @Column(name = "dphUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "dphUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static DeputationHistory setUpObject(Deputation d, Integer updatedBy) {
		DeputationHistory dph = new DeputationHistory();
		dph.setDeputationId(d.getId());
		dph.setSocietyId(d.getSocietyId());
		dph.setEmployee(d.getEmployee());
		dph.setPost(d.getPost());
		dph.setBankSociety(d.getBankSociety());
		dph.setStartDate(d.getStartDate());
		dph.setEndDate(d.getEndDate());
		dph.setUpdatedBy(updatedBy);
		return dph;
	}

}
