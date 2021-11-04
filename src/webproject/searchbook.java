package webproject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class searchbook {
	private static String getTagValue(String tag, Element eElement) {
	    NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	    Node nValue = (Node) nlList.item(0);
	    if(nValue == null) 
	        return null;
	    return nValue.getNodeValue();
	}
	String title;
	String link;
	String image;
	String author;
	String publisher;
	String pubdate;
	String description;
	public String printTitle() {
		return title;
	}
	public String printLink() {
		return link;
	}
	public String printImage() {
		return image;
	}
	public String printAuthor() {
		return author;
	}
	public String printPublisher() {
		return publisher;
	}
	public String printPubdate() {
		return pubdate;
	}
	public String printDescription() {
		return description;
	}
	
	public void info(String bookname) throws SAXException, IOException, ParserConfigurationException {

		String clientId = "VcfXfgXiGh5CLAAtOYqK"; //애플리케이션 클라이언트 아이디값"
	    String clientSecret = "AF8w6pYODG"; //애플리케이션 클라이언트 시크릿값"
	    
	    String text = null;
        try {
            text = URLEncoder.encode(bookname, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("검색어 인코딩 실패",e);
        }
        System.out.println(text);
		URL url = new URL("https://openapi.naver.com/v1/search/book_adv.xml?d_titl="+text);	
		System.out.println(url);
		URLConnection urlConn=url.openConnection();
		
		urlConn.setRequestProperty("X-Naver-Client-Id",clientId);
		urlConn.setRequestProperty("X-Naver-Client-Secret",clientSecret);

		BufferedReader br = new BufferedReader(new InputStreamReader(urlConn.getInputStream(),"UTF-8"));

		String data="";
		String msg = null;
        while((msg = br.readLine())!=null){
            data+=msg;
        }
        
		DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		InputSource is=new InputSource(new StringReader(data));
		DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
		Document doc = dBuilder.parse(is);

		doc.getDocumentElement().normalize();
		//System.out.println("Root element: " + doc.getDocumentElement().getNodeName());

		NodeList nList = doc.getElementsByTagName("item");
		//System.out.println("파싱할 리스트 수 : "+ nList.getLength()); 

		for(int temp = 0; temp < nList.getLength(); temp++){		
			Node nNode = nList.item(temp);
			if(nNode.getNodeType() == Node.ELEMENT_NODE){
								
				Element eElement = (Element) nNode;
				this.title=getTagValue("title", eElement);
				this.link=getTagValue("link", eElement);
				this.image=getTagValue("image", eElement);
				this.author=getTagValue("author", eElement);
				this.publisher=getTagValue("publisher", eElement);
				this.pubdate=getTagValue("pubdate", eElement);
				this.description=getTagValue("description", eElement);
			}	
			}
	}
}
