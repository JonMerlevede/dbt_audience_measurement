FROM gitpod/workspace-full

# This env var is used to force the 
# rebuild of the Gitpod environment when needed
#ENV TRIGGER_REBUILD 0

RUN sudo apt-get update && \
    sudo apt-get install -y wget git tree ssh nano sudo nmap man tmux curl joe && \
    sudo apt-get clean && \
    sudo rm -rf /var/cache/apt/* && \
    sudo rm -rf /var/lib/apt/lists/* && \
    sudo rm -rf /tmp/* && \
    pip install dbt-snowflake
     
# Copy exercices content into the image
# COPY --chown=gitpod content/ /home/gitpod/dbt_audiance_measurment
#USER gitpod