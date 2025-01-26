# Gunakan Python sebagai base image
FROM python:3.9-slim

# Set working directory di dalam container
WORKDIR /app

# Copy semua file ke dalam container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port Flask (default 5000)
EXPOSE 5000

# Jalankan aplikasi Flask
CMD ["python", "app.py"]
