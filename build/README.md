# react-disqus-thread

## This is (yet another) fork
Forked from the popular package by mzabriskie, but with a few fixes.

## Installing

```bash
$ npm install react-disqus-thread
```

## Example

```js
var React = require('react');
var ReactDisqusThread = require('react-disqus-thread');

var App = createClass({

	handleNewComment: function(comment) {
		console.log(comment.text);
	}

	render: function () {
		return (
			<ReactDisqusComments
				shortname="example"
				identifier="something-unique-12345"
				title="Example Thread"
				url="http://www.example.com/example-thread"
				category_id="123456"
				onNewComment={this.handleNewComment}/>
		);
	}
});

React.render(<App/>, document.getElementById('container'));
```

## License

MIT
