sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'task/test/integration/FirstJourney',
		'task/test/integration/pages/bankList',
		'task/test/integration/pages/bankObjectPage'
    ],
    function(JourneyRunner, opaJourney, bankList, bankObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('task') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThebankList: bankList,
					onThebankObjectPage: bankObjectPage
                }
            },
            opaJourney.run
        );
    }
);