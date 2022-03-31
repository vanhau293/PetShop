package Controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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

import Bean.UserLogin;
import Entity.CTHoaDon;
import Entity.HoaDon;
import Entity.NhanVien;
import Entity.SanPham;
@Transactional
@Controller
@RequestMapping("hoadon")
public class NV_HoaDonController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("xacnhan")
	public String xacnhan(ModelMap model, HttpServletRequest request){
		PagedListHolder pagedListHolder = new PagedListHolder(layDSXacNhan());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(4);
		pagedListHolder.setPageSize(10);
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/XacNhanHoaDon";
	}
	
	@RequestMapping("")
	public String hoadon(ModelMap model, HttpServletRequest request){
		PagedListHolder pagedListHolder = new PagedListHolder(layDSHoaDon());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(4);
		
		pagedListHolder.setPageSize(10);
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("ten", UserLogin.ten);
		model.addAttribute("doanhthu", doanhthutong());
		model.addAttribute("sohoadon", hoadontong());
		return "NhanVien/HoaDon";
	}
	@RequestMapping(value = "", params = "btnLoc")
	public String Loc(ModelMap model, HttpServletRequest request){
		if(request.getParameter("tuNgay").equals("") || request.getParameter("denNgay").equals("")){
			return "redirect:/hoadon.htm";
		}
		PagedListHolder pagedListHolder = new PagedListHolder(LocHD(request.getParameter("tuNgay"), request.getParameter("denNgay")));
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(4);
		pagedListHolder.setPageSize(10);
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("ten", UserLogin.ten);
		model.addAttribute("doanhthu", doanhthuloc(request.getParameter("tuNgay"), request.getParameter("denNgay")));
		model.addAttribute("sohoadon", hoaDonloc(request.getParameter("tuNgay"), request.getParameter("denNgay")));
		return "NhanVien/HoaDon";
	}
	@RequestMapping(value = "xacnhan/{id}.htm", params = "linkXacNhan")
	public String XacNhanHD(@PathVariable("id") int id) {
		HoaDon hd = getHD(id);
		hd.setXacNhan(true);
		hd.setNhanVien(getNV(UserLogin.tenDangNhap));
		capNhatHoaDon(hd);
		return "redirect:/hoadon/xacnhan.htm";
	}
	
	@RequestMapping(value = "xacnhan/{id}.htm", params = "linkDelete")
	public String xoaHoaDon(@PathVariable("id") int id, ModelMap model, HttpServletRequest request){
		if(xoaHoaDon(id) == true) model.addAttribute("message", "Huỷ đơn hàng thành công !!!");
		else model.addAttribute("message", "Huỷ đơn hàng thất bại !!!");
		
		PagedListHolder pagedListHolder = new PagedListHolder(layDSXacNhan());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(4);
		pagedListHolder.setPageSize(10);
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/XacNhanHoaDon";
	}
	public List<HoaDon> LocHD(String tuNgay, String denNgay) {
		Session session = factory.getCurrentSession();
		String hql = "FROM HoaDon as hd where hd.XacNhan = true and hd.NgayLap >= '"+ tuNgay +"' and hd.NgayLap <= '" +denNgay +"' order by hd.NgayLap asc";
		Query query = session.createQuery(hql);
		
		List<HoaDon> list = query.list();
		return list;
	}
	public boolean capNhatHoaDon(HoaDon hd) {
		Session session = factory.openSession();
		Transaction t =  session.beginTransaction();

		try {
			session.update(hd);
			t.commit();
		} catch (Exception e) {
			
				t.rollback();
			return false;
		} finally {
			session.close();
		}
		return true;
	}
	public HoaDon getHD(Integer id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM HoaDon where MaHD = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		HoaDon list = (HoaDon) query.list().get(0);
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
	public List<HoaDon> layDSXacNhan()
	{ 
		Session session = factory.getCurrentSession();
		String hql = "FROM HoaDon as hd where hd.XacNhan = false order by hd.NgayLap asc";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<HoaDon> list = query.list();
		for(HoaDon i  : list){
			i.setCTHoaDon(layDSCTHD(i.getMaHD()));
		}
		return list;
	}
	 
	public List<HoaDon> layDSHoaDon()
	{ 
		Session session = factory.getCurrentSession();
		String hql = "FROM HoaDon as hd where hd.XacNhan = true order by hd.NgayLap desc";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<HoaDon> list = query.list();
		for(HoaDon i  : list){
			i.setCTHoaDon(layDSCTHD(i.getMaHD()));
		}
		return list;
	}
	public String doanhthutong()
	{ 
		Session session = factory.getCurrentSession();
		String hql = "select sum(TongTien) from HoaDon Where XacNhan = true";
		Query query = session.createQuery(hql);
		String s = query.list().get(0).toString();
		return s;
	}
	public String hoadontong()
	{ 
		Session session = factory.getCurrentSession();
		String hql = "select count(MaHD) from HoaDon Where XacNhan = true";
		Query query = session.createQuery(hql);
		String s = query.list().get(0).toString();
		return s;
	}
	public String doanhthuloc(String tuNgay, String denNgay)
	{ 
		String s;
		Session session = factory.getCurrentSession();
		try {
			String hql = "select sum(TongTien) from HoaDon as hd Where hd.XacNhan = true and hd.NgayLap >= '"+ tuNgay +"' and hd.NgayLap <= '" +denNgay +"'";
			Query query = session.createQuery(hql);
			s = query.list().get(0).toString();
		} catch (NullPointerException e) {
			s= "0";
		}
		
		return s;
	}
	public String hoaDonloc(String tuNgay, String denNgay)
	{ 
		String s;
		Session session = factory.getCurrentSession();
		try {
			String hql = "select count(MaHD) from HoaDon as hd Where hd.XacNhan = true and hd.NgayLap >= '"+ tuNgay +"' and hd.NgayLap <= '" +denNgay +"'";
			Query query = session.createQuery(hql);
			s = query.list().get(0).toString();
			
		} catch (NullPointerException e) {
			s = "0";
		}
		
		
		return s;
	}
	public List<CTHoaDon> layDSCTHD(int id)
	{ 
		Session session = factory.getCurrentSession();
		String hql = "FROM CTHoaDon where MaHD = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		List<CTHoaDon> list = query.list();
		
		return list;
	}
	public boolean xoaHoaDon(int id) {
		xoaCTHD(id);
		Session session = factory.getCurrentSession();
		String hql = "DELETE FROM HoaDon WHERE MaHD = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		int n = query.executeUpdate();
		if(n==0) return false;
		return true;
	}
	public void xoaCTHD(int id) {
		Session session = factory.getCurrentSession();
		String hql = "DELETE FROM CTHoaDon WHERE MaHD = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		query.executeUpdate();
	}
}
