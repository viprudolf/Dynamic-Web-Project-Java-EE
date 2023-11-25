package domain;

public class Qualification {
    private Long id;
    private String nameQualification;

    public Qualification() {
    }

    public Qualification(Long id, String nameForm) {
        this.id = id;
        new Qualification(nameForm);
    }

    public Qualification(String nameQualification) {
        this.nameQualification = nameQualification;
    }

    public Long GetId() { return this.id; }
    public String GetNameQualification() { return this.nameQualification; }

    public void SetId(Long value) { this.id = value; }
    public void SetNameQualification(String value) { this.nameQualification = value; }

    @Override
    public String toString() {
        return "Speciality {" + "Id = " + id +
                ", nameQualification = " + nameQualification +
                "}";
    }
}

