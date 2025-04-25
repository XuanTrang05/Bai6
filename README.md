![image](https://github.com/user-attachments/assets/f8a485b7-d20a-43b0-82b9-1ba078dce263)# Bai6
## Đề bài
Bài tập 6: Hệ quản trị CSDL
Chủ đề: Câu lệnh Select
Yêu cầu bài tập: 
Cho file sv_tnut.sql (1.6MB)
1. Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server của em
2. dữ liệu đầu vào là tên của sv; sđt; ngày, tháng, năm sinh của sinh viên (của sv đang làm bài tập này)
3. nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
5. nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?
6. nhập sql để tìm xem có những sv nào trùng tên với em?
7. nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.
8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.
9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.
10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)

DEADLINE: 23H59:59 NGÀY 25/4/2025

Ghi chú: Giải thích tại sao lại có SQL như vậy.
### BÀI LÀM
## Câu 1.
- Bước 1: Mở phần mền sql
- Bước 2 Tạo database mới, sau khi tạo xong chọn database sv_tnut ở góc trái tên ssms để đảm bảo thực hiện script đúng nới
- Bước3: vào menu: file -> open-> file. chọn đến file sv_tnut.sql. Toàn bộ cript sẽ hiện lên màn hình
- Bước 4: chạy toàn bộ cậu lệnh SQL
- Bước 5. sau khi chạy xong sẽ thấy dữ liệu sinh viên đã được import vào bẳng SV
## Câu 2. dữ liệu đầu vào là tên của sv; sđt; ngày, tháng, năm sinh của sinh viên (của sv đang làm bài tập này)
![image](https://github.com/user-attachments/assets/1d645c02-3ae8-4d74-bf88-0b3c1b6290fa)
## Câu 3. nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
- Lọc sinh viên có ngày sinh 05/07/2004
- ns là cột ngày tháng năm sinh của các sinh viên
-CONVERT(DATE, Ns, 103) = '2004-07-05'; chuyển ngày theo định dạng dd/mm/yyyy (kiểu 103) sang kiểu date để so sánh
- Trả về sinh viên có ngày sinh là 05/07/2004

![image](https://github.com/user-attachments/assets/2f669196-055a-4cba-81cd-7c99ff700119)

## Câu 4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
- dùng hàm Day() và Month để so sánh ngày và tháng riêng lẻ
  
![image](https://github.com/user-attachments/assets/5e840fdb-97ec-4d19-96d4-f2e3a987504c)

## Câu 5. nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?
- Lấy tất cả sinh viên sinh trong tháng 7 năm 2004
  ![image](https://github.com/user-attachments/assets/2886c0dd-3402-4e63-ae74-6656bfef1852)
## Câu 6. nhập sql để tìm xem có những sv nào trùng tên với em?
- Lọc sinh viên có tên riêng là Trang
- Dùng N'' để hôc trợ unicode ( chữ có dấu)
  ![image](https://github.com/user-attachments/assets/22b7dc4d-c668-4754-b80b-1a89ed4ecabc)
## Câu 7. nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.
  - Lọc theo họ và tên đệm 'Hoàng Thị Xuân'
  ![image](https://github.com/user-attachments/assets/6876fd0a-ff6c-4889-ac80-3fddcbfee7d4)
## Câu 8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.
- Kiểm tra độ dài số điện thoại là 9 số
- IFF( SUBTRING(...)): so sánh từng kí tự với chuỗi chuẩn ' 332914611'
![image](https://github.com/user-attachments/assets/08ee039f-c0d3-46bf-8fce-eb6b3134242f)
## Câu 9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.
- Lọc sinh viên lớp có tên chứa KMT hoặc KTP
- vì trong file sv_tnut không có trường giới tính nên ta thêm điều kiện : họ đệm có chữ "thị" hoặc có 1 tên trong các tên nữ phổ biến ở Việt Nam
  ![image](https://github.com/user-attachments/assets/4fac1b47-ad77-4bcc-bb63-f39497d68f02)
## Câu 10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)
- Lọc sinh viên lớp chứa KMT
- sắp xếp theo tên và họ đệm
- COLLATE Vietnamese_CI_AI: sắp xếp không phân biệt dấu và hoa thường
- CI: Case insensitive ( không phân biệt hoa/ thường)
- AI: Accent Insensitive ( không phân biệt dấu)
- ![image](https://github.com/user-attachments/assets/50e63a4d-caf5-4526-8302-f48dcca94e1c)


