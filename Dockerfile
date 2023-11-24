FROM openjdk
WORKDIR /app
COPY . /app
RUN javac A1Q1.java
CMD [ "java","A1Q1" ]