server {
    listen *:80;

    server_name qbittorrent;


    location / {
	 proxy_pass http://qbittorrent:8080;
	 proxy_set_header Host $host;
	 proxy_set_header X-Real-IP $remote_addr;

    }

}
