FROM installer_files

ENV PRODUCT Jobserver

RUN ./install.sh && \
    rm -rf dist && \
    rm -rf Talend-Installer*

EXPOSE 8000 8001 8888

CMD /Talend/jobserver/agent/start_rs.sh
