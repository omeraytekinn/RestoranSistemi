package onlineOrder;

/**
 *
 * @author oniketya
 */
public class RegisterBean {
    private String email,
                   pass,
                   name,
                   phone,
                   pass2,
                   adres;

    public RegisterBean() {
        email = null;
        pass = null;
        name = null;
        phone = null;
        adres = null;
        pass2 = null;
    }

    public String getPass2() {
        return pass2;
    }

    public void setPass2(String pass2) {
        this.pass2 = pass2;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAdres() {
        return adres;
    }

    public void setAdres(String adres) {
        this.adres = adres;
    }
    
                   
}
