# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <custom_text> <filename>"
    exit 1
fi

custom_text="$1"
filename="$2"

# Use sed to insert the custom text at the beginning of the file
sed -i "1s/^/$custom_text\n/" "$filename"

echo "Custom text '$custom_text' inserted at the beginning of '$filename'."
