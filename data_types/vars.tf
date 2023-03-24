variable number {
    type = number
}

variable string {
    type = string
}

variable boolean {
    type = bool
}

variable list {
    type = list(number)
}

variable set {
    type = set(string)
}

variable map {
    type = map(bool)
}

variable object {
    type = object({
        age = number
        name = string
        employed = bool
        favorite_numbers = list(number)
        favorite_letters = set(string)
        body_size = map(string)
    })
}

variable tuple {
    type = tuple([number, string, bool])
}

variable any {
    type = tuple([any, string])
}