FROM python:3.9-slim

# Set the working directory
WORKDIR /src

# Copy project files to the container
COPY . /src

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the FastAPI app
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000"]
