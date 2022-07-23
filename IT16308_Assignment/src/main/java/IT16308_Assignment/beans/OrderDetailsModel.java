package IT16308_Assignment.beans;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.validator.constraints.NotBlank;

import IT16308_Assignment.entities.Orders;
import IT16308_Assignment.entities.Products;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDetailsModel {
	private int id ;
	
	private Orders order_id ;
	
	private Products  product_id ;
	
	private double price ;
	
//	@NotBlank(message = "Không được để trống")
	private int quantity ;
}
