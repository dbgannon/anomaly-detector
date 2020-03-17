FROM qtangs/sagemaker-notebook-base
MAINTAINER dennis gannon  <dennis.gannon@outlook.com>
RUN pip install boto3
RUN pip install sagemaker
RUN pip install pandas
RUN pip install matplotlib
COPY --chown=ec2-user containerized-anomaly-sagemaker.ipynb /home/ec2-user
COPY --chown=ec2-user  fake /home/ec2-user/.aws 
ENTRYPOINT ["bash"]