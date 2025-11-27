import json
import urllib.request
import urllib.error
import os

def lambda_handler(event, context):
    try:
        WEBHOOK_URL = os.environ["DISCORD_WEBHOOK_URL"]

        message = event.get("message", "Pipeline finalizado")
        payload = {
            "content": f"📢 {message}"
        }

        data = json.dumps(payload).encode("utf-8")
        headers = {
            "Content-Type": "application/json",
            "User-Agent": "AWSLambda"
        }

        req = urllib.request.Request(
            WEBHOOK_URL,
            data=data,
            headers=headers,
            method="POST"
        )

        with urllib.request.urlopen(req) as response:
            print("Status:", response.getcode())
            return {
                "statusCode": 200,
                "body": json.dumps({"status": "ok"})
            }

    except urllib.error.HTTPError as e:
        return {
            "statusCode": e.code,
            "body": json.dumps({"status": "error", "error": f"HTTP Error {e.code}: {e.reason}"})
        }
    except Exception as e:
        return {
            "statusCode": 500,
            "body": json.dumps({"status": "error", "error": str(e)})
        }

