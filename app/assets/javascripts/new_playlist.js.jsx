var NewPlaylist = React.createClass({
  getInitialState(){
    return {playlists: []};
  },
  componentWillMount(){
    this.setState({playlists: this.props.titles})
  },

  render: function(){
    return(
      <div className="playlistBox">
        <p>
          {this.state.playlists.map(function(title){
            return {title}
          })}
        </p>
      </div>
      );
  }
});
