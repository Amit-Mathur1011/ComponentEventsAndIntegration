public class HttpCallouts {
    
    public static HttpResponse getBlogs(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://sfdcstop.herokuapp.com/blogs');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode() == 200){
            WrapperBlogs responseWrapper = WrapperBlogs.parse(response.getBody());
            if((responseWrapper.blogs!=null) && (!responseWrapper.blogs.isEmpty())) {
                // Displaying the information of each blog one by one
                for(Integer i=0; i<responseWrapper.blogs.size(); i++) {
                    WrapperBlogs.Blogs blog = responseWrapper.blogs.get(i);
                    System.debug('Blog Id:- ' + blog.id);
                    System.debug('Blog Title:- ' + blog.title);
                    System.debug('Blog URL:- ' + blog.url);
                }
            }
        }
        return response;
    }
    
}