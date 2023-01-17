package com.result.helper;


public class Helper {
//	public static boolean checkExcelFormat(MultipartFile file) {
//		String contentType = file.getContentType();
//		if(contentType.equals("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")) {
//			return true;
//		}
//		else {
//		return false;
//		}
//	}
//	
//	//convert excel into list
//	public static List<Students> convertExcelToList(InputStream is,String sheetName){
//		List<Students> student=new ArrayList<>(1000);
//		try {
//			int rowNumber=0;
//		XSSFWorkbook workbook = new XSSFWorkbook(is);
//		XSSFSheet sheet = workbook.getSheet(sheetName);
//		Iterator<Row> iterator = sheet.iterator();
//		//System.out.println();
//		int count = 0;
//		while(iterator.hasNext()) {
//			count++;
//			Row row = iterator.next();
//			if(rowNumber==0) {
//				rowNumber++;
//				continue;
//			}
//			Students st=new Students();
//		//we are taking the sheels from rows
//			Iterator<Cell> cell = row.iterator();
//			int cid=0;
//			while(cell.hasNext()) {
//				Cell c = cell.next();
//				switch(cid) {
//				case 0:
//					st.setRegno(c.getStringCellValue());
//					break;
//				case 1:
//					double d=c.getNumericCellValue();
//					String valueOf = String.valueOf(d);
//					System.out.println("Name:"+c.getStringCellValue());
//					st.setName(c.getStringCellValue());
//					break;
//				case 2:
//					st.setSem(c.getStringCellValue());
//					break;
//				case 3:
//					st.setSubject_code(c.getStringCellValue());
//					break;
//				case 4:
//						st.setSubject_name(c.getStringCellValue());
//						break;
//				case 5:
//				   st.setSubject_type(c.getStringCellValue());
//					break;
//				case 6:
////					System.out.println("Subject Credit"+c.getNumericCellValue());
//					double numericCellValue = c.getNumericCellValue();
//					
//					st.setSubject_credit(String.valueOf(numericCellValue));
//					
//					break;
//				
//				case 7:
//					st.setSubject_grade(c.getStringCellValue());
//					break;
//				default:
//					break;
//					
//				}
//				cid++;
//				
//					
//				
//			}
//			student.add(st);
//		}
//		System.out.println("count:"+count);
//		
//		
//		
//			
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//		return student;
//	}
}
