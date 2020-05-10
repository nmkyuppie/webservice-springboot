package com.cas.business.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name = "specialReport")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SpecialReport implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "srId")
	private Integer id;

	@Column(name = "srSocietyId")
	private Integer societyId;

	@Column(name = "srName")
	private String name;

	@Column(name = "srYearStart")
	private Integer yearStart;

	@Column(name = "srYearEnd")
	private Integer yearEnd;

	@Column(name = "srReceivedDate")
	private String receivedDate;
	
	@Column(name = "srActionDate")
	private String actionDate;

	@Column(name = "srIsCompleted")
	private Boolean isCompleted;

	@Column(name = "srPendingReason")
	private String pendingReason;

}
