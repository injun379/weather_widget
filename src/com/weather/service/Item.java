package com.weather.service;

public class Item {
	private String temp1hour;
	private String sky;
	private String rainStat;
	private String humidity;
	public String getTemp1hour() {
		return temp1hour;
	}
	public void setTemp1hour(String temp1hour) {
		this.temp1hour = temp1hour;
	}
	public String getSky() {
		return sky;
	}
	public void setSky(String sky) {
		this.sky = sky;
	}
	public String getRainStat() {
		return rainStat;
	}
	public void setRainStat(String rainStat) {
		this.rainStat = rainStat;
	}
	public String getHumidity() {
		return humidity;
	}
	public void setHumidity(String humidity) {
		this.humidity = humidity;
	}
	@Override
	public String toString() {
		return "Item [temp1hour=" + temp1hour + ", sky=" + sky + ", rainStat=" + rainStat + ", humidity=" + humidity
				+ "]";
	}
	
}
