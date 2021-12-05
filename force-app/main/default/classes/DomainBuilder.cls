public abstract class DomainBuilder {

    private sObject domainRecord;

    public virtual sObject build(){
        validate();
        return domainRecord;
    }

    public virtual sObject buildAndCommit(){
        validate();
        upsert domainRecord;
        return domainRecord;
    }

    public virtual void validate(){
        return; // TODO: Don't do this. Any basic validation I can do?
    }

    public sObject initializeRecord(String sObjectType){
        this.domainRecord = Schema.getGlobalDescribe().get(sObjectType).newSObject();
        return this.domainRecord;
    }

    public sObject initializeRecord(sObject sObjectInstance){
        this.domainRecord = sObjectInstance;
        return this.domainRecord; 
    }

    public DomainBuilder withOwnerId(Id ownerId){
        this.domainRecord.put('OwnerId', ownerId);
        return this;
    } 

    public DomainBuilder withRecordType(Id recordTypeId){
        this.domainRecord.put('RecordTypeId', recordTypeId);
        return this;
    }
 
}
