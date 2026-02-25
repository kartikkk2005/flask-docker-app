# Start from a base image that already has Python 3.7 installed
FROM python:3.7

# Copy my entire project folder from my computer into the container at /app
COPY . /app

# Set /app as the working directory inside the container (like doing: cd /app)
WORKDIR /app

# Install all required Python libraries listed in requirements.txt
RUN pip install -r requirements.txt

# When the container starts, automatically run my application
CMD ["python","app.py"]