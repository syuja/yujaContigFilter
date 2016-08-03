FROM kbase/kbase:sdkbase.latest
MAINTAINER KBase Developer
# -----------------------------------------

# Insert apt-get instructions here to install
# any required dependencies for your module.

# RUN apt-get update

# -----------------------------------------

COPY ./ /kb/module

#any dependencies installed right here!! <-- 

RUN mkdir -p /kb/module/work

RUN apt-get install pip && pip install PYgresql

WORKDIR /kb/module

RUN make

ENTRYPOINT [ "./scripts/entrypoint.sh" ]

CMD [ ]
