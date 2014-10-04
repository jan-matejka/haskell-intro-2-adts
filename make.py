#! /usr/bin/python2

from jinja2 import Template, Environment, FileSystemLoader
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

open("./index.html", "w").write(
    Environment(loader = FileSystemLoader('./')).\
        get_template("./index.html.jinja").\
        render(**dict(xs)).\
        encode("utf-8")
)
