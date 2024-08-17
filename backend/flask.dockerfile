# Stage 1: Builder
FROM python:3.6-slim-buster AS builder

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Stage 2: Final
FROM python:3.6-slim-buster

WORKDIR /app

# Copy the dependencies from the builder stage
COPY --from=builder /usr/local/lib/python3.6/site-packages /usr/local/lib/python3.6/site-packages
COPY --from=builder /usr/local/bin /usr/local/bin

# Copy application files
COPY --from=builder /app /app

# Create a non-root user
RUN useradd -m myuser

# Ensure the non-root user owns the application files
RUN chown -R myuser:myuser /app

# Switch to the non-root user
USER myuser

EXPOSE 4000

CMD [ "flask", "run", "--host=0.0.0.0", "--port=4000"]
