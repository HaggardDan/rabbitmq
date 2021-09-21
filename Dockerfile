FROM rabbitmq:3.9-management

RUN rabbitmq-plugins enable --offline rabbitmq_sharding rabbitmq_federation rabbitmq_federation_management rabbitmq_stream rabbitmq_stream_management rabbitmq_auth_backend_ldap

COPY 20-default-stream-port.conf /etc/rabbitmq/conf.d/20-default-stream-port.conf

EXPOSE 5552