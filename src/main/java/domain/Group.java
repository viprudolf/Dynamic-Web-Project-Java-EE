package domain;

public class Group {
    private Long id;

    private String faculty;
    private String name;
    private int course;
    private int countStudent;
    private int countSubgroups;
    private Long idSpeciality;
    private Speciality speciality;
    private Long idQualification;
    private Qualification qualification;
    private Long idFormEducation;
    private FormEducation formEducation;

    public Group() { }

    public Group(
            Long id,
            String faculty,
            String name,
            int course,
            int countStudent,
            int countSubgroups,
            Long idSpeciality,
            Speciality speciality,
            Long idQualification,
            Qualification qualification,
            Long idFormEducation,
            FormEducation formEducation
    ) {
        this.id = id;
        this.faculty = faculty;
        this.name = name;
        this.course = course;
        this.countStudent = countStudent;
        this.countSubgroups = countSubgroups;
        this.idSpeciality = idSpeciality;
        this.speciality = speciality;
        this.idQualification = idQualification;
        this.qualification = qualification;
        this.idFormEducation = idFormEducation;
        this.formEducation = formEducation;
    }

    public Group(
            String faculty,
            String name,
            int course,
            int countStudent,
            int countSubgroups,
            Long idSpeciality,
            Speciality speciality,
            Long idQualification,
            Qualification qualification,
            Long idFormEducation,
            FormEducation formEducation
    ) {
        this.faculty = faculty;
        this.name = name;
        this.course = course;
        this.countStudent = countStudent;
        this.countSubgroups = countSubgroups;
        this.idSpeciality = idSpeciality;
        this.speciality = speciality;
        this.idQualification = idQualification;
        this.qualification = qualification;
        this.idFormEducation = idFormEducation;
        this.formEducation = formEducation;
    }

    public Long GetId() { return this.id; }
    public String GetFaculty() { return this.faculty; }
    public String GetName() { return this.name; }
    public int GetCourse() { return this.course; }
    public int GetCountStudent() { return this.countStudent; }
    public int GetCountSubgroups() { return this.countSubgroups; }
    public Long GetIdSpeciality() { return this.idSpeciality; }
    public Speciality GetSpeciality() { return this.speciality; }
    public Long GetIdQualification() { return this.idQualification; }
    public Qualification GetQualification() { return this.qualification; }
    public Long GetIdFormEducation() { return this.idFormEducation; }
    public FormEducation GetFormEducation() { return this.formEducation; }

    public void SetId(Long value) { this.id = value; }
    public void SetFaculty(String value) { this.faculty = value; }
    public void SetName(String value) { this.name = value; }
    public void SetCourse(int value) { this.course = value; }
    public void SetCountStudent(int value) { this.countStudent = value; }
    public void SetCountSubgroups(int value) { this.countSubgroups = value; }
    public void SetIdSpeciality(Long value) { this.idSpeciality = value; }
    public void SetSpeciality(Speciality value) { this.speciality = value; }
    public void SetIdQualification(Long value) { this.idQualification = value; }
    public void SetQualification(Qualification value) { this.qualification = value; }
    public void SetIdFormEducation(Long value) { this.idFormEducation = value; }
    public void SetFormEducation(FormEducation value) { this.formEducation = value; }

    @Override
    public String toString() {
        return "Speciality {" + "Id = " + id +
                ", faculty = " + faculty +
                ", name = " + name +
                ", course = " + course +
                ", countStudent = " + countStudent +
                ", countSubgroups = " + countSubgroups +
                ", idSpeciality = " + idSpeciality +
                ", speciality = " + speciality +
                ", idQualification = " + idQualification +
                ", qualification = " + qualification +
                ", idFormEducation = " + idFormEducation +
                ", formEducation = " + formEducation +
                "}";
    }
}
