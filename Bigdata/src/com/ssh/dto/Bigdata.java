package com.ssh.dto;

/**
 * Bigdata entity. @author MyEclipse Persistence Tools
 */

public class Bigdata implements java.io.Serializable {

	// Fields

	private Integer id;
	private String keys;
	private Integer frequency;
	private Double weight;

	// Constructors

	/** default constructor */
	public Bigdata() {
	}

	/** full constructor */
	public Bigdata(String keys, Integer frequency, Double weight) {
		this.keys = keys;
		this.frequency = frequency;
		this.weight = weight;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getKeys() {
		return this.keys;
	}

	public void setKeys(String keys) {
		this.keys = keys;
	}

	public Integer getFrequency() {
		return this.frequency;
	}

	public void setFrequency(Integer frequency) {
		this.frequency = frequency;
	}

	public Double getWeight() {
		return this.weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

}