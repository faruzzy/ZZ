Zamunda = do  -> 
	regex_tag = /<(\w+)\/?>/,
	regex_white = /\s/
	Zamunda = (selector, attributes) ->
		return new $$.fn.init(selector, attributes)

	Zamunda.fn = Zamunda.prototype = {
		constructor: Zamunda,
		init: (selector, attributes) ->
			core_slice = [].slice

			matches = selector.match(regex_tag)
			if matches
				tag = matches[1]
				el = document.createElement tag
				if attributes
					if attributes.class
						el.className = attributes.class

					if attributes.text
						el.textContent = attributes.text

				return el

			elements = core_slice.call(document.querySelectorAll selector)
			this[0] = elements
			this
		,
		addClass: (value) ->	
			elements = this[0]	
			elements.forEach (element, index) ->
				classes = element.className.split ' '
				if classes.indexOf(value) != -1
					classes.push value
					element.className = classes.join ' '
				else 
					break

				elements
		,
		removeClass: (value) ->
			element = this[0]
			if value.match regex_white
				classes = value.split ' '
				

	}

	Zamunda.fn.init.prototype = Zamunda.fn
	window.Zamunda = window.$$ = Zamunda
