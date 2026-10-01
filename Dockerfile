# Sử dụng base image PHP 8.1 kèm Web Server Apache
FROM php:8.1-apache

# Sao chép toàn bộ file trong thư mục hiện tại vào thư mục chạy web của Apache
COPY . /var/www/html/

# Mở cổng 80 để tiếp nhận truy cập web
EXPOSE 80