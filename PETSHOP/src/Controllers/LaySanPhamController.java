package Controllers;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
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
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Bean.Report;
import Bean.UserLogin;
import Entity.CTHoaDon;
import Entity.GioHang;
import Entity.HoaDon;
import Entity.KhachHang;
import Entity.NhanVien;
import Entity.NhomSanPham;
import Entity.SanPham;
import Entity.TaiKhoan;

@Transactional
@Controller
@RequestMapping("/view/")
public class LaySanPhamController {
	@Autowired
	SessionFactory factory;

	public void run(ModelMap model) {
		checkPQ(model);
		CountSL(model);
	}
	
	@ModelAttribute("nhomspm")
	public List<NhomSanPham> layNhomSPM(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM NhomSanPham where VatNuoi =:vn";
		Query query = session.createQuery(hql);
		query.setParameter("vn", "Mèo");
		List<NhomSanPham> list = query.list();
		return list;
	}

	@ModelAttribute("nhomspc")
	public List<NhomSanPham> layNhomSPC(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM NhomSanPham where VatNuoi =:vn";
		Query query = session.createQuery(hql);
		query.setParameter("vn", "Chó");
		List<NhomSanPham> list = query.list();
		return list;
	}

	public void ShowReport(ModelMap model){
		model.addAttribute("tbTonTai",Report.tbTonTai);
		model.addAttribute("tbThanhCong",Report.tbThanhCong);
		model.addAttribute("tbThatBai",Report.tbThatBai);
	}
	
	public void checkPQ(ModelMap model) {
		System.out.println(UserLogin.tenDangNhap);
		if (UserLogin.tenDangNhap.equals("none")) {

			model.addAttribute("dkdn", "block"); // Ä‘Äƒng nháº­p,kÃ½,xuáº¥t
			model.addAttribute("tkdx", "none"); // Ä‘Äƒng xuáº¥t,tÃ i khoáº£n
			model.addAttribute("user", "none"); // quyá»?n KH
			model.addAttribute("admin", "none"); // quyá»?n admin thÃªm,xÃ³a,sá»­a sp
			model.addAttribute("userId", "none"); // tenDN
			System.out.println("hiih");
		} else {
			Session s = factory.getCurrentSession();
			String hql = "SELECT tk.VaiTro FROM TaiKhoan tk WHERE tk.TenDangNhap= :tdn";
			Query query = s.createQuery(hql);
			query.setParameter("tdn", UserLogin.tenDangNhap);
			String vaiTro = (String) query.list().get(0);
			System.out.println("vaiTro" + vaiTro);
			if (vaiTro.trim().equals("admin")) {
				// model.addAttribute("chedo","none");
				// model.addAttribute("nguoidung","none");
				model.addAttribute("dkdn", "none"); // Ä‘Äƒng nháº­p,kÃ½,xuáº¥t
				model.addAttribute("tkdx", "block"); // Ä‘Äƒng xuáº¥t,tÃ i khoáº£n
				model.addAttribute("user", "Admin " + UserLogin.ten);
				model.addAttribute("userId", UserLogin.tenDangNhap);
				model.addAttribute("admin", "block");
				System.out.println("admin zooo");
			}
			// náº¿u lÃ  khÃ¡ch hÃ ng
			else {
				// model.addAttribute("chedo","none");
				// model.addAttribute("nguoidung","block");
				model.addAttribute("dkdn", "none"); // Ä‘Äƒng nháº­p,kÃ½,xuáº¥t
				model.addAttribute("tkdx", "block"); // Ä‘Äƒng xuáº¥t,tÃ i khoáº£n
				model.addAttribute("user", "Đơn hàng của " + UserLogin.ten);
				model.addAttribute("userId", UserLogin.tenDangNhap);
				model.addAttribute("admin", "none");
			}

		}
	}

	@RequestMapping("index")
	public String LoadSanPham(ModelMap model, HttpServletRequest request) {
		run(model);
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham ";
		Query query = session.createQuery(hql);
		List<SanPham> list = query.list();
		// model.addAttribute("dssanpham", list);

		PagedListHolder pagedListHolder = new PagedListHolder(list);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(3);// sá»‘ trang hiá»‡n lÃªn
												// 1,2,3,4,5...,65,next
		pagedListHolder.setPageSize(12);// sá»‘ lÆ°á»£ng dÃ²ng cá»§a 1 trang
		model.addAttribute("pagedListHolder", pagedListHolder);
		ShowReport(model);
		Report.clear();
		return "sanpham/shop-grid-fullwidth";
	}

