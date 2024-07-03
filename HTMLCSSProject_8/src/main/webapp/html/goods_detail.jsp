<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<%--
      goods_detail.jsp?no=1
                      ===== 맛집 1번에 상세보기 요청
                       |
                  String no=request.getParemeter("no");
                  no=1
                  => 모든 전송된 데이터는 문자열 
 --%>
<%
    GoodsDAO dao=GoodsDAO.newInstance();
    String no=request.getParameter("no");
    GoodsVO vo=dao.goodsDetailData(Integer.parseInt(no));
    //     == vo에 저장된 데이터를 출력 => 상세보기 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
	.container{
		margin-top:50px;
	}
	.row{
		width: 960px;
		margin:0px auto;
	}
</style>
</head>
<body>
  <div class="container">
    <div class="row">
      <table class="table table-striped">
       <tr>
         <td width="30%" class="text-center" rowspan="7">
           <img src="<%=vo.getGoods_poster() %>" style="width: 100%" class="img-rounded">
         </td>
         <td colspan="2"><h3><%=vo.getGoods_name() %></h3></td>
       </tr>
       <tr>
         <th>기존가</th>
         <td><%=vo.getGoods_first_price() %></td>
       </tr>
       <tr>
         <th>할인율</th>
         <td><%=vo.getGoods_discount() %></td>
       </tr>
       <tr>
         <th>할인가</th>
         <td><%=vo.getGoods_price() %></td>
       </tr>
       <tr>
         <th>배달</th>
         <td><%=vo.getGoods_delivery() %></td>
       </tr>
       <tr>
         <th>제목</th>
         <td><%=vo.getGoods_sub() %></td>
       </tr>
       <tr>
         <td colspan="2" class="text-right">
           <input type=button value="찜하기" class="btn-xs btn-primary">
           <input type=button value="좋아요" class="btn-xs btn-success">
           <input type=button value="예약" class="btn-xs btn-info">
           <input type=button value="목록" class="btn-xs btn-warning"
            onclick="javascript:history.back()">
         </td>
       </tr>
      </table>
      <table class="table">
        <tr>
         <td>
          <pre style="white-space: pre-wrap;border:none;background-color: white;"><%=vo.getGoods_name() %></pre>
         </td>
        </tr>
      </table>
    </div>
  </div>
</body>
</html>

