// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Oladipo Ojo';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

Account acc = new Account();
acc.Name = 'Dipo Account ' + Datetime.now().getTime();
System.debug(acc.Name);
insert acc;
System.debug('New Account Id: ' + acc.Id);
Account acc2 = [SELECT Id, Name FROM Account WHERE Id = :acc.Id];   
System.debug('Queried Account Name: ' + acc2.Name);
acc2.Name = 'Updated Dipo Account ' + Datetime.now().getTime();
update acc2;
System.debug('Updated Account Name: ' + acc2.Name);

 // Retrieve the Opportunity from the database
        Opportunity oppToBeUpdated = [Select ID, StageName FROM Opportunity WHERE Id = '006gL000008XZQlQAO' Limit 1];  // [SELECT Id FROM Opportunity WHERE Id = :oppId]
    System.debug(oppToBeUpdated);
        // Update the Opportunity's stage
        oppToBeUpdated.StageName = 'Closed Won';
       
        // Update the Opportunity in the database
        update oppToBeUpdated;
        System.debug('Updated Opportunity Stage: ' + oppToBeUpdated.StageName);