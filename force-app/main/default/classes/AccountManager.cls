@RestResource(urlMapping='/Accounts/<Account_ID>/contacts')
public with sharing class AccountManager {
    @HttpGet
    global static Account getAccount() {
        Account account = new Account();
            
        return account;
    }
}

// 5002o00003Koa7SAAR

