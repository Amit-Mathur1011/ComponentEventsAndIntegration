public class WrapperBlogs {

	public class Blogs {
		public String id;
		public String title;
		public String url;
	}

	public String author;
	public List<Blogs> blogs;

	
	public static WrapperBlogs parse(String json) {
		return (WrapperBlogs) System.JSON.deserialize(json, WrapperBlogs.class);
	}
}