/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.42
 * Generated at: 2014-08-26 06:10:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class writeForm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/Board/color.jspf", Long.valueOf(1409031573652L));
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
request.setCharacterEncoding("utf-8");
      out.write('\r');
      out.write('\n');
 
   String bodyback_c="#FFF0B5";
   String value_c="#FFE271";

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<script type=\"text/javascript\" src=\"script.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"");
      out.print(bodyback_c);
      out.write("\">\r\n");


int num = 0,ref = 1,re_step = 0,re_level = 0;
String strV = "";
try{
	if(request.getParameter("num")!=null){
		num =Integer.parseInt(request.getParameter("num"));
		ref =Integer.parseInt(request.getParameter("ref"));
		re_step =Integer.parseInt(request.getParameter("re_step"));
		re_level =Integer.parseInt(request.getParameter("re_level"));
	}


      out.write("\r\n");
      out.write("<p>글쓰기</p>\r\n");
      out.write("<form action=\"writePro.jsp\" method=\"post\" name=\"writeform\" onsubmit=\"return writeSave()\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"num\" value=\"");
      out.print(num);
      out.write("\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"ref\" value=\"");
      out.print(ref);
      out.write("\">\t\r\n");
      out.write("\t<input type=\"hidden\" name=\"re_step\" value=\"");
      out.print(re_step);
      out.write("\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"re_level\" value=\"");
      out.print(re_level);
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("<table>\r\n");
      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td align=\"right\"colspan=\"2\" bgcolor=\"");
      out.print(value_c);
      out.write("\">\r\n");
      out.write("\t\t<a href=\"list.jsp\">글목록</a>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td width=\"70\" bgcolor=\"");
      out.print(value_c);
      out.write("\" align=\"center\">이름</td>\r\n");
      out.write("\t\t<td width=\"330\" align=\"left\">\r\n");
      out.write("\t\t<input type=\"text\" size=\"10\" maxlength=\"10\" name=\"writer\" style=\"ime-mode:active;\">\r\n");
      out.write("\t\t<!-- active:한글 -->\t\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td width=\"70\" bgcolor=\"");
      out.print(value_c);
      out.write("\" align=\"center\">제목</td>\r\n");
      out.write("\t\t<td width=\"330\" align=\"left\">\r\n");
      out.write("\t\t");

		if(request.getParameter("num")==null){
			strV = "";
		}else{
			strV = "답변";
		}
		
      out.write("\t\r\n");
      out.write("\t\t<input type=\"text\" size=\"40\" maxlength=\"50\" name=\"subject\" value=\"");
      out.print(strV);
      out.write("\" style=\"ime-mode:active;\">\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td width=\"70\" bgcolor=\"");
      out.print(value_c);
      out.write("\" align=\"center\">Email</td>\r\n");
      out.write("\t\t<td width=\"330\" align=\"left\">\r\n");
      out.write("\t\t<input type=\"text\" size=\"40\" maxlength=\"30\" name=\"email\" style=\"ime-mode:inactive;\">\r\n");
      out.write("\t\t<!-- active:영문-->\t\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td width=\"70\" bgcolor=\"");
      out.print(value_c);
      out.write("\" align=\"center\">내용</td>\r\n");
      out.write("\t\t<td width=\"330\" align=\"left\">\r\n");
      out.write("\t\t<textarea name=\"content\" rows=\"13\" cols=\"40\" style=\"ime-mode:active;\"></textarea>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td width=\"70\" bgcolor=\"");
      out.print(value_c);
      out.write("\" align=\"center\">비밀번호</td>\r\n");
      out.write("\t\t<td width=\"330\" align=\"left\">\r\n");
      out.write("\t\t<input type=\"password\" size=\"8\" maxlength=\"12\" name=\"passwd\" style=\"ime-mode:inactive;\">\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td colspan=\"2\" bgcolor=\"");
      out.print(value_c);
      out.write("\" align=\"center\">\r\n");
      out.write("\t\t<input type=\"submit\" value=\"글쓰기\">\r\n");
      out.write("\t\t<input type=\"reset\" value=\"다시작성\">\r\n");
      out.write("\t\t<input type=\"button\" value=\"목록보기\" onclick=\"window.location=\"list.jsp\">\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
}catch(Exception e){} 
      out.write("\r\n");
      out.write("\r\n");
      out.write("</form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
