class PaymentApp {
    var balance: Double
 
    init(balance: Double) {
        self.balance = balance
    }
 
    func makePayment(amount: Double) -> Bool {
        if amount <= 0 || amount > balance {
            return false
        }
 
        balance -= amount
        return true
    }
}
 
// Example of using the PaymentApp class:
 
// Initialize the PaymentApp environment
let paymentApp = PaymentApp(balance: 100.0)
 
// Make a payment
let paymentAmount = 50.0
if paymentApp.makePayment(amount: paymentAmount) {
    print("Payment of \(paymentAmount) successful.")
} else {
    print("Payment failed.")
}
 
// Check the updated balance
print("Updated balance: \(paymentApp.balance)")
