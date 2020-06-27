package pet.project.resume.model;

/**
 *
 * @author devstudy
 * @see //devstudy.net
 */
public enum LanguageLevel {

    BEGINNER,

    ELEMENTARY,

    PRE_INTERMEDIATE,

    INTERMEDIATE,

    UPPER_INTERMEDIATE,

    ADVANCED,

    PROFICIENCY;

    public String getDbValue() {
        return name().toLowerCase();
    }
}
