package co.mg.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class ProductDTO {
	private int product_id;
	private int category_id;
	private String company_name;
	private String pd_name;
	private String pd_price;
	private int pd_status;
	// private String pd_img;
	private String pd_desc;
	//private int location_id;
	private int pd_discount;
	private Date pd_date;

}