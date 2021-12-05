@isTest
public class AccountBuilderTest {
    
    @isTest
    private static void basicAccountCreation() {

        Test.startTest();
            Account a = (Account) new AccountBuilder().withName('Nice ACC').buildAndCommit();
        Test.stopTest();

        System.assertNotEquals('', a.Id, 'The account should have an ID once inserted');

    }
}
