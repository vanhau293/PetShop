package Controllers;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.SystemException;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
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
import Entity.NhomSanPham;
import Entity.SanPham;
import Entity.TinTuc;
@Transactional
@Controller
@RequestMapping("/sanpham/")
public class NV_SanPhamController {
	@Autowired
	SessionFactory factory;
	@Autowired
	UploadFile baseUploadFile;
	@Autowired
	ServletContext context;
	@RequestMapping("index")
	public String ds(ModelMap model, HttpServletRequest request,@ModelAttribute("sanpham" ) SanPham sp){
		List<SanPham> list = layDSSP();
		PagedListHolder pageList = new PagedListHolder(list);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pageList.setPage(page);
		pageList.setMaxLinkedPages(4);
		pageList.setPageSize(10);
		model.addAttribute("pagedListHolder", pageList);
		model.addAttribute("btnStatus", "btnThem");
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/SanPham";
	}
	
	
	@RequestMapping(value = "index", params = "btnThem")
	public String ThemSP(HttpServletRequest request, ModelMap model, 
			@ModelAttribute("sanpham") SanPham sp, @RequestParam("img") MultipartFile hinh, BindingResult errors){
		
		if(sp.getTenSP().trim().length() == 0){
			errors.rejectValue("TenSP", "sanpham", "Tên sản phẩm không để trống !!!");
		}
		else if(sp.getTenSP().trim().length() > 100){
			errors.rejectValue("TenSP", "sanpham", "Tên sản phẩm phải ít hơn 100 ký tự !!!");
		}
		if(sp.getGia()<1){
			errors.rejectValue("Gia", "sanpham", "Giá phải lớn hơn 0!!!");
		}
		if(!hinh.isEmpty()){
			String tenhinh = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-")) +hinh.getOriginalFilename();
			String path = baseUploadFile.getBasePath() + File.separator + tenhinh;
			try {
				hinh.transferTo(new File(path));
				sp.setHinhAnh("resources/images/sanpham/"+tenhinh);
				Thread.sleep(2000);
				
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else sp.setHinhAnh("resources/images/sanpham/box.png");
			
		//upload file hình
		boolean t = themSanPham(sp);
		if(errors.hasErrors() == false && t==false){
			model.addAttribute("message", "Thêm sản phẩm thất bại");
			model.addAttribute("sanpham", sp);
		} else if(errors.hasErrors() == false && t== true){
			model.addAttribute("message", "Thêm sản phẩm thành công");
			model.addAttribute("sanpham", new SanPham());
		}

		
		PagedListHolder pageList = new PagedListHolder(layDSSP());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pageList.setPage(page);
		pageList.setMaxLinkedPages(4);
		pageList.setPageSize(10);
		model.addAttribute("pagedListHolder", pageList);
		model.addAttribute("btnStatus", "btnThem");
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/SanPham";
	}
	@RequestMapping(value = "index", params = "btnSua")
	public String SuaSP(HttpServletRequest request, ModelMap model, 
			@ModelAttribute("sanpham") SanPham sp, @RequestParam("img") MultipartFile hinh, BindingResult errors) {

		if(sp.getTenSP().trim().length() == 0){
			errors.rejectValue("TenSP", "sanpham", "Tên sản phẩm không để trống !!!");
		}
		else if(sp.getTenSP().trim().length() > 100){
			errors.rejectValue("TenSP", "sanpham", "Tên sản phẩm phải ít hơn 100 ký tự !!!");
		}
		if(sp.getGia()<1){
			errors.rejectValue("Gia", "sanpham", "Giá phải lớn hơn 0!!!");
		}
		
		//upload file hình
		if(!hinh.isEmpty()){
			String tenhinh = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-")) +hinh.getOriginalFilename();
			String path = baseUploadFile.getBasePath() + File.separator + tenhinh;
			try {
				hinh.transferTo(new File(path));
				sp.setHinhAnh("resources/images/sanpham/"+ tenhinh);
				Thread.sleep(3000);
			}
			catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		boolean t = capNhatSanPham(sp);
		if(errors.hasErrors() == false && t==false){
			model.addAttribute("message", "Cập nhật sản phẩm thất bại");
		} else if(errors.hasErrors() == false && t== true){
			model.addAttribute("message", "Cập nhật sản phẩm thành công");
		}

		PagedListHolder pagedListHolder = new PagedListHolder(layDSSP());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(4);
		;
		pagedListHolder.setPageSize(10);
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("btnStatus", "btnThem");
		model.addAttribute("sanpham", new SanPham());
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/SanPham";
	}
	
	@RequestMapping(value="index", params = "btnTimKiem")
	public String timKiemSP(HttpServletRequest request, ModelMap model,
			@ModelAttribute("sanpham") SanPham sp) {
		PagedListHolder pagedListHolder = new PagedListHolder(timSanPham(request.getParameter("searchInput")));
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(4);
		
		pagedListHolder.setPageSize(10);
		
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("btnStatus", "btnThem");
		model.addAttribute("sanpham", new SanPham());
		model.addAttribute("ten", UserLogin.ten);
		 return "NhanVien/SanPham";
	}
	
	@RequestMapping(value = "/index/{id}.htm", params = "linkDelete")
	public String xoaSP(HttpServletRequest request, ModelMap model, 
			@ModelAttribute("sanpham") SanPham sp, @PathVariable("id") Integer id) {
		
		if (xoaSanPham(id) == true) {
			model.addAttribute("message", "Xoá sản phẩm thành công");
		} else {
			model.addAttribute("message", "Xoá sản phẩm thất bại!");
		}
		
		PagedListHolder pagedListHolder = new PagedListHolder(layDSSP());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(4);
		
		pagedListHolder.setPageSize(10);
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("btnStatus", "btnThem");
		model.addAttribute("sanpham", new SanPham());
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/SanPham";
	}
	
	@RequestMapping(value = "index/{id}.htm", params = "linkEdit")
	public String loadSuaSP(HttpServletRequest request, ModelMap model,
			@ModelAttribute("sanpham") SanPham sp, @PathVariable("id") Integer id) {

		PagedListHolder pagedListHolder = new PagedListHolder(layDSSP());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(4);
		
		pagedListHolder.setPageSize(10);

		model.addAttribute("btnStatus", "btnSua");
		model.addAttribute("sanpham", this.getSP(id));
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/SanPham";
	}
	public SanPham getSP(Integer id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham where MaSP = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		SanPham list = (SanPham) query.list().get(0);
		return list;
	}
	public List<SanPham> layDSSP(){
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham as sp order by sp.NhomSP.TenNhomSP asc";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<SanPham> list = query.list();
		return list;
	}
	
	public boolean themSanPham(SanPham sp){
		Session session =factory.openSession();
		Transaction t = session.beginTransaction();
		try{
			session.save(sp);
			t.commit();
		}catch(Exception e){
			
			t.rollback();
			return false;
		} finally {
			session.close();
		}
		return true;
	}
	public boolean capNhatSanPham(SanPham sp) {
		Session session = factory.openSession();
		Transaction t =  session.beginTransaction();

		try {
			session.update(sp);
			t.commit();
		} catch (Exception e) {
			
				t.rollback();
			return false;
		} finally {
			session.close();
		}
		return true;
	}
	public boolean xoaSanPham(int id) {
		Session session = factory.openSession();
		try{
			String hql = "DELETE FROM SanPham WHERE MaSP = :id";
			Query query = session.createQuery(hql);
			query.setParameter("id", id);
			int result = query.executeUpdate();
			System.out.println("Rows affected: " + result);
		}
		catch(Exception e){
			return false;
		} finally {
			session.close();
		}
		return true;
		
		

	}
	public List<SanPham> timSanPham(String ten) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham where TenSP LIKE :ten";
		Query query = session.createQuery(hql);
		query.setParameter("ten", "%" +  ten + "%");
		List<SanPham> list = query.list();
		return list;
	}
	@ModelAttribute("ListLoaiSp")
	public List<NhomSanPham> getListNhomSP(){
		Session session = factory.getCurrentSession();
		String hql = "FROM NhomSanPham";
		Query query = session.createQuery(hql);
		List<NhomSanPham> list = query.list();
		return list;
	}
}
