FROM rabbitmq:3.9-management

RUN rabbitmq-plugins enable --offline rabbitmq_sharding rabbitmq_federation rabbitmq_federation_management rabbitmq_stream rabbitmq_stream_management rabbitmq_auth_backend_ldap

COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

EXPOSE 5552