FROM 10.42.150.129:5000/library/installer_files

ENV PRODUCT Commandline

RUN ./install.sh && \
    rm -rf dist && \
    rm -rf Talend-Installer*

RUN cp /Talend/cmdline/studio/license /Talend/cmdline/studio/Talend*

EXPOSE 8002

CMD cd /Talend/cmdline/studio/Talend* && java -Xms64m -Xmx1024m -XX:MaxPermSize=256m -Dfile.encoding=utf-8 -jar plugins/org.eclipse.equinox.launcher_1.3.0.v20140415-2008.jar -nosplash -application org.talend.commandline.CommandLine -consoleLog -data commandline-workspace startServer -p 8002
