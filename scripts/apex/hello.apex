// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
P0B.NFibonacci(10);
P0B.SortList(new List<Integer> {2,4,5,1,3,1});
P0B.NFactorial(3);
P0B.rotateLeftNTimes(new List<Integer> {1,2,3,4,5},1));
P0B.bracketsAreBalanced('( { [ ] } )');
P0B.bracketsAreBalanced('( { [ ] } )');
P0B.bracketsAreBalanced('( [ ) ])');

P0B.updateAccountSize( );
P0B.updateCALeads( );
P0B.closePastDueOpportunities( );

