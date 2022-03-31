package Entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "NHOMSANPHAM")
public class NhomSanPham {
	@Id
	@GeneratedValue
	@Column(name = "MANHOMSP")
	private int MaNhomSP;
	@Column(name = "TENNHOMSP")
	private String TenNhomSP;
	@Column(name = "VATNUOI")
	private String VatNuoi;
	@OneToMany(mappedBy = "NhomSP", fetch = FetchType.EAGER)
	private Collection<SanPham> SanPham;
	public int getMaNhomSP() {
		return MaNhomSP;
	}
	public void setMaNhomSP(int maNhomSP) {
		MaNhomSP = maNhomSP;
	}
	public String getTenNhomSP() {
		return TenNhomSP;
	}
	public void setTenNhomSP(String tenNhomSP) {
		TenNhomSP = tenNhomSP;
	}
	public String getVatNuoi() {
		return VatNuoi;
	}
	public void setVatNuoi(String vatNuoi) {
		VatNuoi = vatNuoi;
	}
	public Collection<SanPham> getSanPham() {
		return SanPham;
	}
	public void setSanPham(Collection<SanPham> sanPham) {
		SanPham = sanPham;
	}
	
	
	
}
