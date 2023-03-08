({
    init: function (cmp, event, helper) {
        cmp.set('v.mapMarkers', [
            
            {
                location: {
                    Latitude:'35.78908627101772',
                    Longitude:'-78.85097882020281',

                },

                value: 'Commercecx1',
               icon: 'utility:salesforce1',
                title: 'Commercecx,USA'
            },
            
            {
                location: {
                   Latitude:'52.37306597716825',
                    Longitude:'4.888168028835755',
                },

                value: 'Commercecx2',
                icon: 'utility:salesforce1',
                title: 'Commercecx,NetherLand'
            },
            
           
            {
                location: {
                    Latitude:'17.413297',
                    Longitude:'78.430927',

                },

                value: 'Commercecx3',
                
               icon: 'utility:salesforce1',
                title: 'Commercecx,Hyderabad'
            }
        ]);
        cmp.set('v.markersTitle', 'Locations');
    },

    handleMarkerSelect: function (cmp, event, helper) {
        var marker = event.getParam("selectedMarkerValue");
    }
});