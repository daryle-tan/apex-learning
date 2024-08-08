public with sharing class BankAccount2 {
    // private Decimal balance;
    private String accountName;
    private Boolean isActive;
    // property accessors
    public Decimal balance {get; private set;}

    BanAccount2(Deciaml balance) { 
        this.balance = balance;
        this.isActive =  false;
       
    }

    BanAccount2(Deciaml balance, String accountName) { 
        this.balance = balance;
        this.accountName = accountName;
        this.isActive =  false;
    }

    //Getter for Balance
    // public Decimal getBalance() {
    //     return this.balance;
    // }

    //Setter for Balance
    // public void setBalance(Decimal amount) {
    //     this.balance = amount;
    // }
    public String getAccountName() {
        return this.accountName;
    }

    public Sring setAccountName(String newAccountName) {
        return this.accountName = newAccountName;
    }
    
    public void deposit(Decimal amount) {
        if(amount>0) {
            this.balance += amount;
        }
    }

   public void withdraw(Decimal amount) {
    if(amount>0) {
        this.balance -= amount;
    }
   }
}