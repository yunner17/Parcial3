import React from "react";
import { useState } from "react";

export default function Client() {
  const [value1, setValue1] = useState();
  const [value2, setValue2] = useState();
  const getData = () => {
    fetch("http://192.168.2.100:5000/books", {
      method: "GET",
      mode: "no-cors",
      headers: { "Access-Control-Allow-Origin": "*" },
    }).then((response) => console.log(response));
  };

  const getData1 = () => {
    fetch("http://192.168.2.100:5000/books", {
      method: "GET",
      // mode: "no-cors",
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    })
      .then(function (response) {
        return response.text();
      })
      .then(function (obj) {
        setValue1(obj);
        console.log(obj);
      })
      .catch(function (err) {
        console.error(err);
      });

    console.log(value1);
  };

  function setValue() {
    setValue1();
  }

  const postData = () => {
    fetch('http://192.168.2.100:5000/books', {
  method: "POST",
  body: JSON.stringify({
    "author": "Gabo3",
    "description": "Interesante3",
    "id": 3,
    "title": "La hojarasca3"
}),
  headers: {"Content-type": "application/json; charset=UTF-8"}
})
.then(response => response.json()) 
.then(json => console.log(json))
.catch(err => console.log(err));

}


  
  

  return (
    <div className="container1">
      <h1> Servicios Telematicos </h1>
      
      <input className="peticion" size="54" />
      <br></br>

      <button className="get1" onClick={getData1}>
        {" "}
        GET{" "}
      </button>
      <button className="post1" onClick={postData}>
        POST{" "}
      </button>
      <button className="put1" >
        PUT{" "}
      </button>
      <button className="del1">
        DELETE{" "}
      </button>
      <br></br>
      <input className="response" size="54" value={value1} />
      
    </div>
  );
 }