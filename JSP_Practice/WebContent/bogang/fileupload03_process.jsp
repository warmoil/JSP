<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="org.apache.commons.fileupload.*" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.io.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileUpload 03 프로세스</title>
</head>
<body>
	<%
		String fileUploadPath = "C:\\upload";
		DiskFileUpload upload = new DiskFileUpload(); 
		List items = upload.parseRequest(request); 
		Iterator params = items.iterator();
		
		while(params.hasNext()){
			
			FileItem fileItem = (FileItem)params.next();
			
			if(!fileItem.isFormField()){
				//isFormField() 메소드는 일반파라미터인지 여부를 확인하고 일반일경우 true 를 반환함
				String fileName = fileItem.getName();
				fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
				File file = new File(fileUploadPath + "/"+fileName);
				fileItem.write(file);
				
			}
			
		}
	%>
</body>
</html>