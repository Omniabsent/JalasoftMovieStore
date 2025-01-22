import React, { useState, useEffect } from "react";
import axios from "axios";
import "./App.css";

function App() {
  const [movies, setMovies] = useState([]);

  // Load movies when the app starts
  useEffect(() => {
    axios.get("http://localhost:3001/movies")
      .then((response) => {
        setMovies(response.data);
      })
      .catch((error) => {
        console.error("Couldn't fetch movies:", error);
      });
  }, []);


  return (
    <div>
      <h1>Jalasoft Movie Store</h1>

      <ul>
      {movies.map((movie) => (
        <li>
          {movie.title}<br></br>
          {movie.description}<br></br>
          {movie.rating}<br></br>
          {movie.image}<br></br>
          <br></br>
        </li>
      ))}
      </ul>

    </div>
  );
}

export default App;