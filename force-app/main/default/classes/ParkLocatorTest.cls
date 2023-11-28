@isTest
private with sharing class ParkLocatorTest {
    @isTest
    static void testCallout() {
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
     
        String countryName = 'United States';
        
        List <String> expected = new List<String>{'Yosemite', 'Sequoia', 'Crater Lake'};
        List <String> result = ParkLocator.country(countryName);
        
        System.assertEquals(expected, result, 'Expected Park List is incorrect!');
    }
}
