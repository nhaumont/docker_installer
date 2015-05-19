FROM 10.42.150.129:5000/library/installer_files

ENV PRODUCT TAC

RUN ./install.sh && \
    rm -rf dist && \
    rm -rf Talend-Installer*

EXPOSE 8080

CMD chmod +x /Talend/tac/apache-tomcat/bin/*.sh && /Talend/tac/apache-tomcat/bin/startup.sh && /bin/bash
