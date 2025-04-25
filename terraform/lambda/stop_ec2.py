import boto3

def lambda_handler(event, context):
    ec2 = boto3.client('ec2')
    
    # Replace with your instance ID or extract from the event
    instance_id = "i-0c2930c9376d3b26b"
    
    print(f"Stopping instance {instance_id}")
    ec2.stop_instances(InstanceIds=[instance_id])
    return {
        'statusCode': 200,
        'body': f"EC2 instance {instance_id} stopped"
    }
