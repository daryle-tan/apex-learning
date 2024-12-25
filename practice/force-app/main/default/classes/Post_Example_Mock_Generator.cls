public with sharing class Post_Example_Mock_Generator implements HttpCalloutMock {
    global HttpResponse respond(HttpRequest req) {
        HttpResponse res = new HttpResponse();
        res.setBody('{"PostRes":"Hi There"}');
        res.setStatusCode(200);
        return res;
    }
}