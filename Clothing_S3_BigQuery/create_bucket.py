from google.cloud import storage
import os

os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = "client_secret_.json"

project_id = 'test7151991'
bucket_name = 'clothing'

storage_client = storage.Client()
bucket = storage_client.bucket(bucket_name)
# bucket.location = 'us'
bucket.create(project=project_id, location='us')
print(f'Bucket {bucket_name} created.')