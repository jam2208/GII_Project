
def decorator(area):
    def decorated(w, h):
        if w > 0 and h > 0:
            area(w, h)
        else:
            print('error')
    return decorated

@decorator
def area_tri(w, h):
    print(0.5 * w * h)

@decorator
def area_rec(w, h):
    print(w * h)

area_rec(1, 2)
area_tri(1, 2)

