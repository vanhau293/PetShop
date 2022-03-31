package Entity;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="TAIKHOAN")
public class TaiKhoan {

	@Id
	private String TenDangNhap;
	private String MatKhau;
	private boolean TrangThai;
	private String VaiTro;
	
/*	@OneToMany(mappedBy="taiKhoan",fetch=FetchType.EAGER)
	private Collection<NhanVien> nhanVien;

	@OneToMany(mappedBy="taiKhoan2",fetch=FetchType.EAGER)
	private Collection<KhachHang> khachHang;*/

	public String getTenDangNhap() {
		return TenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		TenDangNhap = tenDangNhap;
	}

	public String getMatKhau() {
		return MatKhau;
	}

	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}

	public boolean isTrangThai() {
		return TrangThai;
	}

	public void setTrangThai(boolean trangThai) {
		TrangThai = trangThai;
	}

	public String getVaiTro() {
		return VaiTro;
	}

	public void setVaiTro(String vaiTro) {
		VaiTro = vaiTro;
	}

/*	public Collection<NhanVien> getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(Collection<NhanVien> nhanVien) {
		this.nhanVien = nhanVien;
	}

	public Collection<KhachHang> getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(Collection<KhachHang> khachHang) {
		this.khachHang = khachHang;
	}*/



	
	
	
	
}
