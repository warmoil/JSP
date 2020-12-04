<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload 04 process</title>
</head>
<body>
	
	<%
		String path = "C:\\upload";
		DiskFileUpload upload = new DiskFileUpload();
		
		upload.setSizeMax(100000000);
		upload.setSizeThreshold(4096);  //메모리버퍼의 최대값을 bytes로 지정하고 용량이 큰데이터를 업로드할떄 최대치를넘기면 버펀내의 데이터는 일시영역으로 보존		
		upload.setRepositoryPath(path);
		
		
		List items = upload.parseRequest(request);
		Iterator params = items.iterator();
		
		
		while(params.hasNext()){
			FileItem item = (FileItem)params.next();
			
			if(item.isFormField()){
				String name = item.getFieldName();
				String value = item.getString("utf-8");
				out.println(name+"="+value+"<br>");				
			}
			else{
				String fileFieldName = item.getFieldName();
				String fileName = item.getName();
				String contentType = item.getContentType();
				
				fileName = fileName.substring(fileName.lastIndexOf("\\")+1);//+1을 해야 파일명만받을수있음				
				long fileSize = item.getSize();  //파일의 크기를 가져옴
				File file = new File(path + "/"+fileName);  //파일위치와 파일이름을 넣어줌 
				item.write(file);
				out.println("---- --------- - - - --------<br>");
				out.println("요청 파라미터 이름:"+fileFieldName+"<br>");
				out.println("파일 컨텐츠 유형:"+contentType + "<br>");
				out.println("파일 크기 : " + fileSize+"<br>");
				
				
			}
		}
	%>

	
</body>
</html>