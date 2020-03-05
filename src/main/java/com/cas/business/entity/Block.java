package com.cas.business.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name = "block")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Block implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
    @Column(name = "bId")
    private Integer id;

    @Column(name = "bCircleId")
    private Integer circleId;

    @Column(name = "bName")
    private String name;
}
