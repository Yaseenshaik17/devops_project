FROM python:3.10-slim


ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1


WORKDIR /app

# Copy project files
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir flask pandas numpy scikit-learn matplotlib seaborn

# Expose the Flask port
EXPOSE 5001

# Run the app (change the filename if needed)
CMD ["python", "app.py"]
