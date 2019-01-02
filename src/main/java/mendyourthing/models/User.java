package mendyourthing.models;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

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
@Table(name = "users")
public class User implements Serializable {

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

	@NotEmpty(message = "Gender  is required")
	private String gender;

	private Date dob;

	@NotEmpty(message = "Country  is required")
	private String citizenship;
	//
	// /** @OneToMany(mappedBy = "user")
	// // @LazyCollection(LazyCollectionOption.FALSE)
	// // private List<Pprofile> profile;
	//
	// /**
	// * There are two special roles in the system: ROLE_ADMIN and ROLE_STAFF.
	// * Anyone who doesn't have either role is a regular user, i.e. student.
	// */
	// @ElementCollection
	// @CollectionTable(name = "authorities", joinColumns = @JoinColumn(name =
	// "user_id"))
//	@Column(name = "role")
//	private Set<String> roles;
//
//	public boolean isAdmin() {
//		return roles.contains("ROLE_ADMIN") ? true : false;
//	}
//
//	public boolean isStaff() {
//		return roles.contains("ROLE_STAFF") ? true : false;
//	}

	public User() {
	//	roles = new HashSet<String>();
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

//	public Set<String> getRoles() {
//		return roles;
//	}
//
//	public void setRoles(Set<String> roles) {
//		this.roles = roles;
//	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getCitizenship() {
		return citizenship;
	}

	public void setCitizenship(String citizenship) {
		this.citizenship = citizenship;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}