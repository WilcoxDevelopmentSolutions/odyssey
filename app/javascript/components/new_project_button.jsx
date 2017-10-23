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
import ActionAndroid from 'material-ui/svg-icons/av/library-add';

class New_Project_Button extends React.Component {
  render() {
      return <MuiThemeProvider>
		<div>
			  <RaisedButton
			      href={this.props.link}
			      label="New Project"
			      primary={true}
			      style={{margin: 12,}}
      			  icon={<ActionAndroid />}
			    />
		</div>
      </MuiThemeProvider>
  }
}

export default New_Project_Button