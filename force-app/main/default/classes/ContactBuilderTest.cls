@isTest
public class ContactBuilderTest {
    
    @isTest
    private static void basicContactCreation() {

        Test.startTest();

            Account acc = (Account) new AccountBuilder()
                                        .buildAndCommit(); 

            Contact c = (Contact) new ContactBuilder()
                                        .withFirstAndLastName('Sarah', 'Saleswoman')
                                        .withAccount(acc.Id)
                                        .buildAndCommit();
        Test.stopTest();

        System.assert(String.isNotEmpty(c.Id), 'The contact was not inserted');

    }

    @isTest
    private static void validate() {

        Test.startTest();

            Account acc = (Account) new AccountBuilder()
                                        .buildAndCommit(); 

            Contact c = (Contact) new ContactBuilder()
                                        .withAccount(acc.Id)
                                        .buildAndCommit();
        Test.stopTest();

        System.assert(String.isNotEmpty(c.LastName), 'The contact should have a last name created implicity');

    }

    @isTest
    private static void quickCreation() {

        Test.startTest();
            Contact c = (Contact) new ContactBuilder()
                                        .withAccount()
                                        .buildAndCommit();
        Test.stopTest();

        System.assert(String.isNotEmpty(c.Id), 'The contact should have been created');
        System.assert(String.isNotEmpty(c.accountId), 'The account should have been created');
    }

}
