package Controllers;

import java.util.ArrayList;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Bean.Report;
import Bean.UserLogin;
import Entity.GioHang;
import Entity.KhachHang;
import Entity.NhanVien;
import Entity.NhomSanPham;
import Entity.SanPham;
import Entity.TaiKhoan;
import Entity.TinTuc;



@Transactional
@Controller
@RequestMapping("/user/")
public class KhachhangController {
	@Autowired
	SessionFactory factory;

	public void run(ModelMap model) {
		checkPQ(model);
		CountSL(model);
	}
	public boolean checkDN() {
		if (UserLogin.tenDangNhap.equals("none")) {
			return false;
		}
		return true;
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

	public void CountSL(ModelMap model) {
		if (checkDN()==true) {
			KhachHang kh = layKH(UserLogin.tenDangNhap);
			int soLuong = 0;
			for (GioHang i : kh.getGioHang()) {
				soLuong = soLuong + i.getSoLuong();
			}
			model.addAttribute("hienThi", "block");
			model.addAttribute("soLuong", soLuong);
		}
		else model.addAttribute("hienThi", "none");
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
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String logIn(ModelMap model) {
		UserLogin.tenDangNhap = "none";
		UserLogin.matKhau = "";
		UserLogin.ten = "";
		run(model);
		model.addAttribute("taikhoan", new TaiKhoan());
		return "user/login";
	}

	public String layTenKH(String tk, String mk) {
		KhachHang kh = new KhachHang();
		try {
			Session session = factory.getCurrentSession();
			String hql = "FROM KhachHang kh where kh.taiKhoan2.TenDangNhap =:tk and kh.taiKhoan2.MatKhau =:mk";
			Query query = session.createQuery(hql);
			query.setParameter("tk", tk);
			query.setParameter("mk", mk);
			kh = (KhachHang) query.list().get(0);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return kh.getTenKH();
	}

	public String layTenAD(String tk, String mk) {
		NhanVien nv = new NhanVien();
		try {
			Session session = factory.getCurrentSession();
			String hql = "FROM NhanVien nv where nv.TaiKhoan.TenDangNhap =:tk and nv.TaiKhoan.MatKhau =:mk";
			Query query = session.createQuery(hql);
			query.setParameter("tk", tk);
			query.setParameter("mk", mk);
			nv = (NhanVien) query.list().get(0);
			System.out.println(nv.getCMND());
		} catch (Exception e) {
			// TODO: handle exception
		}
		return nv.getHoTen();
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String logIn(ModelMap model, @ModelAttribute("taikhoan") TaiKhoan taikhoan) {
		run(model);
		boolean check = true;
		if (taikhoan.getTenDangNhap().trim().isEmpty()) {
			check = false;
			model.addAttribute("LoiDinhDangTenDangNhap", "Tên đăng nhập không được để trống !");
		}

		// kiá»ƒm tra Ä‘á»‹nh dáº¡ng máº­t kháº©u khÃ´ng Ã­t hÆ¡n 8 kÃ­ tÆ° vÃ  máº­t kháº©u khÃ´ng
		// chá»© khoáº£ng tráº¯ng
		if (taikhoan.getMatKhau().trim().isEmpty()) {
			check = false;
			model.addAttribute("LoiDinhDangMatKhau", "Mật khẩu không được để trống !");
		} else if (taikhoan.getMatKhau().trim().contains(" ")) {
			check = false;
			model.addAttribute("LoiDinhDangMatKhau", "Mật khẩu không chứa khoảng trắng !");
		} else if (!taikhoan.getMatKhau().trim().matches(".{8,}")) {
			check = false;
			model.addAttribute("LoiDinhDangMatKhau", "Mật khẩu không dưới 8 ký tự !");
		}

		if (check) {
			// kiá»ƒm tra sá»± tá»“n táº¡i cá»§a email trong cÆ¡ sá»Ÿ dá»¯ liÃªu
			try {
				Session session = factory.getCurrentSession();
				String hql = "FROM TaiKhoan tk where tk.TenDangNhap =:t and tk.MatKhau= :mk";
				Query query = session.createQuery(hql);
				query.setParameter("t", taikhoan.getTenDangNhap());
				query.setParameter("mk", taikhoan.getMatKhau());

				TaiKhoan user1 = (TaiKhoan) query.list().get(0);
				if (user1.isTrangThai() == true) {
					
					if (!(user1.getTenDangNhap().isEmpty()) && user1.getVaiTro().equals("Khách hàng")) {
						String tenKH = layTenKH(user1.getTenDangNhap(), user1.getMatKhau());
						String mangTen[] = tenKH.split(" ");

						UserLogin.tenDangNhap = user1.getTenDangNhap() + "";
						UserLogin.matKhau = user1.getMatKhau();
						UserLogin.ten = mangTen[mangTen.length - 1];

						System.out.println("user: " + UserLogin.tenDangNhap);
						System.out.println("mk: " + UserLogin.matKhau);
						System.out.println("ten: " + UserLogin.ten);
						return "redirect:/user/index1.htm";
					} else {
						String tenAD = layTenAD(user1.getTenDangNhap(), user1.getMatKhau());
						String mangTen[] = tenAD.split(" ");
						UserLogin.tenDangNhap = user1.getTenDangNhap() + "";
						UserLogin.matKhau = user1.getMatKhau();
						UserLogin.ten = mangTen[mangTen.length - 1];

						System.out.println("user: "+UserLogin.tenDangNhap);
						System.out.println("mk: "+UserLogin.matKhau);
						System.out.println("ten: "+UserLogin.ten);
						return "redirect:/hoadon.htm";
					}
				} else
					model.addAttribute("message", "Tài khoản đã bị vô hiệu hoá !");
			} catch (Exception e) {
				// TODO: handle exception
				model.addAttribute("message", "Tài khoản và mật khẩu không chính xác !");
			}
		}
		return "user/login";
	}

	@RequestMapping("index1")
	public String index(ModelMap model) {
		run(model);
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham ORDER BY NEWID()";
		String hq2 = "FROM SanPham sp ORDER BY sp.MaSP DESC";
		Query query = session.createQuery(hql);
		Query query2 = session.createQuery(hq2);
		SanPham spnew = (SanPham) query2.list().get(0);
		List<SanPham> list = new ArrayList();
		for(int i = 0 ; i<8 ; i++){
			list.add((SanPham) query.list().get(i));
		}
		model.addAttribute("list",list);
		model.addAttribute("spnew",spnew);
		return "user/index";
	}

	@RequestMapping("dangxuat")
	public String dangXuat() {
		UserLogin.clear();
		System.out.println("user: " + UserLogin.tenDangNhap);
		System.out.println("mk: " + UserLogin.matKhau);
		System.out.println("ten: " + UserLogin.ten);
		return "redirect:/user/index1.htm";
	}

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register(ModelMap model) {
		UserLogin.tenDangNhap = "none";
		UserLogin.matKhau = "";
		UserLogin.ten = "";
		run(model);
		model.addAttribute("khachhang", new KhachHang());
		return "user/register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(ModelMap model, @ModelAttribute("khachhang") KhachHang khachhang) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		run(model);
		try {
			// biáº¿n kiá»ƒm tra validate
			boolean check = true;

			// kiá»ƒm tra Ä‘á»‹nh dáº¡ng cá»§a tÃªn khÃ´ng Ä‘Æ°á»£c cÃ³ sá»‘
			if (khachhang.getTenKH().trim().equals("")) {
				check = false;
				model.addAttribute("LoiDinhDangTen", "Tên khách hàng không được để trống !");
			} else if (!khachhang.getTenKH().trim().matches("\\D+")) {
				check = false;
				model.addAttribute("LoiDinhDangTen", "Tên khách hàng không hợp lệ !");
			}

			// kiá»ƒm tra sá»‘ Ä‘iá»‡n thoáº¡i khÃ´ng cÃ³ kÃ­ tá»± chá»¯ vÃ  Ä‘á»™ dÃ i lÃ  10 sá»‘
			if (khachhang.getSdt().trim().isEmpty()) {
				check = false;
				model.addAttribute("LoiDinhDangSDT", "Số điện thoại không được để trống !");
			} else if (!khachhang.getSdt().trim().matches("\\d{10}")) {
				check = false;
				model.addAttribute("LoiDinhDangSDT", "Số điện thoại không hợp lệ !");
			} else {
				// kiá»ƒm tra sá»± tá»“n táº¡i cá»§a sdt trong cÆ¡ sá»Ÿ dá»¯ liÃªu
				try {
					String hql = "FROM KhachHang where Sdt =:s";
					Query query = session.createQuery(hql);
					query.setParameter("s", khachhang.getSdt());
					List<KhachHang> list = query.list();
					if (!list.isEmpty()) {
						check = false;
						model.addAttribute("LoiDinhDangSDT", "Số điện thoại này đã tồn tại !");
					}
				} catch (Exception e) {
					// TODO: handle exception
				}
			}

			// kiá»ƒm tra Ä‘á»‹a chá»‰ khÃ´ng Ä‘Æ°á»£c bá»? trá»‘ng
			if (khachhang.getDiaChi().trim().isEmpty()) {
				check = false;
				model.addAttribute("LoiDinhDangDiaChi", "Địa chỉ không được để trống !");
			}

			// kiá»ƒm tra Ä‘á»‹nh dáº¡ng email : abc@gmail.com.vn
			if (khachhang.getEmail().trim().isEmpty()) {
				check = false;
				model.addAttribute("LoiDinhDangEmail", "Email không được để trống !");
			}
			// kiá»ƒm tra Ä‘á»‹nh dáº¡ng mail báº±ng regex
			else if (!khachhang.getEmail().trim().matches("\\w+@\\w+(\\.\\w+)+")) {
				check = false;
				model.addAttribute("LoiDinhDangEmail", "Email không hợp lệ !");
			} else {
				// kiá»ƒm tra sá»± tá»“n táº¡i cá»§a email trong cÆ¡ sá»Ÿ dá»¯ liÃªu
				try {
					String hql = "FROM KhachHang where Email =:email";
					Query query = session.createQuery(hql);
					query.setParameter("email", khachhang.getEmail());
					List<KhachHang> list = query.list();
					if (!list.isEmpty()) {
						check = false;
						model.addAttribute("LoiDinhDangEmail", "Địa chỉ Email đã tồn tại !");
					}
				} catch (Exception e) {
					// TODO: handle exception
				}
			}

			if (khachhang.getTaiKhoan2().getTenDangNhap().trim().isEmpty()) {
				check = false;
				model.addAttribute("LoiDinhDangTenDangNhap", "Tên đăng nhập không được để trống !");
			} else {
				// kiá»ƒm tra sá»± tá»“n táº¡i cá»§a tÃªn Ä‘Äƒng nháº­p trong cÆ¡ sá»Ÿ dá»¯ liÃªu
				try {
					String hql = "FROM TaiKhoan tk where tk.TenDangNhap =:tdn";
					Query query = session.createQuery(hql);
					query.setParameter("tdn", khachhang.getTaiKhoan2().getTenDangNhap());
					List<TaiKhoan> list = query.list();
					if (!list.isEmpty()) {
						check = false;
						model.addAttribute("LoiDinhDangTenDangNhap", "Tên đăng nhập này đã tồn tại !");
					}
				} catch (Exception e) {
					// TODO: handle exception
				}

			}
			if (khachhang.getTaiKhoan2().getMatKhau().trim().isEmpty()) {
				check = false;
				model.addAttribute("LoiDinhDangMatKhau", "Mật khẩu không được để trống !");
			} else if (khachhang.getTaiKhoan2().getMatKhau().trim().contains(" ")) {
				check = false;
				model.addAttribute("LoiDinhDangMatKhau", "Mật khẩu không chứa khoảng trắng !");
			} else if (!khachhang.getTaiKhoan2().getMatKhau().trim().matches(".{8,}")) {
				check = false;
				model.addAttribute("LoiDinhDangMatKhau", "Mật khẩu không dưới 8 ký tự !");
			}
			if (check) {
				khachhang.getTaiKhoan2().setMatKhau(khachhang.getTaiKhoan2().getMatKhau().toLowerCase()); // chuyá»ƒn máº­t kháº©u thÃ nh chá»¯ thÆ°á»?ng
				khachhang.getTaiKhoan2().setTrangThai(true);
				khachhang.getTaiKhoan2().setVaiTro("Khách hàng");

				session.save(khachhang.getTaiKhoan2());
				session.save(khachhang);

				t.commit();
				model.addAttribute("message", "Đăng ký thành công ! Vui lòng đăng nhập !");

			}
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Đăng ký thất bại !");
		} finally {
			session.close();
		}
		return "user/register";

	}

	@Autowired
	JavaMailSender mailer;

	@RequestMapping(value = "quenmatkhau", method = RequestMethod.GET)
	public String send(ModelMap model) {
		run(model);
		return "user/quenmk";
	}

	@RequestMapping(value = "quenmatkhau", method = RequestMethod.POST)
	public String send(ModelMap model, @RequestParam("email") String to) {
		run(model);
		boolean check = true;
		// kiá»ƒm tra Ä‘á»‹nh dáº¡ng email
		if (to.trim().isEmpty()) {
			check = false;
			model.addAttribute("LoiDinhDangEmail", "Email không được để trống !");
		} else if (!to.trim().matches("\\w+@\\w+(\\.\\w+)+")) {
			check = false;
			model.addAttribute("LoiDinhDangEmail", "Email không hợp lệ !");
		}
		KhachHang kh = new KhachHang();
		if (check) {
			try {
				Session s = factory.getCurrentSession();
				String hql = "FROM KhachHang where Email =:e";
				Query query = s.createQuery(hql);
				query.setParameter("e", to);
				List<KhachHang> list = query.list();
				if (list.isEmpty()) {
					model.addAttribute("message", "Email này chưa được đăng ký !");
					// return "redirect:/user/signin.htm";
				} else {
					kh = (KhachHang) query.list().get(0);
					String from = "vunganyen2000@gmail.com";
					String subject = "PET SHOP - Quên mật khẩu";
					String body = "Mật khẩu của bạn là:  " + kh.getTaiKhoan2().getMatKhau();
					MimeMessage mail = mailer.createMimeMessage();
					// su dung lop tro giup
					MimeMessageHelper helper = new MimeMessageHelper(mail);
					helper.setFrom(from, from);
					helper.setTo(to);
					helper.setReplyTo(from, from);
					helper.setSubject(subject);
					helper.setText(body, true);

					// gui mai
					mailer.send(mail);
					model.addAttribute("message", "Đã gửi email thành công ! Vui lòng kiểm tra hòm thư !");
				}

			} catch (Exception e) {
				// TODO: handle exception
				model.addAttribute("message", "Xảy ra lỗi !");
			}
		}
		return "user/quenmk";
	}

	public void checkPQ(ModelMap model) {
		if (UserLogin.tenDangNhap.equals("none")) {
			
			model.addAttribute("dkdn", "block"); // Ä‘Äƒng nháº­p,kÃ½,xuáº¥t
			model.addAttribute("tkdx", "none"); // Ä‘Äƒng xuáº¥t,tÃ i khoáº£n
			model.addAttribute("user", "none"); // quyá»?n KH
			model.addAttribute("admin", "none"); // quyá»?n admin thÃªm,xÃ³a,sá»­a sp
			model.addAttribute("userId", "none"); // ten Ä?N
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
				System.out.println("khÃ¡ch hÃ ng zooo");
			}

		}
	}

	//
	@RequestMapping("thongtinkh")
	public String showThongTinTK(ModelMap model) {
		run(model);
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang kh where kh.taiKhoan2.TenDangNhap =:tdn";
		Query query = session.createQuery(hql);
		query.setParameter("tdn", UserLogin.tenDangNhap);
		KhachHang list = (KhachHang) query.list().get(0);
		model.addAttribute("account", list);
		model.addAttribute("tdn", UserLogin.tenDangNhap);
		ShowReport(model);
		Report.clear();
		return "user/thongtinKH";
	}

	@RequestMapping(value = "thongtinkh", params = "btnEdit")
	public String updateKH(HttpServletRequest request, ModelMap model, @ModelAttribute("account") KhachHang khachhang) {
		Session session = factory.getCurrentSession();
		run(model);
		try {
			// biáº¿n kiá»ƒm tra validate
			boolean check = true;

			// kiá»ƒm tra Ä‘á»‹nh dáº¡ng cá»§a tÃªn khÃ´ng Ä‘Æ°á»£c cÃ³ sá»‘
			if (khachhang.getTenKH().trim().equals("")) {
				check = false;
				model.addAttribute("LoiDinhDangTen", "Tên khách hàng không được để trống !");
			} else if (!khachhang.getTenKH().trim().matches("\\D+")) {
				check = false;
				model.addAttribute("LoiDinhDangTen", "Tên khách hàng không hợp lệ !");
			}

			// kiá»ƒm tra sá»‘ Ä‘iá»‡n thoáº¡i khÃ´ng cÃ³ kÃ­ tá»± chá»¯ vÃ  Ä‘á»™ dÃ i lÃ  10 sá»‘
			if (khachhang.getSdt().trim().isEmpty()) {
				check = false;
				model.addAttribute("LoiDinhDangSDT", "Số điện thoại không được để trống !");
			} else if (!khachhang.getSdt().trim().matches("\\d{10}")) {
				check = false;
				model.addAttribute("LoiDinhDangSDT", "Số điện thoại không hợp lệ");
			} else {
				// kiá»ƒm tra sá»± tá»“n táº¡i cá»§a sdt trong cÆ¡ sá»Ÿ dá»¯ liÃªu
				try {
					String hql = "FROM KhachHang where Sdt =:s";
					Query query = session.createQuery(hql);
					query.setParameter("s", khachhang.getSdt());
					List<KhachHang> list = query.list();
					if (!list.isEmpty()) {
						System.out.print("tdn: " + list.get(0).getTaiKhoan2().getTenDangNhap());
						if (!list.get(0).getTaiKhoan2().getTenDangNhap().equals(UserLogin.tenDangNhap)) {
							check = false;
							model.addAttribute("LoiDinhDangSDT", "Số điện thoại này đã tồn tại !");
						} else {
						}
					}
				} catch (Exception e) {
					// TODO: handle exception
					System.out.println("Lá»—i");
				}
			}

			// kiá»ƒm tra Ä‘á»‹a chá»‰ khÃ´ng Ä‘Æ°á»£c bá»? trá»‘ng
			if (khachhang.getDiaChi().trim().isEmpty()) {
				check = false;
				model.addAttribute("LoiDinhDangDiaChi", "Địa chỉ không được để trống !");
			}

			// kiá»ƒm tra Ä‘á»‹nh dáº¡ng email : abc@gmail.com.vn
			if (khachhang.getEmail().trim().isEmpty()) {
				check = false;
				model.addAttribute("LoiDinhDangEmail", "Email không được để trống !");
			}
			// kiá»ƒm tra Ä‘á»‹nh dáº¡ng mail báº±ng regex
			else if (!khachhang.getEmail().trim().matches("\\w+@\\w+(\\.\\w+)+")) {
				check = false;
				model.addAttribute("LoiDinhDangEmail", "Email không hợp lệ !");
			} else {
				// kiá»ƒm tra sá»± tá»“n táº¡i cá»§a email trong cÆ¡ sá»Ÿ dá»¯ liÃªu
				try {
					String hql = "FROM KhachHang where Email =:email";
					Query query = session.createQuery(hql);
					query.setParameter("email", khachhang.getEmail());
					List<KhachHang> list = query.list();
					if (!list.isEmpty()) {
						if (!list.get(0).getTaiKhoan2().getTenDangNhap().equals(UserLogin.tenDangNhap)) {
							check = false;
							model.addAttribute("LoiDinhDangEmail", "Địa chỉ mail này đã được sử dụng !");
						} else {
						}
					}
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
			System.out.print("check: " + check);
			if (check) {
				Integer temp = this.updateKH(khachhang);
				if (temp != 0) {
					Report.tbThanhCong="block";
					Report.tbThatBai="none";
					return "redirect:/user/thongtinkh.htm";
				} else {
					Report.tbThanhCong="none";
					Report.tbThatBai="block";
				}
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.print("Xáº£y ra lá»•i");
		}
		run(model);
		model.addAttribute("tdn", UserLogin.tenDangNhap);
		ShowReport(model);
		Report.clear();
		return "user/thongtinKH";
		// return "redirect:/user/my-account.htm";
	}

	public Integer updateKH(KhachHang kh) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			String hql = "FROM KhachHang kh where kh.taiKhoan2.TenDangNhap = :tdn";
			Query query = session.createQuery(hql);
			query.setParameter("tdn", UserLogin.tenDangNhap);
			KhachHang khachhang = (KhachHang) query.list().get(0);
			khachhang.setTenKH(kh.getTenKH());
			khachhang.setSdt(kh.getSdt());
			khachhang.setEmail(kh.getEmail());
			khachhang.setDiaChi(kh.getDiaChi());

			session.update(khachhang);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			return 0;
		} finally {
			session.close();
		}
		return 1;
	}

	//
	@RequestMapping(value = "pass", params = "passEdit")
	public String updatePass(HttpServletRequest request, ModelMap model, @ModelAttribute("account") KhachHang kh,
			@RequestParam("pass") String pass, @RequestParam("pass1") String newpass1,
			@RequestParam("pass2") String newpass2) {
		Session session = factory.getCurrentSession();
		run(model);
		try {
			boolean check = true;
			// kiá»ƒm tra Ä‘á»‹nh dáº¡ng máº­t kháº©u khÃ´ng Ã­t hÆ¡n 8 kÃ­ tÆ° vÃ  máº­t kháº©u
			// khÃ´ng chá»© khoáº£ng tráº¯ng
			if (pass.trim().isEmpty()) {
				check = false;
				model.addAttribute("LoiDinhDangMatKhau", "Mật khẩu không được để trống !");
			} else if (pass.trim().contains(" ")) {
				check = false;
				model.addAttribute("LoiDinhDangMatKhau", "Mật khẩu không chứa khoảng trắng !");
			} else if (!pass.matches(".{8,}")) {
				check = false;
				model.addAttribute("LoiDinhDangMatKhau", "Mật khẩu không dưới 8 ký tự !");
			} else {
				try {
					String hql = "SELECT tk.MatKhau FROM TaiKhoan tk where tk.TenDangNhap =:tdn";
					Query query = session.createQuery(hql);
					query.setParameter("tdn", UserLogin.tenDangNhap);
					String mk = (String) query.list().get(0);
					if (!mk.equals(pass)) {
						check = false;
						model.addAttribute("LoiDinhDangMatKhau", "Mật khẩu cũ không đúng !");
					}
				} catch (Exception e) {
					// TODO: handle exception
				}
			}

			// kiá»ƒm tra Ä‘á»‹nh dáº¡ng máº­t kháº©u khÃ´ng Ã­t hÆ¡n 8 kÃ­ tÆ° vÃ  máº­t kháº©u
			// khÃ´ng chá»© khoáº£ng tráº¯ng
			if (newpass1.trim().isEmpty()) {
				check = false;
				model.addAttribute("LoiDinhDangMatKhau1", "Mật khẩu không được để trống !");
			} else if (newpass1.trim().contains(" ")) {
				check = false;
				model.addAttribute("LoiDinhDangMatKhau1", "Mật khẩu không chứa khoảng trắng !");
			} else if (!newpass1.trim().matches(".{8,}")) {
				check = false;
				model.addAttribute("LoiDinhDangMatKhau1", "Mật khẩu không dưới 8 ký tự !");
			}

			// kiá»ƒm tra Ä‘á»‹nh dáº¡ng máº­t kháº©u khÃ´ng Ã­t hÆ¡n 8 kÃ­ tÆ° vÃ  máº­t kháº©u
			// khÃ´ng chá»© khoáº£ng tráº¯ng
			if (newpass2.trim().isEmpty()) {
				check = false;
				model.addAttribute("LoiDinhDangMatKhau2", "Mật khẩu không được để trống !");
			} else if (newpass2.trim().contains(" ")) {
				check = false;
				model.addAttribute("LoiDinhDangMatKhau2", "Mật khẩu không chứa khoảng trắng !");
			} else if (!newpass2.trim().matches(".{8,}")) {
				check = false;
				model.addAttribute("LoiDinhDangMatKhau2", "Mật khẩu không dưới 8 ký tự !");
			}

			// so sÃ¡nh pass má»›i vÃ  pass má»›i láº§n 2
			if (!newpass1.equals(newpass2)) {
				check = false;
				model.addAttribute("LoiDinhDangMatKhau2", "Mật khẩu nhập lại không trùng khớp !");
			}

			System.out.print("check: " + check);
			if (check) {
				Integer temp = this.updatePass(newpass1);
				if (temp != 0) {
					Report.tbThanhCong="block";
					Report.tbThatBai="none";
					return "redirect:/user/thongtinkh.htm";
				} else {
					Report.tbThanhCong="none";
					Report.tbThatBai="block";
				}
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		run(model);
		String hql = "FROM KhachHang kh where kh.taiKhoan2.TenDangNhap =:tdn";
		Query query = session.createQuery(hql);
		query.setParameter("tdn", UserLogin.tenDangNhap);
		KhachHang list = (KhachHang) query.list().get(0);
		model.addAttribute("account", list);
		model.addAttribute("tdn", UserLogin.tenDangNhap);
		ShowReport(model);
		Report.clear();

		return "user/thongtinKH";

	}

	public Integer updatePass(String pass) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			String hql = "FROM TaiKhoan where TenDangNhap = :tdn";
			Query query = session.createQuery(hql);
			query.setParameter("tdn", UserLogin.tenDangNhap);
			TaiKhoan taikhoan = (TaiKhoan) query.list().get(0);
			taikhoan.setMatKhau(pass);

			session.update(taikhoan);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			return 0;
		} finally {
			session.close();
		}
		return 1;
	}

	//
	@RequestMapping("vohieuhoa")
	public String voHieuHoaTK(ModelMap model) {
		run(model);
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			String hql = "FROM TaiKhoan tk where tk.TenDangNhap =:tdn";
			Query query = session.createQuery(hql);
			query.setParameter("tdn", UserLogin.tenDangNhap);
			TaiKhoan tk = (TaiKhoan) query.list().get(0);
			tk.setTrangThai(false);
			session.update(tk);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		}

	 return "redirect:/user/dangxuat.htm";
	}
	
	@RequestMapping("contact")
	public String lienHe(ModelMap model) {
		run(model);

	 return "user/contact";
	}
	
	@RequestMapping("blog")
	public String xemTinTuc(ModelMap model) {
		run(model);
		Session session = factory.getCurrentSession();
		String hql = "FROM TinTuc ";
		Query query = session.createQuery(hql);
		List<TinTuc> list = query.list();
		model.addAttribute("listBlog", list);
	 return "user/blog";
	}
	
	@RequestMapping(value = "blog-detail/{maTT}", method = RequestMethod.GET)
	public String showSigle(ModelMap model, @PathVariable("maTT") Integer maTT) {
		run(model);
		Session session = factory.getCurrentSession();
		TinTuc tt = (TinTuc) session.get(TinTuc.class, maTT);
		model.addAttribute("tintuc", tt);
		return "user/blog-detail";
	}
	
}
