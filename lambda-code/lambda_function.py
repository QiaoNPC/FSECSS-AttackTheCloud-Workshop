import json
import boto3

def handler(event, context):
    user_input = event.get('key', '')

    encoded = 'KwwWEC0mFyEWcy0sHXVyHQ4jLwAGIw=='
    import base64
    key_bytes = base64.b64decode(encoded)
    expected = ''.join([chr(b ^ 0x42) for b in key_bytes])

    if user_input == expected:
        return {
            'statusCode': 200,
            'flag': True
        }
    else:
        return {
            'statusCode': 403,
            'error': 'Invalid key!'
        }
