#!/bin/bash

echo "Welcome to FileTool - A Simple File Operation Script"

while true; do
    echo ""
    echo "Choose an option:"
    echo "1. Create a file"
    echo "2. View a file"
    echo "3. Delete a file"
    echo "4. Exit"
    read -p "Enter your choice [1-4]: " choice

    case $choice in
        1)
            read -p "Enter file name to create: " filename
            touch "$filename"
            echo "$filename created."
            ;;
        2)
            read -p "Enter file name to view: " filename
            if [[ -f "$filename" ]]; then
                echo "Contents of $filename:"
                cat "$filename"
            else
                echo "$filename does not exist."
            fi
            ;;
        3)
            read -p "Enter file name to delete: " filename
            if [[ -f "$filename" ]]; then
                rm "$filename"
                echo "$filename deleted."
            else
                echo "$filename does not exist."
            fi
            ;;
        4)
            echo "Exiting. Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice. Please choose 1-4."
            ;;
    esac
done
