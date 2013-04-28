package com.test;
import java.util.Date;  
import java.util.Properties;  
 
import javax.activation.DataHandler;  
import javax.activation.FileDataSource;  
import javax.mail.Authenticator;  
import javax.mail.Multipart;  
import javax.mail.PasswordAuthentication;  
import javax.mail.Session;  
import javax.mail.Transport;  
import javax.mail.internet.InternetAddress;  
import javax.mail.internet.MimeBodyPart;  
import javax.mail.internet.MimeMessage;  
import javax.mail.internet.MimeMultipart;  
import javax.mail.internet.MimeUtility;  
 
public class MailService extends Authenticator {  
    private String m_username = null;   
    private String m_userpass = null;   
      
    public void setUsername(String username) {   
        m_username = username;   
    }   
      
    public void setUserpass(String userpass) {   
        m_userpass = userpass;   
    }   
      
    public MailService(String username, String userpass) {   
        super();   
        setUsername(username);   
        setUserpass(userpass);   
    }   
      
    public PasswordAuthentication getPasswordAuthentication() {   
        return new PasswordAuthentication(m_username,m_userpass);   
    }   
      
    public static void sendmail(  
            String subject, String from,   
            String[] to, String text,   
            String[] filenames,String mimeType) throws Exception   
    {   
        Properties props = new Properties();   
        String smtp = "smtp.126.com";               //设置发送邮件所用到的SMTP服务器地址  
        String smtpname = "zhangxiaofei2012@126.com";               //设置登录SMTP服务器的用户名  
        String smtppassword = "woshi5#@";           //设置登录SMTP服务器的密码  
          
        Session mailSession;                        //邮件会话对象   
        MimeMessage mimeMsg;                        //MIME邮件对象   
        props = java.lang.System.getProperties();   //获得系统属性对象   
          
        props.put("mail.smtp.host", smtp);          //设置SMTP主机   
        props.put("mail.smtp.auth", "true"); //链接到SMTP服务器是否需要用户名和密码验证   
          
        //到服务器验证发送的用户名和密码是否正确   
        MailService myEmailAuther = new MailService(smtpname, smtppassword);  
        //设置邮件会话  
        mailSession = Session.getInstance(props, (Authenticator) myEmailAuther);    
        Transport transport = mailSession.getTransport("smtp");     //设置传输协议   
        mimeMsg = new MimeMessage(mailSession);                     //设置from、to等信息  
          
        InternetAddress sentFrom = new InternetAddress(from);   
        mimeMsg.setFrom(sentFrom); //设置发送人地址   
        InternetAddress[] sendTo = new InternetAddress[to.length];   
          
        for (int i = 0; i < to.length; i++) {   
            //System.out.println("发送到:" + to[i]);   
            sendTo[i] = new InternetAddress(to[i]);   
        }   
          
        mimeMsg.setRecipients(MimeMessage.RecipientType.TO, sendTo);   
        mimeMsg.setSubject(subject, "utf-8");   
        MimeBodyPart messageBodyPart1 = new MimeBodyPart();   
        //messageBodyPart.setText(UnicodeToChinese(text));   
        messageBodyPart1.setContent(text, mimeType);   
        Multipart multipart = new MimeMultipart();//附件传输格式   
        multipart.addBodyPart(messageBodyPart1);  
          
        for (int i = 0; i < filenames.length; i++) {   
            MimeBodyPart messageBodyPart2 = new MimeBodyPart();    
            String filename = filenames[i].split(",")[0];           //选择出每一个附件名   
            String displayname = filenames[i].split(",")[1];   
            FileDataSource fds = new FileDataSource(filename);      //得到数据源   
            //得到附件本身并至入BodyPart   
            messageBodyPart2.setDataHandler(new DataHandler(fds));  
            //得到文件名同样至入BodyPart   
            //messageBodyPart2.setFileName(displayname);   
            //messageBodyPart2.setFileName(fds.getName());   
            messageBodyPart2.setFileName(MimeUtility.encodeText(displayname));   
            multipart.addBodyPart(messageBodyPart2);   
        }  
          
        mimeMsg.setContent(multipart);   
        mimeMsg.setSentDate(new Date());    //设置信件头的发送日期   
        mimeMsg.saveChanges();    
        Transport.send(mimeMsg);            //发送邮件  
        transport.close();   
    }   
    
