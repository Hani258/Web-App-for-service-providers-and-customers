package mendyourthing.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;

@Entity
@Table(name = "Provider")
public class Provider implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Long id;

	@Column(unique = true, nullable = false)
	@NotEmpty(message = "Email is required")
	@Email(message = "Please enter a valid email")
	private String email;

	@Column(nullable = false)
	@NotEmpty(message = "Password is required")
	@Length(min = 4, message = "Password should be between minimum 4 charactes")
	private String password;

	@Column(name = "first_name")
	@NotEmpty(message = "First Name is required")
	private String firstName;

	@Column(name = "last_name")
	@NotEmpty(message = "Last Name is required")
	private String lastName;

	@NotEmpty(message = "Contact  is required")
	@NumberFormat
	private String phone;

	@NotEmpty(message = "Country  is required")
	private String citizenship;
	
	@NotEmpty(message = "State  is required")
	private String state;

	@NotEmpty(message = "City  is required")
	private String city;

	@NotEmpty(message = "Village / Area  is required")
	private String area;
	
	@NotEmpty(message = "Pincode  is required")
	@NumberFormat
	private String pincode;

	
	public Provider() {
	//   Provider = new HashSet<String>();
	}

	public String getName() {
		return firstName + " " + lastName;
	}

	public String getUsername() {
		return email;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

/*	public Set<String> getRoles() {
		return roles;
	}

	public void setRoles(Set<String> roles) {
		this.roles = roles;
	}
*/
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	
	public String getCitizenship() {
		return citizenship;
	}

	public void setCitizenship(String citizenship) {
		this.citizenship = citizenship;
	}

    public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	/*	public List<Profile> getProfile() {
		return profile;
	}

	public void setProfile(List<Profile> profile) {
		this.profile = profile;
	}
*/
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
