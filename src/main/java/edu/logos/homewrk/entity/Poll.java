package edu.logos.homewrk.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "poll")
@Getter @Setter @NoArgsConstructor
public class Poll extends BaseEntity {

    @Column(name = "full_name")
    private String fullName;

    private int age;

    private String country;

    @Enumerated(EnumType.STRING)
    private Gender gender;

    private String email;

    private String education;

    @Column(name = "socail_network")
    private String[] socialNetwork;

    @Column(name = "lang_development")
    private String progLang;

    @Column(name = "oper_system")
    private String[] operSystem;

    @Column(name = "level_develop")
    private String levelDev;

    @Column(name = "range_develop")
    private String rangeDev;

    private String[] technology;

    private String commnet;
}
