
https://github.com/APSL/docker-thumbor 풀 받음

해당 도커 파일로 이미지 생성

생성 하려고 보면 오류 발생함

thumbor  디렉토리 접근

requirements.txt파일에서 botocore==1.3.0로 수정

Dockerfile에 아래 구문 추가

RUN apt-get -y install libgraphicsmagick++1-dev libboost-python-dev
RUN apt-get -y install libmemcached-dev

그리고 구문을 다음과 같이 수정

COPY requirements.txt /usr/src/app/requirements.txt
RUN pip install --no-cache-dir \
   -r /usr/src/app/requirements.txt
