<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>New Payment Received</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f1f1f1; padding: 30px;">
    <div style="max-width: 600px; margin: auto; background: white; padding: 30px; border-radius: 8px;">
        <h2 style="color: #e73a40;">New Payment Received</h2>

        <h4>User Info:</h4>
        <ul>
            {{-- <li><strong>Name:</strong> {{ $user->name }}</li> --}}
            <li><strong>Email:</strong> {{ $user->email }}</li>
        </ul>

        {{-- <h4>📦 Plan Info:</h4>
        <ul>
            <li><strong>Plan:</strong> {{ $plan->title }}</li>
            <li><strong>Slug:</strong> {{ $plan->slug }}</li>
            <li><strong>Messages:</strong> {{ $plan->messages }}</li>
            <li><strong>Rings:</strong> {{ $plan->rings }}</li>
        </ul> --}}

        <h4>Payment Info:</h4>
        <ul>
            <li><strong>Amount:</strong> ${{ number_format($payment->amount_paid, 2) }}</li>
            <li><strong>Payment For:</strong> {{ ucfirst($payment->payment_for) }}</li>
            <li><strong>Transaction ID:</strong> {{ $payment->payment_intent_id }}</li>
            <li><strong>Status:</strong> {{ ucfirst($payment->payment_status) }}</li>
            <li><strong>Date:</strong> {{ $payment->created_at->format('M d, Y h:i A') }}</li>
        </ul>

        <p>This payment has been recorded in the system.</p>

        <p>Thanks,<br></p>
    </div>
</body>
</html>
