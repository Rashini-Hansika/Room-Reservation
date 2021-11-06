package Reservation;

public class Reservation {
	private int id;
	private String userName;
	private String email;
	private String inDate;
	private String outDate;
	private String room;
	private String space;
	private String guest;
	private String adult;
	private String children;
	private String beds;
	public Reservation(int id, String userName, String email, String inDate, String outDate, String room, String space, String guest, String adult,
			String children, String beds) {
		this.id = id;
		this.userName = userName;
		this.email = email;
		this.inDate = inDate;
		this.outDate = outDate;
		this.room = room;
		this.space = space;
		this.guest = guest;
		this.adult = adult;
		this.children = children;
		this.beds = beds;
	}
	public int getId() {
		return id;
	}
	public String getuserName() {
		return userName;
	}
	public String getemail() {
		return email;
	}
	public String getInDate() {
		return inDate;
	}
	public String getOutDate() {
		return outDate;
	}
	public String getRoom() {
		return room;
	}
	public String getSpace() {
		return space;
	}
	public String getGuest() {
		return guest;
	}
	public String getAdult() {
		return adult;
	}
	public String getChildren() {
		return children;
	}
	public String getBeds() {
		return beds;
	}
	
	
	
}
