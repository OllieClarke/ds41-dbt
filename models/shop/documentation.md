{% docs order_status %}
The Status of the Order
One of the following values:

|Status | Description|
|:------|------------:|
|completed | The customer has received their order |
|shipped | The order has been shipped to the customer |
|placed | The customer has placed their order|
|return_pending| The customer has returned the order, but we haven't received it|
|returned|The order has been returned successfully|

{% enddocs %}

{% docs payment_method %}

The Payment method used.
One of the following values:

|Method | Description |
|:------|-------------:|
|credit_card | a credit card|
|coupon | a shop coupon |
|bank_transfer | an online bank transfer|
|gift_card | a gift card|

{% enddocs %}
