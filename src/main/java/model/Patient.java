package model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import java.util.List;
import java.util.stream.Collectors;
@Data
public class Patient {

        private int id;
        private String name;
        private String email;

//        @ManyToMany(cascade = { CascadeType.ALL }, fetch = FetchType.LAZY)
//        @JoinTable(
//                name = "patients_services",
//                joinColumns = { @JoinColumn(name = "patient_id") },
//                inverseJoinColumns = { @JoinColumn(name = "service_id") }
//        )
//        @Fetch(FetchMode.JOIN)
//        private List<Service> services;


        public Patient(int id, String name, String email) {
            this.id = id;
            this.name = name;
            this.email = email;
        }


        public Patient(String name, String email) {
            this.name = name;
            this.email = email;
        }
        public Patient(){

        }
//        public String getServicesAsCsv(){
//            return getServices().stream().map(Service::getName).collect(Collectors.joining(", "));
//        }

    }
