package Entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name ="SANPHAM")
public class SanPham {
	@Id
	@GeneratedValue
	@Column(name = "MASP")
	private int MaSP;
	
	@Column(name = "TENSP")
	private String TenSP;
	
	@Column(name = "GIA")
	private long Gia;
	@Column(name = "MOTA")
	private String MoTa;
	@Column(name = "THUONGHIEU")
	private String ThuongHieu;
	public String getThuongHieu() {
		return ThuongHieu;
	}
	public void setThuongHieu(String thuongHieu) {
		ThuongHieu = thuongHieu;
	}
	@Column(name = "TINHTRANG")
	private boolean TinhTrang;
	@ManyToOne
	@JoinColumn(name = "MANHOMSP")
	private NhomSanPham NhomSP;
	@Column(name = "HINHANH")
	private String HinhAnh;
	
	@OneToMany(mappedBy = "SanPham", fetch = FetchType.EAGER)
	private Collection<CTHoaDon> CTHoaDon;
	
	@OneToMany(mappedBy = "SanPham", fetch= FetchType.EAGER )
	private Collection<GioHang> GioHang;
	
	@ManyToMany(mappedBy = "SanPham")
    // LAZY để tránh việc truy xuất dữ liệu không cần thiết. Lúc nào cần thì mới query
    
    private Collection<KhachHang> KhachHang;
	
	
	public Collection<KhachHang> getKhachHang() {
		return KhachHang;
	}
	public void setKhachHang(Collection<KhachHang> khachHang) {
		KhachHang = khachHang;
	}
	public Collection<CTHoaDon> getCTHoaDon() {
		return CTHoaDon;
	}
	public void setCTHoaDon(Collection<CTHoaDon> cTHoaDon) {
		CTHoaDon = cTHoaDon;
	}
	public SanPham() {
		super();
	}
	
	public int getMaSP() {
		return MaSP;
	}
	public void setMaSP(int maSP) {
		MaSP = maSP;
	}
	public String getTenSP() {
		return TenSP;
	}
	public void setTenSP(String tenSP) {
		TenSP = tenSP;
	}
	public long getGia() {
		return Gia;
	}
	public void setGia(long gia) {
		Gia = gia;
	}
	public String getMoTa() {
		return MoTa;
	}
	public void setMoTa(String moTa) {
		MoTa = moTa;
	}
	public boolean isTinhTrang() {
		return TinhTrang;
	}
	public void setTinhTrang(boolean tinhTrang) {
		TinhTrang = tinhTrang;
	}
	public NhomSanPham getNhomSP() {
		return NhomSP;
	}
	public void setNhomSP(NhomSanPham nhomSP) {
		NhomSP = nhomSP;
	}
	public String getHinhAnh() {
		return HinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		HinhAnh = hinhAnh;
	}
	
	
}
