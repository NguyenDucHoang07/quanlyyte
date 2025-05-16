package demo.quanliyte.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class vidu {

    @GetMapping("/")
    public String loginForm() {
        return "admin/dashboard/show"; // trả về login.jsp
    }

    @GetMapping("/quanlynguoidung")
    public String userManage() {
        return "admin/user/quanlynguoidung"; // trả về login.jsp
    }

    @GetMapping("/quanlybenhnhan")
    public String patienManage() {
        return "admin/patient/quanlybenhnhan"; // trả về login.jsp
    }

    @GetMapping("/quanlybacsi")
    public String doctorManage() {
        return "admin/doctor/quanlybacsivanhanvien"; // trả về login.jsp
    }

    @GetMapping("/quanlylichkham")
    public String scheduleManage() {
        return "admin/clinicschedule/quanlylichkham"; // trả về login.jsp
    }

    @GetMapping("/quanlythuoc")
    public String medicineManage() {
        return "admin/medicine/quanlythuoc"; // trả về login.jsp
    }

    @GetMapping("/quanlyhoadon")
    public String hoadonManage() {
        return "admin/invoiceandpayment/hoadonvathanhtoan"; // trả về login.jsp
    }

    @GetMapping("/quanlythongke")
    public String thongkeManage() {
        return "admin/reportandstatistics/thongke"; // trả về login.jsp
    }
}