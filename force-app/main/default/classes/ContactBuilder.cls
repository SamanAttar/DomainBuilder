public class ContactBuilder extends DomainBuilder {

    private Contact contactRecord; 

    public ContactBuilder() {
        contactRecord = (Contact) initializeRecord('Contact');
    }
    
    public ContactBuilder(Contact existingContact) {
        contactRecord = (Contact) initializeRecord(existingContact);
    }

    public ContactBuilder withFirstAndLastName(String firstName, String lastName){
        contactRecord.LastName = lastName;
        return this;
    }

    public ContactBuilder withLastName(String lastName){
        contactRecord.LastName = lastName;
        return this;
    }

    public ContactBuilder withAccount(Id accountId){
        contactRecord.accountId = accountId;
        return this;
    }

    public override void validate(){
        if(String.isEmpty(contactRecord.LastName)){
            contactRecord.LastName = 'Builder Generated Record';
        }
    }   

}
