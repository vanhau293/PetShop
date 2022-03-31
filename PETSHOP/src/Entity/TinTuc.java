package Entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "TINTUC")
public class TinTuc {
	@Id
	@GeneratedValue
	@Column(name = "MATT")
	private int MaTT;
	
	@Column(name = "TUADE")
	private String TuaDe;
	
	@Column(name = "HINHANH")
	private String HinhAnh;

	@Column(name = "NOIDUNG")
	private String NoiDung;
	
	@Column(name = "VATNUOI")
	private String VatNuoi;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "HH:mm:ss.SSS dd-MM-yyyy")
	@Column(name = "NGAYDANG")
	private Date NgayDang;

	@ManyToOne
	@JoinColumn(name = "MANV")
	private NhanVien NhanVien;
	
	
	public TinTuc() {
		super();
	}

	public NhanVien getNhanVien() {
		return NhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		NhanVien = nhanVien;
	}

	public int getMaTT() {
		return MaTT;
	}

	public void setMaTT(int maTT) {
		MaTT = maTT;
	}

	public String getTuaDe() {
		return TuaDe;
	}

	public void setTuaDe(String tuaDe) {
		TuaDe = tuaDe;
	}

	public String getNoiDung() {
		return NoiDung;
	}

	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}

	public String getVatNuoi() {
		return VatNuoi;
	}

	public void setVatNuoi(String vatNuoi) {
		VatNuoi = vatNuoi;
	}

	public Date getNgayDang() {
		return NgayDang;
	}

	public void setNgayDang(Date ngayDang) {
		NgayDang = ngayDang;
	}
	
	public String getHinhAnh() {
		return HinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		HinhAnh = hinhAnh;
	}
	
}
