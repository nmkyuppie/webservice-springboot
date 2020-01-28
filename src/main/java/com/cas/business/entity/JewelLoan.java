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

@Entity(name = "bs_jewelandshgloan")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class JewelLoan implements Serializable {

	private static final long serialVersionUID = 7146274284775558256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer sid;

    @Column(name = "societyname")
    private String societyName;

    @Column(name = "jl_yeartarget")
    private Integer jlYearTarget;

    @Column(name = "jl_target_per_uptomonth")
    private Integer jlTargetPerUptoMonth;

    @Column(name = "jl_no_uptomonth")
    private Integer jlNoUptoMonth;

    @Column(name = "jl_totalamount_uptomonth")
    private Integer jlTotalAmountUptoMonth;

    @Column(name = "jl_improve_per_target")
    private Integer jlImprovePerTarget;

    @Column(name = "jl_improve_per_yeartarget")
    private Integer jlImprovePerYearTarget;

    @Column(name = "hg_yeartarget")
    private Integer hgYearTarget;

    @Column(name = "hg_target_per_uptomonth")
    private Integer hgTargetPerUptoMonth;

    @Column(name = "hg_no_uptomonth")
    private Integer hgNoUptoMonth;

    @Column(name = "hg_totalamount_uptomonth")
    private Integer hgTotalAmountUptoMonth;

    @Column(name = "hg_improve_per_target")
    private Integer hgImprovePerTarget;

    @Column(name = "hg_improve_per_yeartarget")
    private Integer hgImprovePerYearTarget;

    @Column(name = "hg_no_ofmember")
    private Integer hgNoOfMember;
}
