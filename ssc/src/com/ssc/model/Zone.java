package com.ssc.model;

public class Zone {
    private int num;
    private String zoneRegion1Short;
    private String zoneName;
    private String zoneAddr;
    private String zoneLat;
    private String zoneLng;
    public int getNum() {
        return num;
    }
    public void setNum(int num) {
        this.num = num;
    }
    public String getZoneRegion1Short() {
        return zoneRegion1Short;
    }
    public void setZoneRegion1Short(String zoneRegion1Short) {
        this.zoneRegion1Short = zoneRegion1Short;
    }
    public String getZoneName() {
        return zoneName;
    }
    public void setZoneName(String zoneName) {
        this.zoneName = zoneName;
    }
    public String getZoneAddr() {
        return zoneAddr;
    }
    public void setZoneAddr(String zoneAddr) {
        this.zoneAddr = zoneAddr;
    }
    public String getZoneLat() {
        return zoneLat;
    }
    public void setZoneLat(String zoneLat) {
        this.zoneLat = zoneLat;
    }
    public String getZoneLng() {
        return zoneLng;
    }
    public void setZoneLng(String zoneLng) {
        this.zoneLng = zoneLng;
    }
    @Override
    public String toString() {
	return "zone [num=" + num + ", zoneRegion1Short=" + zoneRegion1Short + ", zoneName=" + zoneName + ", zoneAddr="
		+ zoneAddr + ", zoneLat=" + zoneLat + ", zoneLng=" + zoneLng + "]";
    }
    
    
}
