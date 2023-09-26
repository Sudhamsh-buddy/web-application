# def even_odd():
#     a = [1, 2, 3, 4, 5, 6]
#     for value in a:
#         if value % 2 == 0:
#             print("it's even")
#         else:
#             print("it's odd")
# even_odd()

def even_odd():
    a = [1, 2, 3, 4, 5, 6]
    results = []  # Create an empty list to store the results
    for value in a:
        if value % 2 == 0:
            results.append('even')
        else:
            results.append('odd')
    return results  # Return the list of results

result_list = even_odd()
print(result_list)
