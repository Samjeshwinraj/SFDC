@isTest
private class AnimalLocatorTest {
  @istest static void AnimalLocatorMock1(){
        //Test.SetMock(HttpCalloutMock.class,new AnimalLocatorMock());
        string result = AnimalLocator.getAnimalNameById(1);
        string expectedResult ='Cow';
        System.assertEquals(result,expectedResult);
    }
}