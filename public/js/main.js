// JavaScript Document

(function() {
	"use strict";

	var request;
	var characters = document.querySelector("#charList");
	var info = document.querySelector("#info");

	function characterList() {
		request = createRequest();

		if(request===null) {
			alert("You are using an outdated browser");
			return;
		}

		var url="http://localhost:8000/ajax/list";//this would point to a route in laravel
		//no external procedural php
		request.onreadystatechange=stateChangedList;
		request.open("GET",url,true);
		request.send(null);
	}

	function stateChangedList() {
		if (request.readyState===4 || request.readyState==="complete") {
			createList(request);
		}
	}

	function createList(request) {
		console.log('list fired');
		var jsondoc = JSON.parse(request.responseText);
		//console.log(jsondoc);
		//console.log(jsondoc[0].id);
		//console.log(jsondoc[0].name);
		for(var i =0; jsondoc.length > i; i++){
			console.log(jsondoc[i].character_id);
			characters.innerHTML += "<li><a href='#' data-charid='"+jsondoc[i].character_id+"'>"+jsondoc[i].character_name+"</a></li>";
		}

		var anchors = characters.querySelectorAll("a");
		//console.log(anchors);

		for(var i=0; i<anchors.length; i++) {
			anchors[i].addEventListener("click",sumoInfo,false);
		}
	}

	function sumoInfo(e) {
		//console.log(e.currentTarget.dataset.charid);
		var id = e.currentTarget.dataset.charid;
		e.preventDefault();

		request = createRequest();

		if(request===null) {
			alert("You are using an outdated browser");
			return;
		}

		var url="http://localhost:8000/ajax/info/"+id+"";//this would point to a route in laravel
		//no external procedural php
		request.onreadystatechange=stateChangedInfo;
		request.open("GET",url,true);
		request.send(null);
	}

	function stateChangedInfo() {
		if (request.readyState===4 || request.readyState==="complete") {
			showInfo(request);
		}
	}

	function showInfo(request) {
		var jsondoc = JSON.parse(request.responseText);

		//console.log(jsondoc);
		//console.log(jsondoc[0].id);
		//console.log(jsondoc[0].name);
		info.innerHTML =
		"<img src='http://localhost:8000/img/portrait/"+jsondoc.character_photo+"' height='400px'>"+
		"<img src='http://localhost:8000/img/banner/"+jsondoc.character_banner+"' height='200px'>"+
		"<h2>"+jsondoc.character_name+"</h2>"+
		"<h3>"+jsondoc.character_actor+"</h3>"+
		"<h3>"+jsondoc.character_house+"</h3>"+
		"<p>"+jsondoc.character_bio+"</p>";
	}

	characterList();//need to call the function

})();