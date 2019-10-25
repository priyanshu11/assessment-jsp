package jspassessment;

import org.bson.types.ObjectId;

public class Modal {
	private int id;
private String title;
private String city;
private int postal;
private String description;
private String email;




public Modal(int id,String title, String city, int postal, String description, String email) {
	super();
	this.id=id;
	this.title = title;
	this.city = city;
	this.postal = postal;
	this.description = description;
	this.email = email;
};

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

public int getPostal() {
	return postal;
}

public void setPostal(int postal) {
	this.postal = postal;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}




}
