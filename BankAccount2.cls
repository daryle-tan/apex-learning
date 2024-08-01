public with sharing class BankAccount2 {
    private Decimal balance;
    public String accountName;
    public Boolean isActive;

    BanAccount2(Deciaml balance) { 
        this.balance = balance;
        this.isActive =  false;
       
    }

    BanAccount2(Deciaml balance, String accountName) { 
        this.balance = balance;
        this.accountName = accountName;
        this.isActive =  false;
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