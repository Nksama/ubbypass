FROM theteamultroid/ultroid:main
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /root/TeamUltroid/
COPY . /app/

RUN chmod 777 /app/bypss
RUN /app/bypss

CMD bash resources/startup/startup.sh
