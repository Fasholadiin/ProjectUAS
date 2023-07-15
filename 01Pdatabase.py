user_input1 = input("tulislah: ")
user_input2 = input("tulislah: ")

with open("database.txt", 'w', encoding='utf-8') as file:
    file.write (f'{user_input1}' + "\n")

with open("database.txt", 'a', encoding='utf-8') as file:
    file.write (f'{user_input2}' + "\n")

