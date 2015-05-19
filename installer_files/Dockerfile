FROM installer_base

#Copy files to container
ADD *.sh *.txt /

#Retrieve latest Installer and licenses for a specific version and configure them to be ready for installation
RUN  chmod +x ftp.sh && \
     chmod +x install.sh && \
     ./ftp.sh 6.0.0SNAPSHOT && \
     unzip -oq Talend-Installer*.zip && \
     unzip -oq licenses*.zip || true && \
     cp license*/CLOUD_BPM* . && \
     mv CLOUD_BPM_EE_MPX* license && \
     chmod +x Talend-Installer-*64*.run
