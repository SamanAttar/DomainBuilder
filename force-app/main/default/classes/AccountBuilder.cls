public class AccountBuilder extends DomainBuilder {

    public AccountBuilder() {
        setType('Account');
        super.record = new Account();
    }
    
    public AccountBuilder(Account existingAccount) {
        setType('Account');
        super.record = existingAccount;
    }

    public override sObject build(){
        return super.record;
    }

    public override sObject buildAndInsert(){
        insert super.record;
        return super.record;
    }


}
