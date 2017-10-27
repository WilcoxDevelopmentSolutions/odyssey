import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import {
  Table,
  TableBody,
  TableHeader,
  TableHeaderColumn,
  TableRow,
  TableRowColumn,
} from 'material-ui/Table';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import RaisedButton from 'material-ui/RaisedButton';
import Add from 'material-ui/svg-icons/av/library-add';

class NewProjectButton extends React.Component {
  render() {
      return <MuiThemeProvider>
		<div>
			  <RaisedButton
			      href={this.props.link}
			      label={this.props.label}
			      primary={true}
			      style={{margin: 12,}}
      			  icon={<Add />}
			    />
		</div>
      </MuiThemeProvider>
  }
}

export default NewProjectButton