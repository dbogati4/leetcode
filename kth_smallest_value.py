g# using quick select algorithm
def partition(Arr, left, right):
    x = Arr[right]
    i = left - 1
    for j in range(left, right):
        if Arr[j] <= x:
            i = i + 1
            Arr[j], Arr[i] = Arr[i], Arr[j]

    Arr[i+1], Arr[right] = Arr[right], Arr[i+1]
    return i + 1

def quick_select(Arr, left, right, k):
    if left == right:
        return Arr[left]

    q = partition(Arr, left, right)
    print(f"q: {q}")
    print(f"Arr: {Arr}")
    if q == k:
        return Arr[k]

    elif q < k:
        return quick_select(Arr, q+1, right, k)

    else:
        return quick_select(Arr, left, q-1, k)


if __name__ == "__main__":
    Arr = [7, 10, 4, 3, 20, 15]
    left = 0
    right = len(Arr) - 1
    k = 3
    k = k - 1
    print(quick_select(Arr, left, right, k))
    print(Arr)g
