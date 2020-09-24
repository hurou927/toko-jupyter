FROM jupyter/datascience-notebook

USER root

RUN apt-get update
RUN apt-get install -y \
        build-essential \
        curl \
        git \
        less\
        tmux \
        vim

# https://github.com/ghmagazine/cibook
RUN R -e "install.packages(c('Ecdat','broom','miceadds','CausalImpact','MASS'), repos = 'https://cran.ism.ac.jp', quiet = TRUE)"

# graph
RUN R -e "install.packages(c('gridExtra','ggrepel','hexbin','viridis', 'viridisLite'), repos = 'https://cran.ism.ac.jp', quiet = TRUE)"

# stan
RUN R -e "install.packages(c('rstan'), repos = 'https://cran.ism.ac.jp', quiet = TRUE)"

# https://github.com/contactmodel/COVID19-Japan-Reff/blob/master/scripts/B-MLE.ipynb
RUN R -e "install.packages(c('dplyr','magrittr','tidyr','ggplot2','readxl','RColorBrewer','zoo','surveillance'), repos = 'https://cran.ism.ac.jp', quiet = TRUE)"

# statistick tools
RUN R -e "install.packages(c('glmnet', 'rpart', 'ranger'), repos = 'https://cran.ism.ac.jp', quiet = TRUE)"

# visualization
RUN R -e "install.packages(c('igraph', 'partykit', 'ggparty'), repos = 'https://cran.ism.ac.jp', quiet = TRUE)"

