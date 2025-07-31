<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Payment Success</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f7f7f7; padding: 30px;">
    <div style="max-width: 600px; margin: auto; background: white; padding: 30px; border-radius: 8px;">
        <h2 style="color: #e73a40;">Thank you, {{ $user->name }}!</h2>
        <p>Your payment was successful and your plan is now active.</p>

        <h4>🧾 Payment Summary:</h4>
        <ul>
            <li><strong>Plan:</strong> {{ $plan->title }}</li>
            <li><strong>Amount Paid:</strong> ${{ number_format($payment->amount_paid, 2) }}</li>
            <li><strong>Transaction ID:</strong> {{ $payment->payment_intent_id }}</li>
            <li><strong>Date:</strong> {{ $payment->created_at->format('M d, Y h:i A') }}</li>
        </ul>

        <p>If you have any questions, feel free to reply to this email.</p>

        <p>Regards,<br><strong>Amore</strong></p>
    </div>
</body>
</html>
