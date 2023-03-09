import React from 'react'
import {createRoot} from 'react-dom/client'

const Hello = props => (
  React.createElement('div', null, `こんにちは ${props.name}さん`)
)

Hello.defaultProps = {
  name: '名無し'
}

document.addEventListener('DOMContentLoaded', () => {
  const container = document.getElementById('app');
  const element = React.createElement(Hello, {name: 'たたた'}, null);
  createRoot(container).render(element);
})

