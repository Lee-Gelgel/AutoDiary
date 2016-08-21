package map.model;

public class MapDTO {
	private String latitude;
	private String longitude;
	private String forAddress;
	private String today;
	private String totime;
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getForAddress() {
		return forAddress;
	}
	public void setForAddress(String forAddress) {
		this.forAddress = forAddress;
	}
	public String getToday() {
		return today;
	}
	public void setToday(String today) {
		this.today = today;
	}
	public String getTotime() {
		return totime;
	}
	public void setTotime(String totime) {
		this.totime = totime;
	}
	@Override
	public String toString() {
		return "MapDTO [latitude=" + latitude + ", longitude=" + longitude + ", forAddress=" + forAddress + ", today="
				+ today + ", totime=" + totime + "]";
	}
}