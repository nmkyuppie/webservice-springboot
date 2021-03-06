package com.cas.business.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name = "circle")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Circle implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
    @Column(name = "cId")
    private Integer id;

    @Column(name = "cDIstrictId")
    private Integer districtId;

    @Column(name = "cName")
    private String name;
}
