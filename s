import numpy

def start_game() -> list: 
    print("""
        Welcome to Sudoku game
        Please choose your difficulty from easy, mid, hard
    """)
    dif = input().strip().lower()
    list_easy = [
        [8,2,3,1,5,7,0,0,4],
        [0,0,0,3,0,6,8,0,2],
        [1,6,9,0,0,4,3,0,7],
        [0,0,0,0,1,0,2,6,0],
        [4,0,0,7,0,0,0,0,1],
        [5,0,0,9,2,8,4,0,0],
        [0,4,8,0,0,2,0,0,0],
        [0,7,0,0,3,0,0,4,0],
        [0,0,1,5,0,9,0,2,0]
    ]
    
    list_norm = [
        [8,0,6,0,9,0,0,0,0],
        [0,0,0,2,0,0,8,0,0],
        [5,9,0,0,0,0,0,6,1],
        [0,0,0,7,1,0,6,0,4],
        [0,5,0,0,6,0,0,0,0],
        [0,0,7,9,0,0,0,8,2],
        [7,2,5,0,3,8,9,0,6],
        [6,0,4,0,7,9,1,2,3],
        [0,1,0,0,2,4,0,0,0]
    ]
    
    list_hard = [
        [4,0,0,0,0,0,0,1,0],
        [3,8,2,1,0,0,4,0,0],
        [0,1,0,0,0,4,0,5,3],
        [0,6,0,0,0,0,0,0,7],
        [5,0,7,8,0,1,0,0,9],
        [8,9,0,0,7,2,0,3,1],
        [0,0,8,0,0,0,0,0,0],
        [2,0,0,0,6,0,0,0,0],
        [0,5,1,0,0,0,0,7,0]
    ]
    
    if dif == "easy":
        return list_easy
    elif dif == "mid":
        return list_norm
    elif dif == "hard":
        return list_hard
    else:
        print("Invalid input. Please choose from easy, mid, hard.")
        return start_game()
def valid(puzzle, row, col, value):
    if puzzle[row][col] != 0:
        return False
    for i in range(9):
        if puzzle[row][i] == value or puzzle[i][col] == value:
            return False
    x_start = (row // 3) * 3
    y_start = (col // 3) * 3
    for i in range(3):
        for j in range(3):
            if puzzle[x_start + i][y_start + j] == value:
                return False
    return True
