package model;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Data

public class Service {

    private int id;
    private String name;
    private double price;

    public Service(String name, double price) {
        this.name = name;
        this.price = price;
    }

    public Service() {
    }

    public Service(int id) {
        this.id = id;
    }

    public Service(int id, String name, double price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }
}
