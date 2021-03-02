package vo;

public class ActionForward {
	private String path;
	private boolean redireact;
	
	public ActionForward() {}

	public ActionForward(String path, boolean redireact) {
		super();
		this.path = path;
		this.redireact = redireact;
	}

	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedireact() {
		return redireact;
	}
	public void setRedireact(boolean redireact) {
		this.redireact = redireact;
	}	
}
