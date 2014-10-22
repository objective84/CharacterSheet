package com.rational.model.entities;

import com.rational.utils.Formatter;
import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Feat {

    @Id @GeneratedValue private Long id;
    private String name;
    private String description;
    @JsonIgnore @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY) private FeatPrerequisite prerequisite;

    @ManyToMany
    @JoinTable(name="feats_traits", joinColumns = @JoinColumn(name="feat_id"), inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<TraitModel> traits = new ArrayList<TraitModel>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public FeatPrerequisite getPrerequisite() {
        return prerequisite;
    }

    public void setPrerequisite(FeatPrerequisite prerequisite) {
        this.prerequisite = prerequisite;
    }

    public List<TraitModel> getTraits() {
        return traits;
    }

    public void setTraits(List<TraitModel> traits) {
        this.traits = traits;
    }

    public String getFormattedDescription(){
        return "<table><tr><td>" + Formatter.parseSubtitle(this.name) + "</td></tr><tr><td>" + Formatter.formatParagraph(this.description) + "</td></tr></table";
    }
}
