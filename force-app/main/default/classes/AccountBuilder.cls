public class AccountBuilder extends DomainBuilder {

    private Account accountRecord;

    public AccountBuilder() {        
        accountRecord = (Account) initializeRecord('Account');
    }
    
    public AccountBuilder(Account existingAccount) {
        accountRecord = (Account) initializeRecord('Account');
    }

    public AccountBuilder withName(String name){
        accountRecord.Name = name;
        return this;
    }

    public override void validate(){
        if(String.isEmpty(accountRecord.Name)){
            accountRecord.Name = 'Builder Generated Record';
        }
    }    

}
