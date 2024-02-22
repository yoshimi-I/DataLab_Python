#!/bin/bash
script_content = ""

# Prompt user to select a Python version
echo "Select a Python version:"
options=("3.9" "3.10" "3.11" "3.12")
select opt in "${options[@]}"
do
    case $opt in
        "3.9")
            PYTHON_VERSION="3.9"
            break
            ;;
        "3.10")
            PYTHON_VERSION="3.10"
            break
            ;;
        "3.11")
            PYTHON_VERSION="3.11"
            break
            ;;
        "3.12")
            PYTHON_VERSION="3.12"
            break
            ;;
        *) echo "Please select a valid option (1-4):";;
    esac
done

# devcontainer.jsonを更新
sed -i "" "s|\"dockerfile\": \"../docker/python/.*|\"dockerfile\": \"../docker/python/$PYTHON_VERSION/Dockerfile\"|g" .devcontainer/devcontainer.json


echo "Python version has been updated $PYTHON_VERSION."
