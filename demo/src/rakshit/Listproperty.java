package rakshit;

public class Listproperty {
	String strphoneno,strname,strdesc, strpropertytype, strbedrooms, strpropsize, strprice, straddress, strstate, strcity,strzipcode,ammenities,filename,filename1;
     int propertyid;
	public int getPropertyid() {
		return propertyid;
	}

	public void setPropertyid(int propertyid) {
		this.propertyid = propertyid;
	}

	public Listproperty(int propertyid,String strname, String strdesc, String strpropertytype, String strbedrooms, String strpropsize,
			String strprice, String straddress, String strstate, String strcity, String strzipcode, String ammenities,
			String filename,String strphoneno,String filename1) {
		super();
		this.propertyid=propertyid;
		
		this.strname = strname;
		this.strdesc = strdesc;
		this.strpropertytype = strpropertytype;
		this.strbedrooms = strbedrooms;
		this.strpropsize = strpropsize;
		this.strprice = strprice;
		this.straddress = straddress;
		this.strstate = strstate;
		this.strcity = strcity;
		this.strzipcode = strzipcode;
		this.ammenities = ammenities;
		this.filename = filename;
		this.strphoneno=strphoneno;
		this.filename1=filename1;
	}
    
	

	public String getStrname() {
		return strname;
	}

	public void setStrname(String strname) {
		this.strname = strname;
	}

	
	public String getStrdesc() {
		return strdesc;
	}

	public void setStrdesc(String strdesc) {
		this.strdesc = strdesc;
	}

	public String getStrpropertytype() {
		return strpropertytype;
	}

	public void setStrpropertytype(String strpropertytype) {
		this.strpropertytype = strpropertytype;
	}

	public String getStrbedrooms() {
		return strbedrooms;
	}

	public void setStrbedrooms(String strbedrooms) {
		this.strbedrooms = strbedrooms;
	}

	public String getStrpropsize() {
		return strpropsize;
	}

	public void setStrpropsize(String strpropsize) {
		this.strpropsize = strpropsize;
	}

	public String getStrprice() {
		return strprice;
	}

	public void setStrprice(String strprice) {
		this.strprice = strprice;
	}

	public String getStraddress() {
		return straddress;
	}

	public void setStraddress(String straddress) {
		this.straddress = straddress;
	}

	public String getStrstate() {
		return strstate;
	}

	public void setStrstate(String strstate) {
		this.strstate = strstate;
	}

	public String getStrcity() {
		return strcity;
	}

	public void setStrcity(String strcity) {
		this.strcity = strcity;
	}

	public String getStrzipcode() {
		return strzipcode;
	}

	public void setStrzipcode(String strzipcode) {
		this.strzipcode = strzipcode;
	}

	public String getAmmenities() {
		return ammenities;
	}

	public void setAmmenities(String ammenities) {
		this.ammenities = ammenities;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public String getStrphoneno() {
		return strphoneno;
	}

	public void setStrphoneno(String strphoneno) {
		this.strphoneno = strphoneno;
	}
	
	public String getFilename1() {
		return filename1;
	}

	public void setFilename1(String filename1) {
		this.filename1 = filename1;
	}
	

}
