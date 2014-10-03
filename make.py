#! /usr/bin/python

try:
    from jinja2 import Template
except ImportError:
    from jinja import from_string as Template

from os import listdir

manglers = {
    '.hs': "Hs",
    '.py': "Py",
    '.ou': "Out",
}

def mangle(xs):
    def _mangle(xs, ms):
        if not ms:
            return xs
        m = ms.pop()
        return _mangle(xs.replace(*m), ms)
    return _mangle(xs, manglers.items())

bpath = "./examples/"
xs = listdir(bpath)
xs = [x for x in xs if x[-3:] in manglers.keys()]
xs = [(mangle(x), open(bpath + x).read().strip()) for x in xs]
tpl = Template(open("./index.html.jinja").read())

open("./index.html", "w").write(tpl.render(**dict(xs)))
