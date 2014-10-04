class Person:
    def __init__(self, name, surname):
        self.name = name
        self.surname = surname


print repr(Person("John", "Doe"))
