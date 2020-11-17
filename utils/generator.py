import os

# Main function called to generate page
def generate_page():
    head = "<head>" + generate_stylesheet_tags()+ "</head>"

    body = "<body>" + generate_layout() + "</body>"

    tail = ""

    return "<html>" + head + body + tail +"</html>"

def generate_layout():
    return "Hello, world!"

def generate_stylesheet_tags():
    return ""

