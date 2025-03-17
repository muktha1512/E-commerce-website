# Use the official Python image
FROM python:3.10

#Set the working directory in the container
WORKDIR /app

#Copy the project files into the container
COPY . /app

#Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Expose the port Django runs on
EXPOSE 8000

#Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
