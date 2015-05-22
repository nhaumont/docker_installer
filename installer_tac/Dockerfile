FROM installer_files

ENV PRODUCT TAC

RUN ./run_install.sh

EXPOSE 8080

CMD chmod +x /Talend/tac/apache-tomcat/bin/*.sh && /Talend/tac/apache-tomcat/bin/startup.sh && /bin/bash
