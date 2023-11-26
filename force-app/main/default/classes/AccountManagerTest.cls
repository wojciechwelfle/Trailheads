@isTest
private with sharing class AccountManagerTest {
    @isTest
    static void testGetAccountById() {
        Id recordId = createTestRecord();

        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://na1.salesforce.com/services/apexrest/Accounts/' +
            recordId +
            '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;

        // Call the method to test
        Account thisAccount = AccountManager.getAccount();

        // Verify results
        System.assert(thisAccount != null, 'Account is null!');
        System.assertEquals(
            'Wojciech',
            thisAccount.Name,
            'Account name is incorrect!'
        );
    }

    static Id createTestRecord() {
        Account account = new Account(Name = 'Wojciech');
        insert account;

        Contact contact = new Contact(
            LastName = 'Test',
            AccountId = account.Id
        );
        insert contact;

        return account.Id;
    }
}
