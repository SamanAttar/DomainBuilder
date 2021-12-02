public abstract class sObjectBuilder {

    public sObject record;

    public abstract sObject build();
    public abstract sObject buildAndInsert();

    public void setType(String sObjectType){
        this.record = Schema.getGlobalDescribe().get(sObjectType).newSObject();
    }

    public sObjectBuilder withName(String name){
        this.record.put('Name', name);
        return this;
    }

    public sObjectBuilder withOwnerId(Id ownerId){
        this.record.put('OwnerId', ownerId);
        return this;
    } 

    public sObjectBuilder withRecordType(Id recordTypeId){
        this.record.put('RecordTypeId', recordTypeId);
        return this;
    }
 
}
