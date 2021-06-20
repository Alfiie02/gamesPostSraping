<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page
	import="java.io.IOException,java.util.ArrayList,org.jsoup.Jsoup, org.jsoup.nodes.Document, org.jsoup.nodes.Element, org.jsoup.select.Elements"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="container">
		<div class="header">
			<h1 class="title">2021年ゲーム関連の記事</h1>
			<div class="list-btn">
				<ul>
					<li class="sort-mmo"><a href="" class="btn btn-border">MMO</a></li>
					<li class="sort-ps5"><a href="#" class="btn btn-border">PS5</a></li>
					<li class="sort-switch"><a href="#" class="btn btn-border">switch</a></li>
					
				</ul>
			</div>
		</div>	
		<div class="list">
			<ul class="grid" style="height: 250px;">
				<!--mmo  -->
				<li class="item"><a class="item-content" data-mmo="1"
					data-switch="5" data-ps5="5">
						<div class="pickup">
							<h2>Online Gamer</h2>
							<%
							try {
								//スクレイピング対象のリンク
								Document doc = Jsoup.connect("https://www.onlinegamer.jp/news/").get();
								//スクレイピング対象のタグ・属性値
								Elements title = doc.select("div.mainFull div.text p.title");
								Elements href = doc.select("p a[href]");
								int i = 0;
								ArrayList<String> e1 = new ArrayList<String>();
								ArrayList<String> e2 = new ArrayList<String>();

								for (Element element1 : title) {
									if (i == 5) {
								i -= 5;
								break;
									} else {
								e1.add(element1.text());
									}
									i++;
								}

								for (Element element2 : href) {
									if (i == 5) {
								i -= 5;
								break;
									} else {
								e2.add(element2.attr("href"));
									}
									i++;
								}
							%>
							<ol>
								<%
								while (i < 5) {
								%>
								<li class="post"><a
									href="https://www.onlinegamer.jp<%=e2.get(i)%>" target="_blank"
									rel="noopener noreferrer"><%=e1.get(i)%></a></li>
								<%
								i++;
								}
								%>
							</ol>
							<%
							} catch (IOException e) {
							e.printStackTrace();
							}
							%>
						</div>
				</a></li>
							<!-- mmo -->  
				<li class="item"><a class="item-content" data-mmo="2"
					data-switch="4" data-ps5="4">
						<div class="pickup">
							<h2>4Gamer</h2>
							<%
							try {
								//スクレイピング対象のリンク
								Document doc = Jsoup.connect("https://www.4gamer.net/tags/TG/TG001/").get();
								//スクレイピング対象のタグ・属性値
								Elements title = doc.select("h2");
								Elements href = doc.select("h2 a[href]");
								int i = 0;
								ArrayList<String> e1 = new ArrayList<String>();
								ArrayList<String> e2 = new ArrayList<String>();

								for (Element element1 : title) {
									if (i == 5) {
								i -= 5;
								break;
									} else {
								e1.add(element1.text());
									}
									i++;
								}

								for (Element element2 : href) {
									if (i == 5) {
								i -= 5;
								break;
									} else {
								e2.add(element2.attr("href"));
									}
									i++;
								}
							%>
							<ol>
								<%
								while (i < 5) {
								%>
								<li class="post"><a
									href="https://www.4gamer.net<%=e2.get(i)%>" target="_blank"
									rel="noopener noreferrer"><%=e1.get(i)%></a></li>
								<%
								i++;
								}
								%>
							</ol>
							<%
							} catch (IOException e) {
							e.printStackTrace();
							}
							%>
						</div>
				</a></li>
				<!--ps5  -->
				<li class="item"><a class="item-content" data-mmo="3"
					data-switch="3" data-ps5="1">
						<div class="pickup">
							<h2>PS5速報！</h2>
							<%
							try {
								//スクレイピング対象のリンク
								Document doc = Jsoup.connect("http://openworldnews.net/").get();
								//スクレイピング対象のタグ・属性値
								Elements title = doc.select("article.topentry");
								Elements href = doc.select("article.topentry a[href]");
								int i = 0;
								ArrayList<String> e1 = new ArrayList<String>();
								ArrayList<String> e2 = new ArrayList<String>();

								for (Element element1 : title) {
									if (i == 5) {
								i -= 5;
								break;
									} else {
								e1.add(element1.text());
									}
									i++;
								}

								for (Element element2 : href) {
									if (i == 5) {
								i -= 5;
								break;
									} else {
								e2.add(element2.attr("href"));
									}
									i++;
								}
							%>
							<ol>
								<%
								while (i < 5) {
								%>
								<li class="post"><a href="<%=e2.get(i)%>" target="_blank"
									rel="noopener noreferrer"><%=e1.get(i)%></a></li>
								<%
								i++;
								}
								%>
							</ol>
							<%
							} catch (IOException e) {
							e.printStackTrace();
							}
							%>
						</div>
				</a></li>
				<!--switch  -->
				<li class="item"><a class="item-content" data-mmo="3"
					data-switch="1" data-ps5="3">
						<div class="pickup">
							<h2>switch速報</h2>
							<%
							try {
								//スクレイピング対象のリンク
								Document doc = Jsoup.connect("https://switchsoku.com/").get();
								//スクレイピング対象のタグ・属性値
								Elements title = doc.select("h2 a");
								Elements href = doc.select("h2 a[href]");
								int i = 0;
								ArrayList<String> e1 = new ArrayList<String>();
								ArrayList<String> e2 = new ArrayList<String>();

								for (Element element1 : title) {
									if (i == 5) {
								i -= 5;
								break;
									} else {
								e1.add(element1.text());
									}
									i++;
								}

								for (Element element2 : href) {
									if (i == 5) {
								i -= 5;
								break;
									} else {
								e2.add(element2.attr("href"));
									}
									i++;
								}
							%>
							<ol>
								<%
								while (i < 5) {
								%>
								<li class="post"><a href="<%=e2.get(i)%>" target="_blank"
									rel="noopener noreferrer"><%=e1.get(i)%></a></li>
								<%
								i++;
								}
								%>
							</ol>
							<%
							} catch (IOException e) {
							e.printStackTrace();
							}
							%>
						</div>
				</a></li>
				<!--fortnite  -->
				<li class="item"><a class="item-content" data-mmo="3"
					data-switch="2" data-ps5="2">
						<div class="pickup">
							<h2>フォートナイトちゃんねる</h2>
							<%
							try {
								//スクレイピング対象のリンク
								Document doc = Jsoup.connect("https://fotosoku.net/").get();
								//スクレイピング対象のタグ・属性値
								Elements title = doc.select("h2 a");
								Elements href = doc.select("h2 a[href]");
								int i = 0;
								ArrayList<String> e1 = new ArrayList<String>();
								ArrayList<String> e2 = new ArrayList<String>();

								for (Element element1 : title) {
									if (i == 5) {
								i -= 5;
								break;
									} else {
								e1.add(element1.text());
									}
									i++;
								}

								for (Element element2 : href) {
									if (i == 5) {
								i -= 5;
								break;
									} else {
								e2.add(element2.attr("href"));
									}
									i++;
								}
							%>
							<ol>
								<%
								while (i < 5) {
								%>
								<li class="post"><a href="<%=e2.get(i)%>" target="_blank"
									rel="noopener noreferrer"><%=e1.get(i)%></a></li>
								<%
								i++;
								}
								%>
							</ol>
							<%
							} catch (IOException e) {
							e.printStackTrace();
							}
							%>
						</div>
				</a></li>
			</ul>
		</div>
	</div>
	<footer>
	<p>@Square.</p>
	</footer>
	<script type="text/javascript" src="./jquery-3.6.0.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/muuri/0.5.1/muuri.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/web-animations/2.3.1/web-animations.min.js"></script>
	<script type="text/javascript" src="js/muuri.js"></script>
	<script type="text/javascript">
		$(function() {
			var grid = new Muuri('.grid', {
				sortData : {
					mmo : function(item, element) {
						return parseFloat(element.children[0]
								.getAttribute('data-mmo'));
					},
					switch : function(item, element) {
						return parseFloat(element.children[0]
								.getAttribute('data-switch'));
					},
					ps5 : function(item, element) {
						return parseFloat(element.children[0]
								.getAttribute('data-ps5'));
					}
				}
			});

			$('.list-btn li.sort-mmo').click(function() {
				grid.sort('mmo');
				return false;
			});
			$('.list-btn li.sort-switch').click(function() {
				grid.sort('switch');
				return false;
			});
			$('.list-btn li.sort-ps5').click(function() {
				grid.sort('ps5');
				return false;
			});
		});
	</script>
</body>
</html>