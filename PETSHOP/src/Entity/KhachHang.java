package Entity;

import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="KHACHHANG")
public class KhachHang {

	@Id
	@GeneratedValue
	private int MaKH;
	private String TenKH;
	private String Sdt;
	private String DiaChi;
	private String Email;
	@OneToOne
	@JoinColumn(name = "TENDANGNHAP", nullable = true)
	private TaiKhoan taiKhoan2;
	
	@OneToMany(mappedBy = "KhachHang", fetch = FetchType.EAGER)
	private Collection<HoaDon> HoaDon;
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    // Quan hệ n-n với đối tượng ở dưới (Person) (1 địa điểm có nhiều người ở)
   
    @JoinTable(name = "YEUTHICH", //Tạo ra một join Table tên là "address_person"
            joinColumns = @JoinColumn(name = "MAKH"),  // TRong đó, khóa ngoại chính là address_id trỏ tới class hiện tại (Address)
            inverseJoinColumns = @JoinColumn(name = "MASP") //Khóa ngoại thứ 2 trỏ tới thuộc tính ở dưới (Person)
    )
    private Collection<SanPham> SanPham;
	
	@OneToMany(mappedBy = "KhachHang", fetch= FetchType.EAGER )
	private Collection<GioHang> GioHang;
	
	public Collection<GioHang> getGioHang() {
		return GioHang;
	}

	public void setGioHang(Collection<GioHang> gioHang) {
		GioHang = gioHang;
	}

	public Collection<SanPham> getSanPham() {
		return SanPham;
	}

	public void setSanPham(Collection<SanPham> sanPham) {
		SanPham = sanPham;
	}

	public Collection<HoaDon> getHoaDon() {
		return HoaDon;
	}

	public void setHoaDon(Collection<HoaDon> hoaDon) {
		HoaDon = hoaDon;
	}

	
	public void setMaKH(int maKH) {
		MaKH = maKH;
	}

	public int getMaKH() {
		return MaKH;
	}

	public void setMaNV(int maKH) {
		MaKH = maKH;
	}

	public String getTenKH() {
		return TenKH;
	}

	public void setTenKH(String tenKH) {
		TenKH = tenKH;
	}

	public String getSdt() {
		return Sdt;
	}

	public void setSdt(String sdt) {
		Sdt = sdt;
	}

	public String getDiaChi() {
		return DiaChi;
	}

	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public TaiKhoan getTaiKhoan2() {
		return taiKhoan2;
	}

	public void setTaiKhoan2(TaiKhoan taiKhoan2) {
		this.taiKhoan2 = taiKhoan2;
	}
	
	
}
