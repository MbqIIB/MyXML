var xml = new ActiveXObject("MSXML2.DOMDocument.3.0");
var xsl = new ActiveXObject("MSXML2.DOMDocument.3.0");

xml.async = false;
xsl.async = false;

xml.load("data2.xml");
xsl.load("sample2.xsl");

var fso = new ActiveXObject("Scripting.FileSystemObject");
var MyFile = fso.CreateTextFile("output2.txt", true);

MyFile.Write(xml.transformNode(xsl));
MyFile.Close();