	// load view cÃ¡c nhÃ³m
	@RequestMapping(value = "index/{maNhomSP}", method = RequestMethod.GET)
	public String update(HttpServletRequest request, ModelMap model, @PathVariable("maNhomSP") Integer MaNhomSP) {
		run(model);
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham sp where sp.NhomSP.MaNhomSP =:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", MaNhomSP);
		List<SanPham> list = query.list();
		// model.addAttribute("dssanpham", list);
		PagedListHolder pagedListHolder = new PagedListHolder(list);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(3);// sá»‘ trang hiá»‡n lÃªn
												// 1,2,3,4,5...,65,next
		pagedListHolder.setPageSize(12);// sá»‘ lÆ°á»£ng dÃ²ng cá»§a 1 trang
		model.addAttribute("pagedListHolder", pagedListHolder);
		ShowReport(model);
		Report.clear();
		return "sanpham/shop-grid-fullwidth";
	}

	// tÃ¬m kiáº¿m
	public List<SanPham> searchSP(String tenSP) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham where TenSP LIKE :tenSP";
		Query query = session.createQuery(hql);
		query.setParameter("tenSP", "%" + tenSP + "%");
		List<SanPham> list = query.list();
		return list;
	}

	@RequestMapping(value = "timkiem", params = "btnsearch")
	public String seachPro(HttpServletRequest request, ModelMap model) {
		run(model);

		List<SanPham> list = this.searchSP(request.getParameter("searchInput"));
		PagedListHolder pagedListHolder = new PagedListHolder(list);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(3);// sá»‘ trang hiá»‡n lÃªn
												// 1,2,3,4,5...,65,next
		pagedListHolder.setPageSize(12);// sá»‘ lÆ°á»£ng dÃ²ng cá»§a 1 trang
		model.addAttribute("pagedListHolder", pagedListHolder);
		ShowReport(model);
		Report.clear();
		return "sanpham/shop-grid-fullwidth";

	}
	
	@RequestMapping(value = "single/{maSP}", method = RequestMethod.GET)
	public String showSigle(ModelMap model, @PathVariable("maSP") Integer maSP) {
		run(model);
		Session session = factory.getCurrentSession();
		SanPham sp = (SanPham) session.get(SanPham.class, maSP);
		model.addAttribute("sp", sp);
		ShowReport(model);
		Report.clear();
		return "sanpham/single-product";
	}
	
	public Integer layMaKH(String tdn) {
		KhachHang kh = new KhachHang();
		try {
			Session session = factory.getCurrentSession();
			String hql = "FROM KhachHang kh where kh.taiKhoan2.TenDangNhap =:tdn";
			Query query = session.createQuery(hql);
			query.setParameter("tdn", tdn);
			kh = (KhachHang) query.list().get(0);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return kh.getMaKH();
	}

	public KhachHang layKH(String tdn) {
		KhachHang kh = new KhachHang();
		try {
			Session session = factory.getCurrentSession();
			String hql = "FROM KhachHang kh where kh.taiKhoan2.TenDangNhap =:tdn";
			Query query = session.createQuery(hql);
			query.setParameter("tdn", tdn);
			kh = (KhachHang) query.list().get(0);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return kh;
	}

	public SanPham laySP(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham sp where sp.MaSP =:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		SanPham sp = (SanPham) query.list().get(0);
		return sp;
	}

	public boolean checkDN() {
		if (UserLogin.tenDangNhap.equals("none")) {
			return false;
		}
		return true;
	}

	@RequestMapping(value = "wishlist/{maSP}")
	public String InsertWishlist(ModelMap model, @PathVariable("maSP") Integer maSP) {
		run(model);
		if (checkDN() == true) {
			KhachHang kh = layKH(UserLogin.tenDangNhap);
			for (SanPham i : kh.getSanPham()) {
				if (i.getMaSP() == maSP) { //sáº£n pháº©m Ä‘Ã£ tá»“n táº¡i trong má»¥c yÃªu thÃ­ch!
					Report.tbTonTai="block";
					Report.tbThanhCong="none";
					Report.tbThatBai="none";
					return "redirect:/view/single/{maSP}.htm";
				}
			}
			kh.getSanPham().add(laySP(maSP));
			Report.tbTonTai="none";
			Report.tbThatBai="none";
			Report.tbThanhCong="block";
			return "redirect:/view/single/{maSP}.htm";
		} else
			return "redirect:/user/login.htm";
	}

	@RequestMapping(value = "wishlist1/{maSP}")
	public String InsertWishlist1(ModelMap model, @PathVariable("maSP") Integer maSP) {
		run(model);
		if (checkDN() == true) {
			KhachHang kh = layKH(UserLogin.tenDangNhap);
			for (SanPham i : kh.getSanPham()) {
				if (i.getMaSP() == maSP) { //sáº£n pháº©m Ä‘Ã£ tá»“n táº¡i trong má»¥c yÃªu thÃ­ch!
					Report.tbTonTai="block";
					Report.tbThanhCong="none";
					Report.tbThatBai="none";
					return "redirect:/view/index.htm";
				}
			}
			Report.tbTonTai="none";
			Report.tbThatBai="none";
			Report.tbThanhCong="block";
			kh.getSanPham().add(laySP(maSP));
			return "redirect:/view/index.htm";
		} else
			return "redirect:/user/login.htm";
	}

	@RequestMapping("wishlist")
	public String showWL(ModelMap model) {
		run(model);
		if (checkDN() == true) {
			KhachHang kh = layKH(UserLogin.tenDangNhap);
			List<SanPham> list = new ArrayList();

			for (SanPham i : kh.getSanPham()) {
				list.add(i);
			}
			model.addAttribute("list", list);
			ShowReport(model);
			Report.clear();
			return "sanpham/wishlist";
		} else
			return "redirect:/user/login.htm";
	}

	@RequestMapping(value = "removeWishlist/{maSP}")
	public String RemoveWishlist(ModelMap model, @PathVariable("maSP") Integer maSP) {
		run(model);
		KhachHang kh = layKH(UserLogin.tenDangNhap);
		kh.getSanPham().remove(laySP(maSP));
		Report.tbTonTai="none";
		Report.tbThanhCong="block";
		Report.tbThatBai="none";
		return "redirect:/view/wishlist.htm";

	}

	public boolean themGioHang(GioHang gio) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(gio);
			t.commit();
		} catch (Exception e) {

			t.rollback();
			return false;
		}
		session.close();

		return true;
	}

	public boolean capNhatGioHang(GioHang gio) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(gio);
			t.commit();
		} catch (Exception e) {

			t.rollback();
			return false;
		}
		session.close();

		return true;
	}

	public boolean checkTinhTrang(Integer maSP) {
		SanPham sp = laySP(maSP);
		if (sp.isTinhTrang() == true) {
			return true;
		}
		return false;
	}

	@RequestMapping(value = "cart/{maSP}", params = "insertCart")
	public String InsertCart(ModelMap model, @RequestParam("sl") Integer sl, @PathVariable("maSP") Integer maSP) {
		if (checkDN() == true) {
			KhachHang kh = layKH(UserLogin.tenDangNhap);
			for (GioHang i : kh.getGioHang()) {
				if (i.getSanPham().getMaSP() == maSP) {
					Report.tbTonTai="block";
					Report.tbThanhCong="none";
					Report.tbThatBai="none";
					return "redirect:/view/single/{maSP}.htm"; // add rá»“i kh cho add ná»¯a tráº£ vá»? TB

				}
			}
			if (checkTinhTrang(maSP) == true) { // cÃ²n hÃ ng thÃ¬ cho add
				GioHang gio = new GioHang();
				gio.setSanPham(laySP(maSP));
				gio.setKhachHang(kh);
				gio.setSoLuong(sl);
				themGioHang(gio);
				Report.tbTonTai="none";
				Report.tbThanhCong="block";
				Report.tbThatBai="none";
				return "redirect:/view/single/{maSP}.htm";
			} else//háº¿t hÃ ng
				Report.tbTonTai="none";
				Report.tbThanhCong="none";
				Report.tbThatBai="block";
				return "redirect:/view/single/{maSP}.htm";
		} else
			return "redirect:/user/login.htm";
	}

	@RequestMapping(value = "cart1/{maSP}")
	public String InsertCart1(ModelMap model, @PathVariable("maSP") Integer maSP) {
		if (checkDN() == true) {
			KhachHang kh = layKH(UserLogin.tenDangNhap);
			for (GioHang i : kh.getGioHang()) {
				if (i.getSanPham().getMaSP() == maSP) {
					Report.tbTonTai="block";
					Report.tbThanhCong="none";
					Report.tbThatBai="none";
					return "redirect:/view/index.htm"; // add rá»“i kh cho add ná»¯a
														// tráº£ vá»? TB
				}
			}
			if (checkTinhTrang(maSP) == true) { // cÃ²n hÃ ng thÃ¬ cho add
				GioHang gio = new GioHang();
				gio.setSanPham(laySP(maSP));
				gio.setKhachHang(kh);
				gio.setSoLuong(1);
				themGioHang(gio);
				Report.tbTonTai="none";
				Report.tbThanhCong="block";
				Report.tbThatBai="none";
				return "redirect:/view/index.htm";
			} else //háº¿t hÃ ng
				Report.tbTonTai="none";
				Report.tbThanhCong="none";
				Report.tbThatBai="block";
				return "redirect:/view/index.htm";
		} else
			return "redirect:/user/login.htm";
	}

	@RequestMapping(value = "cart2/{maSP}")
	public String InsertCart2(ModelMap model, @PathVariable("maSP") Integer maSP) {
		
			KhachHang kh = layKH(UserLogin.tenDangNhap);
			for (GioHang i : kh.getGioHang()) {
				if (i.getSanPham().getMaSP() == maSP) {
					Report.tbTonTai="block";
					Report.tbThanhCong="none";
					Report.tbThatBai="none";
					return "redirect:/view/wishlist.htm"; // add rá»“i kh cho add
															// ná»¯a tráº£ vá»? TB
				}
			}
			if (checkTinhTrang(maSP) == true) { // cÃ²n hÃ ng thÃ¬ cho add
				GioHang gio = new GioHang();
				gio.setSanPham(laySP(maSP));
				gio.setKhachHang(kh);
				gio.setSoLuong(1);
				themGioHang(gio);
				Report.tbTonTai="none";
				Report.tbThanhCong="block";
				Report.tbThatBai="none";
				return "redirect:/view/wishlist.htm";
			} else
				Report.tbTonTai="none";
				Report.tbThanhCong="none";
				Report.tbThatBai="block";
				return "redirect:/view/wishlist.htm"; // tráº£ vá»? thÃ´ng bÃ¡o háº¿t
														// hÃ ng

	}

	public void CountSL(ModelMap model) {
		if (checkDN() == true) {
			KhachHang kh = layKH(UserLogin.tenDangNhap);
			int soLuong = 0;
			for (GioHang i : kh.getGioHang()) {
				soLuong = soLuong + i.getSoLuong();
			}
			model.addAttribute("hienThi", "block");
			model.addAttribute("soLuong", soLuong);
		} else
			model.addAttribute("hienThi", "none");
	}

	public long TongTien(ModelMap model) {
		KhachHang kh = layKH(UserLogin.tenDangNhap);
		long tien = 0;
		for (GioHang i : kh.getGioHang()) {
			tien = (long) (tien + (i.getSoLuong() * i.getSanPham().getGia()));
		}
		model.addAttribute("tien", tien);

		return tien;
	}

	@RequestMapping("cart")
	public String showCart(ModelMap model) {
		run(model);
		if (checkDN() == true) {
			KhachHang kh = layKH(UserLogin.tenDangNhap);
			List<GioHang> list = new ArrayList();

			for (GioHang i : kh.getGioHang()) {
				list.add(i);
			}
			model.addAttribute("list", list);
			ShowReport(model);
			Report.clear();
			TongTien(model);
			return "sanpham/cart";
		} else
			return "redirect:/user/login.htm";
	}

	@RequestMapping(value = "removeCart/{maSP}")
	public String RemoveCart(ModelMap model, @PathVariable("maSP") Integer maSP) {
		run(model);
		KhachHang kh = layKH(UserLogin.tenDangNhap);
		List<GioHang> list = new ArrayList();
		for (GioHang i : kh.getGioHang()) {
			if (i.getSanPham().getMaSP() == maSP) {
				removeGioHang(i);
			}
		}
		Report.tbTonTai="none";
		Report.tbThanhCong="block";
		Report.tbThatBai="none";
		return "redirect:/view/cart.htm";
	}

	public boolean removeGioHang(GioHang gio) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(gio);
			t.commit();
		} catch (Exception e) {

			t.rollback();
			return false;
		}
		session.close();

		return true;
	}

	@RequestMapping(value = "updateCart/{maSP}", params = "updateCart")
	public String UpdateCart(ModelMap model, @RequestParam("sl") Integer sl, @PathVariable("maSP") Integer maSP) {

		KhachHang kh = layKH(UserLogin.tenDangNhap);
		if (checkTinhTrang(maSP) == true) { // sáº£n pháº©m thÃªm vÃ o trÆ°á»›c Ä‘Ã³ cÃ²n hÃ ng thÃ¬ cho cáº­p nháº­t
			for (GioHang i : kh.getGioHang()) {
				if (i.getSanPham().getMaSP() == maSP) {
					i.setSoLuong(sl);
					capNhatGioHang(i);
				}
			}
			Report.tbTonTai="none";
			Report.tbThanhCong="block";
			Report.tbThatBai="none";
			return "redirect:/view/cart.htm";
		} else
			Report.tbTonTai="none";
			Report.tbThanhCong="none";
			Report.tbThatBai="block";			
			return "redirect:/view/cart.htm"; // tráº£ vá»? thÃ´ng bÃ¡o háº¿t hÃ ng

	}

	@RequestMapping(value = "muaHang")
	public String muaHang(ModelMap model) {
		run(model);
		TongTien(model);
		KhachHang list = layKH(UserLogin.tenDangNhap);
		List<GioHang> list1 = new ArrayList();
		if (list.getGioHang().isEmpty()) {
			Report.tbTonTai="none";
			Report.tbThanhCong="none";
			Report.tbThatBai="block";
			return "redirect:/view/cart.htm"; // giá»? hÃ ng trá»‘ng
		} else {
			for (GioHang i : list.getGioHang()) {
				list1.add(i);
			}
			model.addAttribute("list", list1);
			model.addAttribute("account", list);
			return "sanpham/checkout";
		}
	}

	@RequestMapping(value = "datHang", params = "btnDatHang")
	public String datHang(ModelMap model, @RequestParam("note") String note) {
		run(model);
		System.out.print("note: " + note);
		KhachHang kh = layKH(UserLogin.tenDangNhap);
		long tien = TongTien(model);
		// thÃªm hÃ³a Ä‘Æ¡n
		HoaDon hd = new HoaDon();
		hd.setNgayLap(new Date());
		hd.setKhachHang(kh);
		hd.setTongTien(tien);
		hd.setXacNhan(false);
		this.themHoaDon(hd);
		// thÃªm chi tiáº¿t hÃ³a Ä‘Æ¡n
		CTHoaDon cthd = new CTHoaDon();
		for (GioHang i : kh.getGioHang()) {
			cthd.setHoaDon(hd);
			cthd.setSanPham(i.getSanPham());
			cthd.setSoLuong(i.getSoLuong());
			cthd.setGhiChu(note);
			this.themCTHoaDon(cthd);
		}
		this.xoaGioHang(kh.getMaKH());
		return "redirect:/view/myoder.htm";

	}

	public boolean themHoaDon(HoaDon hd) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(hd);
			t.commit();
		} catch (Exception e) {

			t.rollback();
			return false;
		}
		session.close();

		return true;
	}

	public boolean themCTHoaDon(CTHoaDon cthd) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(cthd);
			t.commit();
		} catch (Exception e) {

			t.rollback();
			return false;
		}
		session.close();

		return true;
	}

	public void xoaGioHang(int maKH) {
		Session session = factory.getCurrentSession();
		String hql = "DELETE FROM GioHang gh WHERE gh.KhachHang.MaKH = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", maKH);
		query.executeUpdate();
	}
	
	public List<CTHoaDon> layCTHD(int maHD) {
			Session session = factory.getCurrentSession();
			String hql = "FROM CTHoaDon cthd where cthd.HoaDon.MaHD =:id";
			Query query = session.createQuery(hql);
			query.setParameter("id", maHD);
			List<CTHoaDon> list = query.list();
			return list;
	}
	
	@RequestMapping(value = "myoder")
	public String myoder(ModelMap model) {
		run(model);
		KhachHang kh = layKH(UserLogin.tenDangNhap);
		List<HoaDon> list = new ArrayList();

		for (HoaDon i : kh.getHoaDon()) {
			list.add(i);
		}
		model.addAttribute("dshoadon", list);
			return "sanpham/my-account";
		}
	
	@RequestMapping(value = "xemCTHD/{maHD}")
	public String xemCTHD(ModelMap model, @PathVariable("maHD") Integer maHD) {
		run(model);
		model.addAttribute("cthd",layCTHD(maHD));
		return "sanpham/chitiethoadon";
	}

}
