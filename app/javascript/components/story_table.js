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

class StoryTable extends React.Component {
  render() {
      return <MuiThemeProvider>
		<div>
			  <Table>
			    <TableHeader>
			      <TableRow>
			        <TableHeaderColumn>ID</TableHeaderColumn>
			        <TableHeaderColumn>Name</TableHeaderColumn>
			        <TableHeaderColumn>Status</TableHeaderColumn>
			      </TableRow>
			    </TableHeader>
			    <TableBody>
			      <TableRow>
			        <TableRowColumn>1</TableRowColumn>
			        <TableRowColumn>John Smith</TableRowColumn>
			        <TableRowColumn>Employed</TableRowColumn>
			      </TableRow>
			      <TableRow>
			        <TableRowColumn>2</TableRowColumn>
			        <TableRowColumn>Randal White</TableRowColumn>
			        <TableRowColumn>Unemployed</TableRowColumn>
			      </TableRow>
			      <TableRow>
			        <TableRowColumn>3</TableRowColumn>
			        <TableRowColumn>Stephanie Sanders</TableRowColumn>
			        <TableRowColumn>Employed</TableRowColumn>
			      </TableRow>
			      <TableRow>
			        <TableRowColumn>4</TableRowColumn>
			        <TableRowColumn>Steve Brown</TableRowColumn>
			        <TableRowColumn>Employed</TableRowColumn>
			      </TableRow>
			      <TableRow>
			        <TableRowColumn>5</TableRowColumn>
			        <TableRowColumn>Christopher Nolan</TableRowColumn>
			        <TableRowColumn>Unemployed</TableRowColumn>
			      </TableRow>
			    </TableBody>
			  </Table>
		</div>
      </MuiThemeProvider>
  }
}

export default StoryTable
