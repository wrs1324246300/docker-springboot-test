#基于jdk8镜像创建新镜像
FROM java:8
# 将jar包添加到容器中并更名为app.jar
# 注意：ADD 、 COPY 指令用法一样，
# 需要注意的是，COPY 指令需要复制的目录一定要放在 Dockerfile 文件的同级目录下。
# 我们这里，是Dockerfile文件随意放置的，所以使用ADD
# 把我们的jar文件，复制到镜像下app目录下。
ADD ./docker-test/target/docker-test-1.0.jar /app/docker-test-1.0.jar  
# 运行jar包
CMD ["nohup","java","-jar","/app/docker-test-1.0.jar","&"]