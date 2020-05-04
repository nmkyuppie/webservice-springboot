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

@Entity(name = "deputation")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Deputation implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "dpId")
    private Integer id;

	@Column(name = "dpSocietyId")
    private Integer societyId;

    @Column(name = "dpEmployee")
    private String employee;

    @Column(name = "dpPost")
    private String post;

    @Column(name = "dpBankSociety")
    private String bankSociety;

    @Column(name = "dpStartDate")
    private String startDate;
    
    @Column(name = "dpEndDate")
    private String endDate;

}
