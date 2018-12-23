package myssm.demo.model;

public class Visit{
    int id;
    String ip;
    String info;
    String addtime;

    public void setId(int id) {
        this.id = id;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }


    public int getId() {
        return id;
    }

    public String getIp() {
        return ip;
    }

    public String getInfo() {
        return info;
    }

    public String getAddtime() {
        return addtime;
    }
}