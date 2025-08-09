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
    public void printDetails(){
        String strDetails='Bank Account Details: ';
        //If checkingAccount, routingNumber, accountHolder, and nameOfBank are there 
        if(this.checkingAccount!=null && this.routingNumber!=null && String.isNotBlank(this.accountHolder) && String.isNotBlank(this.nameOfBank)){
            strDetails+='Checking Account : '+this.checkingAccount.toString()+' - Routing Number : '+this.routingNumber.toString()+' - Account Holder: '+this.accountHolder+' - Bank Name: '+this.nameOfBank+' - Overdraft: '+this.isOverDraft;
        } 
        
        System.debug(strDetails);
    }

   //Signature
   //AccessModifier returnType methodName(Parameter Comma Separated if Any)
   public void deposit(){
       this.isOverDraft = false;
   }

   public void goBroke(){
       this.isOverDraft = true;
   }
//
}
