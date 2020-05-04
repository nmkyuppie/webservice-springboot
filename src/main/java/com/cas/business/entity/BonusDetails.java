package com.cas.business.entity;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name = "bonusDetails")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BonusDetails implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "bonusId")
    private Integer id;

	@Column(name = "bonusSocietyId")
    private Integer societyId;

    @Column(name = "bonusEmployee")
    private String employee;

    @Column(name = "bonusAmount")
    private BigDecimal amount;

    @Column(name = "bonusDate")
    private String date;

    @Column(name = "bonusApprovedBy")
    private String approvedBy;

}
