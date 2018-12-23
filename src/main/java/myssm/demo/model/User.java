package myssm.demo.model;

public class User {

    private int id;
    private String name;
    private String pwd;
    private int age;
    private String nickname;
    private String head;
    private String work;
    private String addtime;

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public void setWork(String work) {
        this.work = work;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPwd() {
        return pwd;
    }

    public int getAge() {
        return age;
    }

    public String getNickname() {
        return nickname;
    }

    public String getHead() {
        return head;
    }

    public String getWork() {
        return work;
    }

    public String getAddtime() {
        return addtime;
    }
}
