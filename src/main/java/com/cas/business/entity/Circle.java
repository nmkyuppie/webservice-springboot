package com.cas.business.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name = "bs_locationdetails")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Circle implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
    @Column(name = "locationid")
    private Integer locationId;

    @Column(name = "circleid")
    private Integer circleId;

    @Column(name = "circlename")
    private String circleName;
}
