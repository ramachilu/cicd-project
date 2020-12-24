import time
from locust import HttpUser, task

class QuickstartUser(HttpUser):
    @task
    def hello_world(self):
        self.client.get("/")

    @task(3)
    def view_item(self):
        for item_id in range(10):
            self.client.post(f"/item?id={item_id}", name="/predict")
            time.sleep(1)

    def on_start(self):
        self.client.post("/login", json={"username":"foo", "password":"bar"})
