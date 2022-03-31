package Entity;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

@Entity
@Table(name = "CHITIET_HOADON")
public class CTHoaDon {
	@Id
	@GeneratedValue
	@Column(name = "MACT")
	private int MaCT;
	@ManyToOne
	@JoinColumn(name = "MAHD")
	HoaDon HoaDon;
	
	@ManyToOne
	@JoinColumn(name = "MASP")
	SanPham SanPham;
	
	@Column(name = "SOLUONG")
	private int SoLuong;
	
	@Column(name = "GHICHU")
	private String GhiChu;

	

	public HoaDon getHoaDon() {
		return HoaDon;
	}

	public void setHoaDon(HoaDon hoaDon) {
		HoaDon = hoaDon;
	}

	public SanPham getSanPham() {
		return SanPham;
	}

	public void setSanPham(SanPham sanPham) {
		SanPham = sanPham;
	}

	public int getSoLuong() {
		return SoLuong;
	}

	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}

	public String getGhiChu() {
		return GhiChu;
	}

	public void setGhiChu(String ghiChu) {
		GhiChu = ghiChu;
	}
	
	
	
}
