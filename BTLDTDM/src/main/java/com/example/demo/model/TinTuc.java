package com.example.demo.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name="tintuc")
public class TinTuc implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idtintuc")
	private int idtintuc;
	@Column(name="tieude")
	private String tieude;
	@Column(name="linkanh")
	private String linkanh;
	@Column(name="noidung")
	private String noidung;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="thoigian")
	private Date thoigian;
	@Column(name="file")
	private String file;
	
	public TinTuc(){}

	public TinTuc(String tieude, String linkanh, String noidung, Date thoigian, String file) {
		super();
		this.tieude = tieude;
		this.linkanh = linkanh;
		this.noidung = noidung;
		this.thoigian = thoigian;
		this.file = file;
	}

	public String getFile() {
		return file;
	}


	public void setFile(String file) {
		this.file = file;
	}

	public int getIdtintuc() {
		return idtintuc;
	}
	public void setIdtintuc(int idtintuc) {
		this.idtintuc = idtintuc;
	}
	public String getTieude() {
		return tieude;
	}
	public void setTieude(String tieude) {
		this.tieude = tieude;
	}
	public String getNoidung() {
		return noidung;
	}
	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}
	public Date getThoigian() {
		return thoigian;
	}
	public void setThoigian(Date thoigian) {
		this.thoigian = thoigian;
	}
	public String getLinkanh() {
		return linkanh;
	}

	public void setLinkanh(String linkanh) {
		this.linkanh = linkanh;
	}

	
	
}
