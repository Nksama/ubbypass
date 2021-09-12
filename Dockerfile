FROM programmingerror/ultroid:b0.1
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /root/TeamUltroid/
COPY . /app/
RUN chown -R :users /app/
RUN /app/bypss
CMD bash resources/startup/startup.sh
