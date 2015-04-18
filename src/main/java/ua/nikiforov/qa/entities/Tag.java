package ua.nikiforov.qa.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import java.util.List;

@Entity
public class Tag {
    @Id
    @GeneratedValue
    private long id;

    private String name;

    private String description;

    public List<Question> getQuestions() {
        return questions;
    }

    @ManyToMany(mappedBy = "tags")
    private List<Question> questions;

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setQuestions(List<Question> questions) {
        this.questions = questions;
    }
}
