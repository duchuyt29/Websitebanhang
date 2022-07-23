package IT16308_Assignment.beans;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AccountsModel {
	private int id ;
	
//	@NotBlank(message = "Không được để trống")
//	@NotNull(message = "Không được để trống")
	private String username ;
	
//	@NotBlank(message = "Không được để trống")
	private String password ;
	
//	@NotBlank(message = "Không được để trống")
	private String fullname ;
	
//	@NotBlank(message = "Không được để trống")
//	@Pattern(regexp = "^\\w+\\@gmail.com")
	private String email ;
	
//	@NotNull(message = "Bạn chưa chọn file")
	private String photo ;
	
	@NotNull
	private int activated ;
	
	private int admin ;
}
