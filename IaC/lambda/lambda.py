import json
import urllib.request
import urllib.error
import os

WEBHOOK_URL = os.environ["DISCORD_WEBHOOK_URL"]

def send(msg):
    payload = { "content": msg }
    req = urllib.request.Request(
        WEBHOOK_URL,
        data=json.dumps(payload).encode("utf-8"),
        headers={
            "Content-Type": "application/json",
            "User-Agent": "AWSLambda"
        },
        method="POST"
    )
    urllib.request.urlopen(req)


def lambda_handler(event, context):
    print("EVENT:", event)

    # --------------------------
    # 1️⃣ MENSAJE DEL PIPELINE
    # --------------------------
    if "message" in event:
        send(f"📢 {event['message']}")
        return {"statusCode": 200}

    # --------------------------
    # 2️⃣ EVENTO SNS (ALARMAS)
    # --------------------------
    if "Records" in event:
        sns_msg = event["Records"][0]["Sns"]["Message"]
        msg_text = sns_msg.lower()

        # CPU
        if "cpu" in msg_text:
            send("🚨 ALERTA DE CPU ALTA — EKS Cluster")
            return {"statusCode": 200}

        # MEMORIA
        if "memory" in msg_text or "mem" in msg_text:
            send("🚨 ALERTA DE MEMORIA ALTA — EKS Cluster")
            return {"statusCode": 200}

        # Si no es CPU ni memoria, ignorar
        print("SNS recibido pero no es CPU ni MEMORIA")
        return {"statusCode": 200}

    # --------------------------
    # 3️⃣ OTROS EVENTOS
    # --------------------------
    send("Evento recibido sin mensaje conocido")
    return {"statusCode": 200}
