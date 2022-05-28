all:
	docker-compose build && docker-compose up -d
dns:
	cd sample-dns && docker-compose build && docker-compose up -d