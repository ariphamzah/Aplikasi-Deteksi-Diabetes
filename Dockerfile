FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Salin file requirements dan instal dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Salin semua file ke dalam container
COPY . .

# Jalankan aplikasi di port 3000
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:3000", "app:app"]
