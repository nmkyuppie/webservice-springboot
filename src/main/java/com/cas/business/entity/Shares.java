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

@Entity(name = "shares")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Shares implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "shId")
    private Integer id;

	@Column(name = "shSocietyId")
    private Integer societyId;

    @Column(name = "shYearStart")
    private Integer yearStart;

    @Column(name = "shYearEnd")
    private Integer yearEnd;

    @Column(name= "shType")
    private String type;

    @Column(name = "shAmount")
    private BigDecimal amount;

}
