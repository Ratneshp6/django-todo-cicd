FROM python:3

# Set working directory
WORKDIR /data

# Install Django
RUN pip install --no-cache-dir django==3.2

# Copy project files
COPY . .

# Expose port
EXPOSE 8000

# Run migrations at container start, then run server
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
