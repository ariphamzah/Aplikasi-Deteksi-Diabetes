# Gunakan image Python sebagai base
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Salin requirements.txt dan install dependency
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Salin semua file project
COPY . /app/

# Jalankan aplikasi
CMD ["python", "app.py"]  # Sesuaikan dengan file utama Anda
