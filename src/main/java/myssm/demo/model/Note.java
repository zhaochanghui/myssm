package myssm.demo.model;

public class Note{
    private int id;
    private String title;
    private String brief;
    private String content;
    private String create_time;
    private String stype;

    public void setId(int id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public void setStype(String stype) {
        this.stype = stype;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getBrief() {
        return brief;
    }

    public String getContent() {
        return content;
    }

    public String getCreate_time() {
        return create_time;
    }

    public String getStype() {
        return stype;
    }
}