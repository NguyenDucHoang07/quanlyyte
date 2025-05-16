<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <title>Quản lý Lịch khám</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-4">
    <h2 class="mb-4">Quản lý Lịch khám</h2>

    <!-- Nút thêm lịch khám mới -->
    <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#appointmentModal">
        Thêm lịch khám mới
    </button>

    <!-- Bảng danh sách lịch khám (tạm thời dữ liệu cứng) -->
    <table class="table table-bordered table-hover align-middle">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Bệnh nhân</th>
                <th>Bác sĩ</th>
                <th>Ngày giờ</th>
                <th>Trạng thái</th>
                <th>Lý do</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>Nguyễn Văn A</td>
                <td>BS. Trần Thị B</td>
                <td>2025-05-20 14:30</td>
                <td><span class="badge bg-primary">Đã đặt</span></td>
                <td>Khám tổng quát</td>
                <td>
                    <button class="btn btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#appointmentModal">Sửa</button>
                    <button class="btn btn-sm btn-danger">Xoá</button>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>Trần Thị C</td>
                <td>BS. Lê Văn D</td>
                <td>2025-05-21 09:00</td>
                <td><span class="badge bg-success">Đã khám</span></td>
                <td>Khám chuyên khoa</td>
                <td>
                    <button class="btn btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#appointmentModal">Sửa</button>
                    <button class="btn btn-sm btn-danger">Xoá</button>
                </td>
            </tr>
        </tbody>
    </table>
</div>

<!-- Modal Thêm/Sửa lịch khám -->
<div class="modal fade" id="appointmentModal" tabindex="-1" aria-labelledby="appointmentModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form>
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="appointmentModalLabel">Thêm / Sửa lịch khám</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Đóng"></button>
        </div>
        <div class="modal-body">
            <div class="mb-3">
                <label for="patientName" class="form-label">Tên bệnh nhân</label>
                <input type="text" class="form-control" id="patientName" placeholder="Nhập tên bệnh nhân" required>
            </div>
            <div class="mb-3">
                <label for="doctorName" class="form-label">Tên bác sĩ</label>
                <input type="text" class="form-control" id="doctorName" placeholder="Nhập tên bác sĩ" required>
            </div>
            <div class="mb-3">
                <label for="appointmentDate" class="form-label">Ngày giờ khám</label>
                <input type="datetime-local" class="form-control" id="appointmentDate" required>
            </div>
            <div class="mb-3">
                <label for="status" class="form-label">Trạng thái</label>
                <select class="form-select" id="status" required>
                    <option value="SCHEDULED">Đã đặt</option>
                    <option value="COMPLETED">Đã khám</option>
                    <option value="CANCELLED">Đã hủy</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="reason" class="form-label">Lý do khám</label>
                <textarea class="form-control" id="reason" rows="3" placeholder="Nhập lý do khám"></textarea>
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
          <button type="submit" class="btn btn-primary">Lưu</button>
        </div>
      </div>
    </form>
  </div>
</div>

</body>
</html>
