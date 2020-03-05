package com.cas.business.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name = "district")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class District implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
    @Column(name = "dId")
    private Integer id;

    @Column(name = "dStateId")
    private Integer stateId;

    @Column(name = "dName")
    private String name;
}
