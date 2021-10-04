FROM apache/airflow
USER 0
RUN apt-get update \
  && apt-get install -y \
    git \
    curl \
    wget \
  && apt-get dist-upgrade -y \
  && apt-get autoremove -y \
  && apt-get clean autoclean -y \
  && rm -rf /var/lib/apt/lists/*
USER airflow
WORKDIR $AIRFLOW_HOME
COPY plugins/ ./plugins-install/
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
