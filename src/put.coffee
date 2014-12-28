module.exports = {
	e: (err)->
		if err?
			this.p err
	p: (obj)->
		if console? and console.log?
			console.log obj
	o: (obj, depth=0, indent_size=2)->
		if depth is 0
			depth += 1
			this.p '{'
		for key of obj
			if typeof obj[key] is 'object'
				this.p this._indent(depth, indent_size) + key + ':{ '
				this.o obj[key], (depth + 1)
				this.p this._indent(depth, indent_size) + '}'
			else
				this.p this._indent(depth, indent_size) + key + ':' + obj[key]
		if depth is 1
			this.p '}'
	a: (arr)->
		for v, i in arr
			this.p '[' + i + '] -> ' + v
	w: (obj)->
		this.p '-> ' + obj + ' <-'
	n: ->
		this.p ''
	pp: (arr)->
		for v in arr
			this.p v
	_indent: (depth, size)->
		res = ''
		for i in [0...size]
			res += ' '
		if depth is 0
			return ''
		else
			tmp = ''
			for i in [0...depth]
				tmp += res
			return tmp
}