# Use a slim Python base image
FROM python:3.12-slim

# Create working directory inside the container
WORKDIR /app

# Copy repo contents into the container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Streamlit expects to be executed on port 8501
EXPOSE 8501

# Start Streamlit when the container launches
CMD ["streamlit", "run", "app.py", "--server.port", "8501", "--server.address", "0.0.0.0"]
