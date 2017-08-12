import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

class LearningComponent extends React.Component {
  render() {
      return <h1>{this.props.displayName}</h1>
  }
}

export default LearningComponent
