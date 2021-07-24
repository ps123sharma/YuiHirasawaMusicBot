FROM programmingerror/ultroid:b0.1

# set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# clone the repo and change workdir
RUN git clone https://github.com/YuiHirasawaMusicBot/root/YuiHirasawaMusicBot/
WORKDIR /root/YuiHirasawaMusicBot/

# install main requirements.
COPY requirements.txt 
RUN pip3 install --no-cache-dir -r /requirements.txt
