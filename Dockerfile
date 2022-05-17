FROM frolvlad/alpine-gxx:latest

WORKDIR /app
COPY ./smscsimulator.cpp /app/

RUN g++ smscsimulator.cpp -o MLSMSCSimulator

ENTRYPOINT [ "/bin/sh", "-c", "/app/MLSMSCSimulator" ]
