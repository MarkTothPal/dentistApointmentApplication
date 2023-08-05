package model;

import lombok.Data;

import java.time.LocalDate;
@Data

public class Appointment {
    private int id;
    private String patientName;
    private String serviceName;
    private LocalDate date;

    public Appointment(String patientName, String serviceName, LocalDate date) {
        this.patientName = patientName;
        this.serviceName = serviceName;
        this.date = date;
    }

    public Appointment() {
    }

    public Appointment(int id, String patientName, String serviceName, LocalDate date) {
        this.id = id;
        this.patientName = patientName;
        this.serviceName = serviceName;
        this.date = date;
    }
}
