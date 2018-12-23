package myssm.demo.model;

public class Comment
{
    int id;
    String username;
    int nid;
    int uid;
    String content;
    String addtime;
    String ip;
    String nickname;
    String contact;

    public void setId(int id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setNid(int nid) {
        this.nid = nid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public int getNid() {
        return nid;
    }

    public int getUid() {
        return uid;
    }

    public String getContent() {
        return content;
    }

    public String getAddtime() {
        return addtime;
    }

    public String getIp() {
        return ip;
    }

    public String getNickname() {
        return nickname;
    }

    public String getContact() {
        return contact;
    }
}