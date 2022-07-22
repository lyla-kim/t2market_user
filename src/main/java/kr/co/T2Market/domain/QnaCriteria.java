package kr.co.T2Market.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class QnaCriteria {

	private int pageNum;
	private int amount;
	
	public QnaCriteria() {
		this(1,10);
	}
	
	public QnaCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
}
