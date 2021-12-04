public abstract class DomainBuilder {

    public sObject record;

    public abstract sObject build();
    public abstract sObject buildAndInsert();

    public void setType(String sObjectType){
        this.record = Schema.getGlobalDescribe().get(sObjectType).newSObject();
    }

    public DomainBuilder withName(String name){
        this.record.put('Name', name);
        return this;
    }

    public DomainBuilder withOwnerId(Id ownerId){
        this.record.put('OwnerId', ownerId);
        return this;
    } 

    public DomainBuilder withRecordType(Id recordTypeId){
        this.record.put('RecordTypeId', recordTypeId);
        return this;
    }
 
}
