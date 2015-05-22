FROM installer_files

ENV PRODUCT Jobserver

RUN ./run_install.sh

EXPOSE 8000 8001 8888

CMD /Talend/jobserver/agent/start_rs.sh
