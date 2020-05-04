package com.cas.business.entity;

import java.io.Serializable;
import java.math.BigDecimal;
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

@Entity(name = "memberHistory")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberHistory implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "mhId")
    private Integer id;

    @Column(name = "mhMemberId")
    private Integer memberId;

    @Column(name = "mhSocietyId")
    private Integer societyId;

    @Column(name = "mhClass")
    private String memberClass;

    @Column(name = "mhYearStart")
    private Integer yearStart;

    @Column(name = "mhYearEnd")
    private Integer yearEnd;

    @Column(name = "mhCount")
    private Integer count;

    @Column(name = "mhAmount")
    private BigDecimal amount;

    @Column(name = "mhUpdatedBy")
    private Integer updatedBy;
    
    @Column(name = "mhUpdatedOn", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedOn;

	public static MemberHistory setUpObject(Member m, Integer updatedBy) {
		MemberHistory mh = new MemberHistory();
		mh.setMemberId(m.getId());
		mh.setSocietyId(m.getSocietyId());
		mh.setMemberClass(m.getMemberClass());
		mh.setYearStart(m.getYearStart());
		mh.setYearEnd(m.getYearEnd());
		mh.setCount(m.getCount());
		mh.setAmount(m.getAmount());
		mh.setUpdatedBy(updatedBy);
		return mh;
	}
    
}

