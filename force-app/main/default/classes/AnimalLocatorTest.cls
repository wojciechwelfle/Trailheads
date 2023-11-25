@isTest
private class AnimalLocatorTest {
  @isTest
  static void testAnimalLocator() {
    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
    String actual = AnimalLocator.getAnimalNameById(1);
    String expected = 'chicken';
    System.assertEquals(expected, actual, 'Function return wrong value!');
  }
}
