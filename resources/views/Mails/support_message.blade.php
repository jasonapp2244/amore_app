<!DOCTYPE html>
<html>
<head>
    <title>Support Message</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f7f7f7; padding: 30px;">
    <div style="max-width: 600px; margin: auto; background-color: #ffffff; padding: 30px; border-radius: 8px;">
        <h2 style="color: #e73a40;">Support Message from {{ $user->name }}</h2>

        <p><strong>Email:</strong> {{ $user->email }}</p>

        <p style="margin-top: 20px;"><strong>Message:</strong></p>
        <p style="background: #f1f1f1; padding: 15px; border-radius: 6px; line-height: 1.6;">
            {{ $messageData->help_description }}
        </p>
    </div>
</body>
</html>
