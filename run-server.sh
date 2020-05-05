docker-compose up -d
cd hasura
hasura migrate apply
hasura console --console-port 9696




## if env variables changed
# docker-compose up -d

## if migrations changed, run this from hasura folder
# hasura migrate apply --endpoint <endpoint> --admin-secret <adminsecret>