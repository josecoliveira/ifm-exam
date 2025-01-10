def x(i, j, k):
    """
    Convert the indices (i, j, k) to a single number for DIMACS format.
    
    Parameters:
    i (int): Index for robot (0 or 1)
    j (int): Index for item (0 or 1)
    k (int): Index for room (0 to 9)
    
    Returns:
    int: The corresponding DIMACS variable number
    """
    return i * 2 * 10 + j * 10 + k + 1

# Example usage:
# For robot 0, item 1, room 5
# print(x(0, 1, 5))  # Output: 16
# For robot 1, item 0, room 3
# print(x(1, 0, 3))  # Output: 24


def main():
    """
    Generates and prints a list of clauses for a SAT solver problem involving two robots and items in rooms.
    The function creates clauses that represent the following constraints:
    1. Robot 0 is not holding item j in room m or robot 1 is not holding item j in room n.
    2. Robot 0 is not holding item j in room m or robot 1 is not holding item l in room m.
    """
    num_variables = 2 * 2 * 10
    
    clauses = []

    for j in range(2):
        for m in range(10):
            for n in range(10):
                clauses.append(f"-{x(0, j, m)} -{x(1, j, n)} 0")

    for j in range(2):
        for l in range(2):
            for m in range(10):
                clauses.append(f"-{x(0, j, m)} {x(1, l, m)} 0")

    print(f"p cnf {num_variables} {len(clauses)}")
    print("\n".join(clauses))

if __name__ == "__main__":
    main()
