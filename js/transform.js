function Transform(){
	var xml = getXMLData("./createXML.php");
	var xsl = getXMLData("./product_list.xsl");

	xsltProcessor = new XSLTProcessor();
	xsltProcessor.importStylesheet(xsl);
	var result = xsltProcessor.transformToFragment(xml, document);

	$(".product").append(result);

}

function getXMLData(url){
	return $.ajax({
		type: "GET",
		url: url,
		async: false
	}).responseXML;
}