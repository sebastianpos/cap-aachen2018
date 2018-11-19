FROM gapsystem/gap-docker

MAINTAINER Sebastian Posur <sebastian.posur@uni-siegen.de>

COPY --chown=1000:1000 . $HOME/cap-aachen2018

USER gap

WORKDIR $HOME/cap-aachen2018/notebooks
