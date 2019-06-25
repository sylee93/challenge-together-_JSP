package util;

public class Util {

	/**
	 * createDate, startDate 등 2190402 형태로 데이타를 가지고 있는 컬럼들을 위한 메소드. 
	 * 이 메소드는 구분자로 무조건 "/"를 붙인다.
	 * 
	 * @param date 20190402 형태로 된 String을 넘긴다.
	 * @return 2019/04/02 를 리턴.
	 */
	public static String addDelimiterToStringDate(String date) {
		return addDelimiterToStringDate(date, "/");
	}

	/**
	 * createDate, startDate 등 2190402 형태로 데이타를 가지고 있는 컬럼들을 위한 메소드. 
	 * 구분자를 보내주면 그 구분자를 붙여서 리턴한다.
	 * 
	 * @param date      20190402 형태로 된 String을 넘긴다.
	 * @param delimiter "/" 혹은 "-" 등의 값을 넘긴다.
	 * @return 구분자가 "/"이면 2019/04/02, 구분자가 "-"이면 2019-04-02를 리턴
	 */
	public static String addDelimiterToStringDate(String date, String delimiter) {

		if (date != null && date.length() == 8) {
			return String.join(delimiter, date.subSequence(0, 4), date.subSequence(4, 6), date.subSequence(6, 8));
		} else
			return date;
	}
}
