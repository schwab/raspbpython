# Add Tini. Tini operates as a process subreaper for jupyter. This prevents
# kernel crashes.
from gw000/keras-full
ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

# Install Python and Basic Python Tools
RUN apt-get install -y python python-dev python-distribute python-pip
RUN pip install -r /srv/requirements.txt

EXPOSE 8888
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]

