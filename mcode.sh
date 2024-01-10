#!/bin/bash 

# ვიღებთ ინფორმაციას ვირტუალური დესკტოპების შესახებ 
workspaces=$(i3-msg -t get_workspaces) 

# ვეძებთ პირველ თავისუფალს workspace 

free_workspace="" 

while read -r num; do
    occupied=$(echo "$workspaces" | grep "\"num\":$num," | grep -c '"focused":true')
if [ "$occupied" -eq 0 ]; then
    free_workspace=$num
    break
fi 
done <<< $(seq 1 8)  # ჩემმთან ვირტუალკები მაქვს 8 
# თუ მოიძებნა თავისუფალი workspace, გადავერთვებით და გავუშვებთ Visual Studio Code 
if [ -n "$free_workspace" ]; then
    i3-msg "workspace $free_workspace; exec code ." 
else
    echo "არ არის თავისუფალი WORKSPACE." 
fi

# რა თქმა უნდა, ჩვენ ვხედავთ რომელი ვირტუალკებია თავისუფალი და თუ თავისუფალია მხოლოდ მაშინ გავუშვებთ
