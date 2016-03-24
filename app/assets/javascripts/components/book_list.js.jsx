var BookList = React.createClass({

  getInitialState(){
    return {
      books: []
    }
  },

  fetchBooks(){
    var component = this;
    fetch("/api/books.json")
    .then(function(r){
      return r.json();
    })
    .then(function(json){
      component.setState({
        books: json.books
      })
    })
  },

  componentDidMount(){
    this.fetchBooks();
  },

  onItemClick: function(event){
      event.books.style.border = '5px solid red';
  },

  render: function() {
    return <div>
      <div className="react_button">
        <button onClick={this.onItemClick}>Haz Click</button>
      </div>
      <div className="react_cover_container">
        {this.state.books.map(function(book){
          return  <div className="react_cover"><img key={book.id} src={book.photo_url}/></div>
       })}
       </div>
    </div>;
  }
});
