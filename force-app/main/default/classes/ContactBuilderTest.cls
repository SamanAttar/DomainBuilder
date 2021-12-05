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

        System.assertNotEquals('', c.Id, 'The contact should have an ID once inserted');

    }

    @isTest
    private static void validateContactCreation() {

        Test.startTest();

            Account acc = (Account) new AccountBuilder()
                                        .buildAndCommit(); 

            Contact c = (Contact) new ContactBuilder()
                                        .withAccount(acc.Id)
                                        .buildAndCommit();
        Test.stopTest();

        System.assertNotEquals('', c.LastName, 'The contact should have a last name created implicity');

    }

}
