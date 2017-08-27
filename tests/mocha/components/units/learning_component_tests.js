import React from 'react'
import { mount, shallow } from 'enzyme'
import { expect } from 'chai'

import LearningComponent from '../../../../app/javascript/components/learning_component'

describe("LearningComponent", function() {
  it("should render what we passed in", function() {
    const wrapper = shallow(<LearningComponent displayName="hello world!" />)

    expect(wrapper.html()).to.equal("<h1>hello world!</h1>")
  })
})
