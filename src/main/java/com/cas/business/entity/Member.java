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

@Entity(name = "member")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "mId")
    private Integer id;

    @Column(name = "mSocietyId")
    private Integer societyId;

    @Column(name = "mClass")
    private String memberClass;

    @Column(name = "mYearStart")
    private Integer yearStart;

    @Column(name = "mYearEnd")
    private Integer yearEnd;

    @Column(name = "mCount")
    private Integer count;

    @Column(name = "mAmount")
    private Float amount;
}
