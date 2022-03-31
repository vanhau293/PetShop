package Entity;

import java.io.Serializable;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.CascadeType;
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
import javax.persistence.Transient;


@Entity
@Table(name = "GIOHANG")

public class GioHang {

	@Id
	@GeneratedValue
	@Column(name = "MAGH")
	private int MaGH;
	
	@ManyToOne
	@JoinColumn(name = "MAKH")
	private KhachHang KhachHang;
	
	@ManyToOne
	@JoinColumn(name = "MASP")
	private SanPham SanPham;
	
	@Column(name = "SOLUONG")
	private int SoLuong;


	public int getMaGH() {
		return MaGH;
	}


	public void setMaGH(int maGH) {
		MaGH = maGH;
	}


	public KhachHang getKhachHang() {
		return KhachHang;
	}


	public void setKhachHang(KhachHang khachHang) {
		KhachHang = khachHang;
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


	public GioHang() {
		super();
	}
	
	
}
