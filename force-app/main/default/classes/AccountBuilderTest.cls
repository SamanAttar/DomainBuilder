@isTest
public class AccountBuilderTest {
    
    @isTest
    private static void basicAccountCreation() {

        Test.startTest();
            Account accWithExplicitName = (Account) new AccountBuilder().withName('MegaCorp').buildAndCommit();
            Account accWithImplicitName = (Account) new AccountBuilder().buildAndCommit();
        Test.stopTest();

        System.assertNotEquals('', accWithExplicitName.Id, 'The account should have an ID once inserted');
        System.assertNotEquals('', accWithImplicitName.Id, 'The account should have an ID once inserted');

    }
}
