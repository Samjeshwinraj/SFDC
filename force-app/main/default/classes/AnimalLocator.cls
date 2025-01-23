public class AnimalLocator {
 public static string getAnimalNameById(Integer Id) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        String strResp='';
        System.debug('Response Code:'+response.getStatusCode());
        System.debug('Response Code:'+response.getBody());
        if (response.getStatusCode() == 200) {
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String, Object> animals= (Map<String, Object>) results.get('animal');
            System.debug('Received the following animals:'+animals);
            strResp=string.valueOf(animals.get('name'));
          System.debug('StrResp:'+strResp);
        }
        return strResp;    

}
}