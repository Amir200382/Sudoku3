import numpy

def start_game() -> list: 
    print("""
        Welcome to Sudoku game
        Please choose your difficulty from easy, mid, hard
    """)
    dif = input().strip().lower()