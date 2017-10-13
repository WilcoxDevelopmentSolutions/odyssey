import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import RaisedButton from 'material-ui/RaisedButton';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';

class StoryTable extends React.Component {
  render() {
      return <MuiThemeProvider>
		<div>
			<RaisedButton label={this.props.displayName} primary={true} style={{margin: 12}} />
		</div>
      </MuiThemeProvider>
  }
}

export default StoryTable
