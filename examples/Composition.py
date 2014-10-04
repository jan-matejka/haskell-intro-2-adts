def convert(xs):
    for x in xs:
        yield int(x)-1

print list(convert(["2", "3"]))
