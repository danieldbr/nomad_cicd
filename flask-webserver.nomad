job "flask-webserver" {
  datacenters = ["dc1"]

  group "web" {
    count = 1

    task "flask" {
      driver = "docker"

      config {
        image = "danieldbr/flask-webserver:v1"
        ports = ["http"]
      }

      resources {
        cpu    = 500 # 500 MHz
        memory = 256 # 256MB
      }

      service {
        name = "flask-webserver"
        tags = ["web"]
        port = "http"

        check {
          type     = "http"
          path     = "/"
          interval = "10s"
          timeout  = "2s"
        }
      }
    }

    network {
      port "http" {
        static = 8000
      }
    }
  }
}
