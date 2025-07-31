<!DOCTYPE html>
<html>
<head>
    <title>Your OTP Code</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f4f4f4; padding: 30px;">
    <div style="max-width: 600px; margin: auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.05);">
        <h2 style="color: #e73a40;">Your One-Time Password (OTP)</h2>

        <p style="font-size: 16px; color: #333;">Use the following OTP to login:</p>

        <div style="font-size: 32px; font-weight: bold; margin: 30px 0; background: #f8f9fa; padding: 20px; text-align: center; border-radius: 8px; letter-spacing: 3px; color: #333;">
            {{ $otp }}
        </div>

        <p style="color: #555;">This OTP is valid for <strong>15 minutes</strong>.</p>
    </div>
</body>
</html>
