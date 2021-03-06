# @cjsx React.DOM 
require('events')
React = require('react')
Router = require('react-router-component')
Pages = Router.Pages
Page = Router.Page
NotFound = Router.NotFound

HomePage = require('components/pages/home_page')

NotFoundHandler = React.createClass
  render: ->
    <h1>Not found</h1>

App = React.createClass
  displayName: 'SteamLibraryLength'
  render: ->
    <Pages path={@props.path}>
      <Page path="/" handler={HomePage} />
      <NotFound handler={NotFoundHandler} />
    </Pages>

window.App = App
module.exports = App
