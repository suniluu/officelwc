({
    init: function (cmp, event, helper) {
        cmp.set('v.mapMarkers', [
            {
                location: {
                    City: 'Cap-d\'Ail',
                    Country: 'France'
                },

                value: 'France1',
                icon: 'custom:custom26',
                title: 'Cap-d\'Ail'
            },
            {
                location: {
                    City: 'Beaulieu-sur-Mer',
                    Country: 'France'
                },

                value: 'France2',
                icon: 'custom:custom96',
                title: 'Beaulieu-sur-Mer'
            },
            {
                location: {
                    City: 'Saint-Jean-Cap-Ferrat',
                    Country: 'France'
                },

                value: 'France3',
                title: 'Saint-Jean-Cap-Ferrat'
            },
            {
                location: {
                    City: 'Villefranche-sur-Mer',
                    Country: 'France'
                },

                value: 'France4',
                icon: 'custom:custom92',
                title: 'Villefranche-sur-Mer'
            },
            {
                location: {
                    City: 'Antibes',
                    Country: 'France'
                },

                value: 'France5',
                icon: 'custom:custom61',
                title: 'Antibes'
            },
            {
                location: {
                    City: 'Juan-les-Pins',
                    Country: 'France'
                },

                value: 'France6',
                icon: 'custom:custom74',
                title: 'Juan-les-Pins'
            },
            {
                location: {
                    City: 'Cannes',
                    Country: 'France'
                },

                value: 'France7',
                icon: 'custom:custom3',
                title: 'Cannes'
            },
            {
                location: {
                    City: 'Saint-Raphaël',
                    Country: 'France'
                },

                value: 'France8',
                icon: 'custom:custom54',
                title: 'Saint-Raphaël'
            },
            {
                location: {
                    City: 'Fréjus',
                    Country: 'France'
                },

                value: 'France9',
                icon: 'custom:custom88',
                title: 'Fréjus'
            },
            {
                location: {
                    City: 'Sainte-Maxime',
                    Country: 'France'
                },

                value: 'France10',
                icon: 'custom:custom92',
                title: 'Sainte-Maxime'
            },
            {
                location: {
                    Street: '8-2-684/3/7/A Kaushik Society,opp.RM House,Bhavani Nagar',
                    City: 'Hyderabad',
                    
                    Country: 'India'
                },

                value: 'Hyderabad',
                
                icon: 'custom:custom92',
                title: 'Telangana'
            }
        ]);
        cmp.set('v.markersTitle', 'Locations');
    },

    handleMarkerSelect: function (cmp, event, helper) {
        var marker = event.getParam("selectedMarkerValue");
    }
});