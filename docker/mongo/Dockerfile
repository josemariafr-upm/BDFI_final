FROM mongo:6.0.12-jammy

COPY ./origin_dest_distances.jsonl /data/origin_dest_distances.jsonl
COPY ./import_distances.sh /docker-entrypoint-initdb.d
