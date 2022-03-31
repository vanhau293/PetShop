package Entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "NHANVIEN")
public class NhanVien {
	@Id
	@GeneratedValue
	@Column(name = "MANV")
	private int MaNV;
	
	@Column(name = "HOTEN")
	private String HoTen;
	
	@Column(name = "CMND")
	private String CMND;
	
	@Column(name = "GIOITINH")
	private String GioiTinh;
	
	@Column(name = "DIACHI")
	private String DiaChi;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	@Column(name = "NGAYSINH")
	private Date NgaySinh;
	
	@Column(name = "SDT")
	private String SDT;
	
	@Column(name = "EMAIL")
	private String Email;
	
	@OneToOne
	@JoinColumn(name = "TENDANGNHAP", nullable = true)
	private TaiKhoan TaiKhoan;
	
	@OneToMany(mappedBy = "NhanVien", fetch = FetchType.EAGER)
	private Collection<HoaDon> HoaDon;
	
	@OneToMany(mappedBy = "NhanVien", fetch = FetchType.EAGER)
	private Collection<TinTuc> TinTuc;

	public Collection<TinTuc> getTinTuc() {
		return TinTuc;
	}

	public void setTinTuc(Collection<TinTuc> tinTuc) {
		TinTuc = tinTuc;
	}

	public int getMaNV() {
		return MaNV;
	}

	public void setMaNV(int maNV) {
		MaNV = maNV;
	}

	public String getHoTen() {
		return HoTen;
	}

	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}

	public String getCMND() {
		return CMND;
	}

	public void setCMND(String cMND) {
		CMND = cMND;
	}

	public String getGioiTinh() {
		return GioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		GioiTinh = gioiTinh;
	}

	public String getDiaChi() {
		return DiaChi;
	}

	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}

	public Date getNgaySinh() {
		return NgaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		NgaySinh = ngaySinh;
	}

	public String getSDT() {
		return SDT;
	}

	public void setSDT(String sDT) {
		SDT = sDT;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public TaiKhoan getTaiKhoan() {
		return TaiKhoan;
	}

	public void setTaiKhoan(TaiKhoan taiKhoan) {
		TaiKhoan = taiKhoan;
	}

	public Collection<HoaDon> getHoaDon() {
		return HoaDon;
	}

	public void setHoaDon(Collection<HoaDon> hoaDon) {
		HoaDon = hoaDon;
	}
	
	
}
