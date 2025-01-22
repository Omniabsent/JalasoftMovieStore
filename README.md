# JalasoftMovieStore
Wherein I remake the entire project for the Jalasoft test from scratch

*Currently working:* 

Back: 
- sqlite3 database with seeds [activable by 'rails db:seeds']
- full CRUD [usable through Postman or alternatives]
- search by title/description [on /movies?search=<_value_>] and minimum rating [on /movies?rating=<_value_>]
- pagination [defaults to page 1 with 10 results, navigable by /movies?per_page=<_value_>&page=<_value_>]
- Both filters and the pagination feature can be conbined in a single query by sending all params with an "&" between them. 

Front: successfully connects to backend api and shows list of movies  


For current CORS configuration to work, the Rails server must be running at http://localhost:3001/ and the React server must be running at http://localhost:3000/

Front and integration based on [this tutorial](https://blog.lewagon.com/skills/how-to-build-a-single-page-application-spa-with-rails-react/)
