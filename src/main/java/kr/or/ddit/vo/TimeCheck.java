package kr.or.ddit.vo;

public class TimeCheck {
	public static void main(String[] args) {
		
		int n1 =Integer.parseInt("0930");
		int n2 =Integer.parseInt("1030");
		int n3 =Integer.parseInt("1230");
		int max = Math.max(n1,n2);
		System.out.println(max);
		
		
		String mylecDay = "2";
		String mylecTime = "09001200";
		
		String newlecDay = "2";
		String newlecTime = "09011300";
		
		int myStartTime = Integer.parseInt(mylecTime.substring(0,4));
		int myEndTime = Integer.parseInt(mylecTime.substring(4));
		int newStartTime = Integer.parseInt(newlecTime.substring(0,4));
		int newEndTime = Integer.parseInt(newlecTime.substring(4));
		
		boolean timeCheck = true;
	
		timeCheck = (myStartTime < newEndTime && newStartTime < myEndTime) 
				|| (newStartTime < myEndTime && myStartTime < newEndTime)
				? true :false;
	
		if(mylecDay.equals(newlecDay) && timeCheck) {
			System.out.println("시간표 중복");
			
			
		}
				
	}

}