    public static void main(String[] args) {
    	String sendTo[] = {"java11@126.com"}; 
    	String data = "<h1><img alt=\"Saturn V carrying Apollo 11\" class=\"right\" src=\"assets/sample.jpg\" /> Apollo 11</h1><p><b>Apollo 11</b> was the spaceflight that landed the first humans, Americans <a href=\"http://en.wikipedia.org/wiki/Neil_Armstrong\" title=\"Neil Armstrong\">Neil Armstrong</a> and <a href=\"http://en.wikipedia.org/wiki/Buzz_Aldrin\" title=\"Buzz Aldrin\">Buzz Aldrin</a>, on the Moon on July 20, 1969, at 20:18 UTC. Armstrong became the first to step onto the lunar surface 6 hours later on July 21 at 02:56 UTC.</p><p>Armstrong spent about <strike>three and a half</strike> two and a half hours outside the spacecraft, Aldrin slightly less; and together they collected 47.5 pounds (21.5&nbsp;kg) of lunar material for return to Earth. A third member of the mission, <a href=\"http://en.wikipedia.org/wiki/Michael_Collins_(astronaut)\" title=\"Michael Collins (astronaut)\">Michael Collins</a>, piloted the <a href=\"http://en.wikipedia.org/wiki/Apollo_Command/Service_Module\" title=\"Apollo Command/Service Module\">command</a> spacecraft alone in lunar orbit until Armstrong and Aldrin returned to it for the trip back to Earth.</p><h2>Broadcasting and <em>quotes</em> <a id=\"quotes\" name=\"quotes\"></a></h2><p>Broadcast on live TV to a world-wide audience, Armstrong stepped onto the lunar surface and described the event as:</p><blockquote><p>One small step for [a] man, one giant leap for mankind.</p></blockquote><p>Apollo 11 effectively ended the <a href=\"http://en.wikipedia.org/wiki/Space_Race\" title=\"Space Race\">Space Race</a> and fulfilled a national goal proposed in 1961 by the late U.S. President <a href=\"http://en.wikipedia.org/wiki/John_F._Kennedy\" title=\"John F. Kennedy\">John F. Kennedy</a> in a speech before the United States Congress:</p><blockquote><p>[...] before this decade is out, of landing a man on the Moon and returning him safely to the Earth.</p></blockquote><h2>Technical details <a id=\"tech-details\" name=\"tech-details\"></a></h2><table align=\"right\" border=\"1\" bordercolor=\"#ccc\" cellpadding=\"5\" cellspacing=\"0\" style=\"margin: 10px 0px 10px 15px; border-collapse: collapse\"><caption><strong>Mission crew</strong></caption><thead><tr><th scope=\"col\">Position</th><th scope=\"col\">Astronaut</th></tr></thead><tbody><tr><td>Commander</td><td>Neil A. Armstrong</td></tr><tr><td>Command Module Pilot</td><td>Michael Collins</td></tr><tr><td>Lunar Module Pilot</td><td>Edwin &quot;Buzz&quot; E. Aldrin, Jr.</td></tr></tbody></table><p>Launched by a <strong>Saturn V</strong> rocket from <a href=\"http://en.wikipedia.org/wiki/Kennedy_Space_Center\" title=\"Kennedy Space Center\">Kennedy Space Center</a> in Merritt Island, Florida on July 16, Apollo 11 was the fifth manned mission of <a href=\"http://en.wikipedia.org/wiki/NASA\" title=\"NASA\">NASA</a>&#39;s Apollo program. The Apollo spacecraft had three parts:</p><ol><li><strong>Command Module</strong> with a cabin for the three astronauts which was the only part which landed back on Earth</li><li><strong>Service Module</strong> which supported the Command Module with propulsion, electrical power, oxygen and water</li><li><strong>Lunar Module</strong> for landing on the Moon.</li></ol><p>After being sent to the Moon by the Saturn V&#39;s upper stage, the astronauts separated the spacecraft from it and travelled for three days until they entered into lunar orbit. Armstrong and Aldrin then moved into the Lunar Module and landed in the <a href=\"http://en.wikipedia.org/wiki/Mare_Tranquillitatis\" title=\"Mare Tranquillitatis\">Sea of Tranquility</a>. They stayed a total of about 21 and a half hours on the lunar surface. After lifting off in the upper part of the Lunar Module and rejoining Collins in the Command Module, they returned to Earth and landed in the <a href=\"http://en.wikipedia.org/wiki/Pacific_Ocean\" title=\"Pacific Ocean\">Pacific Ocean</a> on July 24.</p><hr /><p style=\"text-align: right\"><small>Source: <a href=\"http://en.wikipedia.org/wiki/Apollo_11\">Wikipedia.org</a></small></p>";
        String fileNames[] = {};  
        try {  
            MailService.sendmail(  
                    "JavaWeb发送邮件测试", "Alex Xu<zhangxiaofei2012@126.com>",   
                    sendTo, data,   
                    fileNames, "text/html;charset=utf-8");  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
	}
} 