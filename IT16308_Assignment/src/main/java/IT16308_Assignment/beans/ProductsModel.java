package IT16308_Assignment.beans;

import java.sql.Date;

import org.hibernate.validator.constraints.NotBlank;

import IT16308_Assignment.entities.Categories;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductsModel {
	private int id ;
	
//	@NotBlank(message = "Không được để trống")
	private String name ;
	
//	@NotBlank(message = "Không được để trống")
	private String image ;
	
//	@NotBlank(message = "Không được để trống")
	private double price ;
	
//	@NotBlank(message = "Không được để trống")
	private Date created_date ;
	
	private int available ;
	
	private Categories category_id ;
}
