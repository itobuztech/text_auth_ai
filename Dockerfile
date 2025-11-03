FROM python:3.10-slim

WORKDIR /app

# Install git and dependencies
RUN apt-get update && apt-get install -y git

# Clone your GitHub repo
RUN git clone https://github.com/itobuztech/text_auth_ai.git .

# Install requirements
RUN pip install -r requirements.txt --no-cache-dir

# Create folders
RUN mkdir -p logs data/uploads data/reports models/cache

# Start app
CMD ["python", "text_auth_app.py"]