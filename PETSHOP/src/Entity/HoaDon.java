package Entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "HOADON")
public class HoaDon {
	@Id
	@GeneratedValue
	@Column(name = "MAHD")
	private int MaHD;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "HH:mm:ss.SSS dd-MM-yyyy")
	@Column(name = "NGAYLAP")
	private Date NgayLap;
	
	@ManyToOne
	@JoinColumn(name = "MAKH")
	private KhachHang KhachHang;
	
	@ManyToOne
	@JoinColumn(name = "MANV")
	private NhanVien NhanVien;
	
	@Column(name = "TONGTIEN")
	private long TongTien;
	
	@Column(name = "XACNHAN")
	private boolean XacNhan;
	
	@OneToMany(mappedBy = "HoaDon", fetch = FetchType.EAGER)
	private Collection<CTHoaDon> CTHoaDon;
	
	public Collection<CTHoaDon> getCTHoaDon() {
		return CTHoaDon;
	}

	public void setCTHoaDon(Collection<CTHoaDon> cTHoaDon) {
		CTHoaDon = cTHoaDon;
	}

	public int getMaHD() {
		return MaHD;
	}

	public void setMaHD(int maHD) {
		MaHD = maHD;
	}

	public Date getNgayLap() {
		return NgayLap;
	}

	public void setNgayLap(Date ngayLap) {
		NgayLap = ngayLap;
	}

	public KhachHang getKhachHang() {
		return KhachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		KhachHang = khachHang;
	}

	public NhanVien getNhanVien() {
		return NhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		NhanVien = nhanVien;
	}

	public long getTongTien() {
		return TongTien;
	}

	public void setTongTien(long tongTien) {
		TongTien = tongTien;
	}

	public boolean isXacNhan() {
		return XacNhan;
	}

	public void setXacNhan(boolean xacNhan) {
		XacNhan = xacNhan;
	}

	
}
