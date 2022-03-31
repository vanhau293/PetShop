package Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import Bean.UserLogin;
import Entity.KhachHang;
import Entity.SanPham;
@Transactional
@Controller
@RequestMapping("/khachhang/")
public class NV_KhachHangController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("index")
	public String ds(ModelMap model, HttpServletRequest request){
		PagedListHolder pageList = new PagedListHolder(layDSKH());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pageList.setPage(page);
		pageList.setMaxLinkedPages(4);
		pageList.setPageSize(5);
		model.addAttribute("pagedListHolder", pageList);
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/KhachHang";
	}
	@RequestMapping(value="index", params = "btnTimKiem")
	public String timKiemSP(HttpServletRequest request, ModelMap model) {
		PagedListHolder pageList = new PagedListHolder(timKH(request.getParameter("searchInput")));
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pageList.setPage(page);
		pageList.setMaxLinkedPages(4);
		pageList.setPageSize(5);
		model.addAttribute("pagedListHolder", pageList);
		model.addAttribute("ten", UserLogin.ten);
		return "NhanVien/KhachHang";
	}
	public List<KhachHang> timKH(String ten) {
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang where Sdt LIKE :ten OR TenKH LIKE :ten";
		Query query = session.createQuery(hql);
		query.setParameter("ten", "%" +  ten + "%");
		List<KhachHang> list = query.list();
		return list;
	}
	public List<KhachHang> layDSKH(){
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<KhachHang> list = query.list();
		return list;
	}
}
