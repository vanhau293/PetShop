package Controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.jboss.logging.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Bean.UserLogin;
import Entity.KhachHang;
import Entity.NhanVien;
import Entity.SanPham;
@Transactional
@Controller
@RequestMapping("thongtin")
public class NV_ThongTinController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("")
	public String thongtin(ModelMap model, @ModelAttribute("nhanvien") NhanVien nv){
		model.addAttribute("nhanvien", layNV(UserLogin.tenDangNhap));
		return "NhanVien/ThongTin";

	}
	@RequestMapping(value = "", params = "btnLuu")
	public String capNhat(ModelMap model, @ModelAttribute("nhanvien") NhanVien nv,  @RequestParam("ngay") String ngay, BindingResult errors){
		
		if(nv.getCMND().trim().length() == 0){
			errors.rejectValue("CMND", "nhanvien", "Số chứng minh nhân dân không để trống !!!");
		}
		if(nv.getHoTen().trim().length() == 0){
			errors.rejectValue("HoTen", "nhanvien", "Họ tên không để trống !!!");
		}
		if(nv.getNgaySinh() == null){
			errors.rejectValue("NgaySinh", "nhanvien", "Ngày sinh không để trống !!!");
		}
		if(nv.getDiaChi().trim().length() == 0){
			errors.rejectValue("DiaChi", "nhanvien", "Địa chỉ không để trống !!!");
		}
		if(nv.getSDT().trim().length() == 0){
			errors.rejectValue("SDT", "nhanvien", "Số điện thoại không để trống !!!");
		}
		if(errors.hasErrors()) return "NhanVien/ThongTin";
		System.out.println(ngay);
		if(ngay.equals("")==false){
			try {
				Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(ngay);
				nv.setNgaySinh(date1);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(capNhatTT(nv))
			model.addAttribute("message", "Cập nhật thông tin thành công");
		else 
			model.addAttribute("message", "Cập nhật thông tin thất bại");
		model.addAttribute("nhanvien", nv);
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/ThongTin";
	}
	@RequestMapping("doimatkhau")
	public String doIMK(ModelMap model){
		model.addAttribute("tendangnhap",UserLogin.tenDangNhap);
		return "NhanVien/DoiMatKhau";
	}
	@RequestMapping("xacnhan")
	public String xacnhan(ModelMap model, @RequestParam("matkhaucu") String matkhaucu, @RequestParam("matkhaumoi") String matkhaumoi, @RequestParam("xacnhan") String xacnhan){
		model.addAttribute("tendangnhap",UserLogin.tenDangNhap);
		if(matkhaucu.trim().length() == 0 || matkhaumoi.trim().length() == 0 || xacnhan.trim().length() == 0 ){
			model.addAttribute("message", "Vui lòng nhập đầy đủ các thông tin");
		}
		else if(!matkhaumoi.trim().matches(".{8,}")){
			model.addAttribute("message", "Mật khẩu mới không dưới 8 ký tự");
		}
		else if(!matkhaumoi.equals(xacnhan)){
			model.addAttribute("message", "Mật khẩu và xác nhận không trùng khớp");
		}
		else if(!matkhaucu.equals(UserLogin.matKhau)){
			model.addAttribute("message", "Mật khẩu cũ không chính xác");
		}
		else{
			Session session = factory.openSession();
			try{
				String hql = "UPDATE TaiKhoan set MatKhau = :mk WHERE TenDangNhap = :tdn";
				
				Query query = session.createQuery(hql);
				query.setParameter("mk", matkhaumoi);
				query.setParameter("tdn", UserLogin.tenDangNhap);
				int result = query.executeUpdate();
				System.out.println("Rows affected: " + result);
				model.addAttribute("message", "Thay đổi mật khẩu thành công");
			}
			catch(Exception e){
				System.out.println(e.getMessage());
				model.addAttribute("message", "Thay đổi mật khẩu thất bại");
			} finally {
				session.close();
			}
		}
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/DoiMatKhau";
	}
	
	public boolean capNhatTT(NhanVien nv) {
		Session session = factory.openSession();
		Transaction t =  session.beginTransaction();

		try {
			session.update(nv);
			t.commit();
		} catch (Exception e) {
			
				t.rollback();
			return false;
		} finally {
			session.close();
		}
		return true;
	}
	public NhanVien layNV(String tenDangNhap){
		Session session = factory.getCurrentSession();
		String hql = "FROM NhanVien where TaiKhoan.TenDangNhap = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", tenDangNhap);
		NhanVien list = (NhanVien) query.list().get(0);
		return list;
	}
}
