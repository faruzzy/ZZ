Zamunda = do  -> 
	Zamunda = (selector, attributes) ->
		return new $$.fn.init(selector, attributes)

	Zamunda.fn = Zamunda.prototype = {
		constructor: Zamunda,
		init: (selector, attributes) ->
			core_slice = [].slice
			regex_tag = /<(\w+)\/?>/

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

		addClass: () ->		
	}

	Zamunda.fn.init.prototype = Zamunda.fn
	window.Zamunda = window.$$ = Zamunda
		#_slice.call


