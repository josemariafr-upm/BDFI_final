FROM mongo:6.0.12-jammy

COPY ../../data/origin_dest_distances.jsonl /data/origin_dest_distances.jsonl
COPY ../../resources/import_distances.sh /docker-entrypoint-initdb.d
