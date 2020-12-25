FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN apt-get install -y dos2unix
RUN pip3 install Flask
RUN pip3 install requests
COPY . .
RUN dos2unix *.sh && apt-get --purge remove -y dos2unix && rm -rf /var/lib/apt/lists/*
EXPOSE 9801
ENTRYPOINT ["/bin/bash"]
CMD ["runapp.sh"]