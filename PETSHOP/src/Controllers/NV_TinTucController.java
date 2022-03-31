package Controllers;
import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.swing.text.Document;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import Bean.UploadFile;
import Bean.UserLogin;
import Entity.HoaDon;
import Entity.NhanVien;
import Entity.SanPham;
import Entity.TinTuc;
import jdk.internal.org.objectweb.asm.tree.analysis.Value;
@Transactional
@Controller
@RequestMapping("tintuc")
public class NV_TinTucController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "")
	public String tintuc(@ModelAttribute("tintuc") TinTuc tt, ModelMap model, HttpServletRequest request){
		PagedListHolder pagedListHolder = new PagedListHolder(layDSTinTuc());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(4);
		
		pagedListHolder.setPageSize(10);
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("btnStatus", "btnThem");
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/TinTuc";
	}
	@Autowired
	ServletContext context;
	@Autowired
	UploadFile baseUploadFile;
	@RequestMapping(value = "", params = "btnThem")
	public String themTT(@ModelAttribute("tintuc") TinTuc tt, ModelMap model, @RequestParam("img") MultipartFile hinh, BindingResult errors, HttpServletRequest request){
		if(tt.getTuaDe().trim().length() == 0)
			errors.rejectValue("TuaDe", "tintuc", "Tựa đề bài viết không để trống !!!");
		if(tt.getNoiDung().trim().length() == 0)
			errors.rejectValue("NoiDung", "tintuc", "Nội dung bài viết không để trống !!!");
		if(!hinh.isEmpty()){
			String tenhinh = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-")) +hinh.getOriginalFilename();
			String path = baseUploadFile.getBasePath() + File.separator + tenhinh;
			try {
				hinh.transferTo(new File(path));
				tt.setHinhAnh("resources/images/sanpham/"+tenhinh);
				Thread.sleep(2500);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else tt.setHinhAnh("resources/images/sanpham/box.png");
		tt.setNgayDang(new java.util.Date());
		tt.setNhanVien(getNV(UserLogin.tenDangNhap));
		if(!errors.hasErrors()){
			if(themTinTuc(tt)==true) model.addAttribute("message", "Thêm tin tức thành công !!!");
			else model.addAttribute("message", "Thêm tin tức thất bại !!!");
			model.addAttribute("tintuc", new TinTuc());
		}
		PagedListHolder pagedListHolder = new PagedListHolder(layDSTinTuc());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(4);
		
		pagedListHolder.setPageSize(10);
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("btnStatus", "btnThem");
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/TinTuc";
	}
	@RequestMapping(value = "", params = "btnSua")
	public String suaTT(@ModelAttribute("tintuc") TinTuc tt, ModelMap model, @RequestParam("img") MultipartFile hinh, BindingResult errors, HttpServletRequest request){
		if(tt.getTuaDe().trim().length() == 0)
			errors.rejectValue("TuaDe", "tintuc", "Tựa đề bài viết không để trống !!!");
		
		if(tt.getVatNuoi().trim().length() == 0)
			errors.rejectValue("VatNuoi", "tintuc", "Vui lòng chọn vật nuôi của bài viết !!!");
		if(tt.getNoiDung().trim().length() == 0)
			errors.rejectValue("NoiDung", "tintuc", "Nội dung bài viết không để trống !!!");
		if(!hinh.isEmpty()){
			String tenhinh = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-")) +hinh.getOriginalFilename();
			String path = baseUploadFile.getBasePath() + File.separator + tenhinh;
			try {
				hinh.transferTo(new File(path));
				tt.setHinhAnh("resources/images/sanpham/"+tenhinh);
				Thread.sleep(2500);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		tt.setNgayDang(new java.util.Date());
		tt.setNhanVien(getNV(UserLogin.tenDangNhap));
		if(!errors.hasErrors()){
			if(capNhatTT(tt)==true) model.addAttribute("message", "Cập nhật tin tức thành công !!!");
			else model.addAttribute("message", "Cập nhật tin tức thất bại !!!");
			model.addAttribute("tintuc", new TinTuc());
		}
		PagedListHolder pagedListHolder = new PagedListHolder(layDSTinTuc());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(4);
		pagedListHolder.setPageSize(10);
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("btnStatus", "btnThem");
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/TinTuc";
	}
	@RequestMapping(value = "{id}.htm", params = "linkEdit")
	public String loadTT(HttpServletRequest request, ModelMap model,
			@ModelAttribute("tintuc") TinTuc tt, @PathVariable("id") Integer id) {

		PagedListHolder pagedListHolder = new PagedListHolder(layDSTinTuc());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(4);
		pagedListHolder.setPageSize(10);
		model.addAttribute("btnStatus", "btnSua");
		model.addAttribute("tintuc", this.getTT(id));
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/TinTuc";
	}
	@RequestMapping(value = "{id}.htm", params = "linkDelete")
	public String xoaTT(HttpServletRequest request, ModelMap model,
			@ModelAttribute("tintuc") TinTuc tt, @PathVariable("id") Integer id) {
		if(xoaTT(getTT(id))==true) model.addAttribute("message", "Xoá tin tức thành công !!!");
		else model.addAttribute("message", "Xoá tin tức thất bại !!!");
		PagedListHolder pagedListHolder = new PagedListHolder(layDSTinTuc());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(4);
		pagedListHolder.setPageSize(10);
		model.addAttribute("btnStatus", "btnThem");
		model.addAttribute("tintuc", new TinTuc());
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/TinTuc";
	}
	public List<TinTuc> layDSTinTuc()
	{ 
		Session session = factory.getCurrentSession();
		String hql = "FROM TinTuc as tt order by tt.NgayDang desc";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<TinTuc> list = query.list();
		return list;
	}
	public TinTuc getTT(Integer id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TinTuc where MaTT = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		TinTuc list = (TinTuc) query.list().get(0);

		return list;
	}
	public NhanVien getNV(String tenDN) {
		Session session = factory.getCurrentSession();
		String hql = "FROM NhanVien as nv where nv.TaiKhoan.TenDangNhap = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", tenDN);
		NhanVien list = (NhanVien) query.list().get(0);

		return list;
	}
	public boolean themTinTuc(TinTuc tt){
		Session session =factory.openSession();
		Transaction t = session.beginTransaction();
		try{
			session.save(tt);
			t.commit();
		}catch(Exception e){
			
			t.rollback();
			return false;
		} finally {
			session.close();
		}
		return true;
	}
	public boolean capNhatTT(TinTuc tt) {
		Session session = factory.openSession();
		Transaction t =  session.beginTransaction();

		try {
			session.update(tt);
			t.commit();
		} catch (Exception e) {
			
				t.rollback();
			return false;
		} finally {
			session.close();
		}
		return true;
	}
	public boolean xoaTT(TinTuc tt) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.delete(tt);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			return false;
		} finally {
			session.close();
		}
		return true;
	}
}
