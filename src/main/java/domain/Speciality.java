package domain;

public class Speciality {
    private Long id;
    private String nameSpeciality;
    private String profile;

    public Speciality() { }

    public Speciality(Long id, String nameSpeciality, String profile) {
        this.id = id;
        new Speciality(nameSpeciality, profile);
    }

    public Speciality(String nameSpeciality, String profile) {
        this.nameSpeciality = nameSpeciality;
        this.profile = profile;
    }

    public Long GetId() { return this.id; }
    public String GetNameSpeciality() { return this.nameSpeciality; }
    public String GetProfile() { return this.profile; }

    public void SetId(Long value) { this.id = value; }
    public void SetNameSpeciality(String value) { this.nameSpeciality = value; }
    public void SetProfile(String value) { this.profile = value; }

    @Override
    public String toString() {
        return "Speciality {" + "Id = " + id +
                ", nameSpeciality = " + nameSpeciality +
                ", profile = " + profile +
                "}";
    }
}

