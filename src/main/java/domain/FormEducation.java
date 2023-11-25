package domain;

public class FormEducation {
    private Long id;
    private String nameForm;

    public FormEducation() {
    }

    public FormEducation(Long id, String nameForm) {
        this.id = id;
        new FormEducation(nameForm);
    }

    public FormEducation(String nameForm) {
        this.nameForm = nameForm;
    }

    public Long GetId() { return this.id; }
    public String GetNameForm() { return this.nameForm; }

    public void SetId(Long value) { this.id = value; }
    public void SetNameForm(String value) { this.nameForm = value; }

    @Override
    public String toString() {
        return "Speciality {" + "Id = " + id +
                ", nameForm = " + nameForm +
                "}";
    }
}
