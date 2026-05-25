import re

with open("app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosSimpleScreen.kt", "r") as f:
    content = f.read()

# We will split by conflict markers
parts = re.split(r'<<<<<<< HEAD\n(.*?)\n=======\n(.*?)\n>>>>>>> origin/login\n', content, flags=re.DOTALL)

# parts[0] is text before first conflict
# parts[1] is HEAD of first conflict
# parts[2] is origin/login of first conflict
# parts[3] is text after first conflict, etc.

if len(parts) > 1:
    new_content = parts[0]
    # Block 1: imports
    new_content += parts[1] + "\n" + parts[2]
    new_content += parts[3]
    
    # Block 2: imports
    new_content += parts[4] + "\n" + parts[5]
    new_content += parts[6]
    
    # Block 3: actualizarPsicologoBaja
    new_content += parts[7] # HEAD
    new_content += parts[9]
    
    # Block 4: Snackbar error
    new_content += parts[10] # HEAD
    new_content += parts[12]
    
    # Block 5: DarAltaPsicologo onLogout
    new_content += parts[13] # HEAD
    new_content += parts[15]
    
    # Block 6: Box modifier
    new_content += parts[16] # HEAD
    new_content += parts[18]
    
    # Block 7: onEditar
    new_content += parts[20] # origin/login
    new_content += parts[21]
    
    # Block 8: AlertDialog confirmButton
    new_content += parts[22] # HEAD
    new_content += parts[24]
    
    # Block 9: AlertDialog dismissButton
    new_content += parts[25] # HEAD
    new_content += parts[27]
    
    # Block 10: Dialogo de edicion (huge block)
    # Wait, HEAD had "Cancelar", ... origin/login had "Editar Psicólogo" ...
    new_content += parts[29] # origin/login
    new_content += parts[30]
    
    # Block 11: Card shape
    new_content += parts[31] + "\n            .clickable { expanded = !expanded }," # HEAD + clickable
    new_content += parts[33]
    
    # Block 12: Expandable card content
    new_content += parts[35] # origin/login
    new_content += parts[36]
    
    # If there are more blocks, just append them (there might be 13)
    if len(parts) > 37:
        new_content += parts[38] # origin/login for block 13
        new_content += parts[39]

    with open("app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosSimpleScreen.kt", "w") as f:
        f.write(new_content)
    print("Resolved ListadoPsicologosSimpleScreen.kt")
else:
    print("No conflicts found or parsing failed")

