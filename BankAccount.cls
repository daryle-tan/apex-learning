public with sharing class BankAccount {
   public Integer checkingAccount;
   public Integer routingNumber;
   public String accountHolder;
   public String nameOfBank;
   public Boolean isOverDraft;
   
   public BankAccount(Integer checkingAcc, Integer routingNum, String accHolder, String bankName) {
       this.checkingAccount = checkingAcc;
       this.routingNumber = routingNum;
       this.accountHolder = accHolder;
       this.nameOfBank = bankName;
       this.isOverDraft = false;
   }
   
   
    //Signature
   //AccessModifier returnType methodName(Parameter Comma Separated if Any)
   public void deposit(){
       this.isOverDraft = false;
   }

   public void goBroke(){
       this.isOverDraft = true;
   }
}