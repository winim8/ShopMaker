package shop;
public class PVO {

	private int pNum;
	private String pProduct;
	private int pQuan;
	private int pPrice;
	
	public PVO() {
		
	}

	public PVO(int pNum, String pProduct, int pQuan, int pPrice) {
		this.pNum = pNum;
		this.pProduct = pProduct;
		this.pQuan = pQuan;
		this.pPrice = pPrice;
	}

	public int getpNum() {
		return pNum;
	}

	public void setpNum(int pNum) {
		this.pNum = pNum;
	}

	public String getpProduct() {
		return pProduct;
	}

	public void setpProduct(String pProduct) {
		this.pProduct = pProduct;
	}

	public int getpQuan() {
		return pQuan;
	}

	public void setpQuan(int pQuan) {
		this.pQuan = pQuan;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
}