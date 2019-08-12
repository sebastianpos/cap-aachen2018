FROM gapsystem/gap-docker

MAINTAINER Sebastian Posur <sebastian.posur@uni-siegen.de>

RUN     cd /home/gap/inst/gap*/pkg \
     && rm -rf CAP* \
     && git clone https://github.com/homalg-project/CAP_project.git \
     && cd CAP_project \
     && git checkout 3da4bf37b92e4bf1ac9d5855ad465b1d7da56141

COPY --chown=1000:1000 . $HOME/cap-aachen2018

USER gap

WORKDIR $HOME/cap-aachen2018/notebooks
