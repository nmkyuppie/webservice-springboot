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

@Entity(name = "specialReportHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SpecialReportHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "srhId")
	private Integer id;

	@Column(name = "srhspecialReportId")
	private Integer specialReportId;

	@Column(name = "srhSocietyId")
	private Integer societyId;

	@Column(name = "srhName")
	private String name;

	@Column(name = "srhYearStart")
	private Integer yearStart;

	@Column(name = "srhYearEnd")
	private Integer yearEnd;

	@Column(name = "srhReceivedDate")
	private String receivedDate;

	@Column(name = "srhActionDate")
	private String actionDate;

	@Column(name = "srhIsCompleted")
	private Boolean isCompleted;

	@Column(name = "srhPendingReason")
	private String pendingReason;

	@Column(name = "srhUpdatedBy")
	private Integer updatedBy;

	@Column(name = "srhUpdatedOn", insertable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date updatedOn;

	public static SpecialReportHistory setUpObject(SpecialReport sr, Integer updatedBy) {
		SpecialReportHistory srh = new SpecialReportHistory();
		srh.setSpecialReportId(sr.getId());
		srh.setSocietyId(sr.getSocietyId());
		srh.setName(sr.getName());
		srh.setYearStart(sr.getYearStart());
		srh.setYearEnd(sr.getYearEnd());
		srh.setReceivedDate(sr.getReceivedDate());
		srh.setActionDate(sr.getActionDate());
		srh.setIsCompleted(sr.getIsCompleted());
		srh.setPendingReason(sr.getPendingReason());
		srh.setUpdatedBy(updatedBy);
		return srh;
	}

}
