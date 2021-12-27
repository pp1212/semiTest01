package com.sist.vo;

public class FashionVO {
	private int fashion_no;	
	private String top_type;	
	private String bottoms_type;	
	private String outer_type;	
	private String etc_type;
	
	public FashionVO(int fashion_no, String top_type, String bottoms_type, String outer_type, String etc_type) {
		super();
		this.fashion_no = fashion_no;
		this.top_type = top_type;
		this.bottoms_type = bottoms_type;
		this.outer_type = outer_type;
		this.etc_type = etc_type;
	}
	
	//4개짜리
	public FashionVO(String top_type, String bottoms_type, String outer_type, String etc_type) {
		super();
		this.top_type = top_type;
		this.bottoms_type = bottoms_type;
		this.outer_type = outer_type;
		this.etc_type = etc_type;
	}

	public FashionVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getFashion_no() {
		return fashion_no;
	}

	public void setFashion_no(int fashion_no) {
		this.fashion_no = fashion_no;
	}

	public String getTop_type() {
		return top_type;
	}

	public void setTop_type(String top_type) {
		this.top_type = top_type;
	}

	public String getBottoms_type() {
		return bottoms_type;
	}

	public void setBottoms_type(String bottoms_type) {
		this.bottoms_type = bottoms_type;
	}

	public String getOuter_type() {
		return outer_type;
	}

	public void setOuter_type(String outer_type) {
		this.outer_type = outer_type;
	}

	public String getEtc_type() {
		return etc_type;
	}

	public void setEtc_type(String etc_type) {
		this.etc_type = etc_type;
	}

	
}
