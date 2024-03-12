import os
from flask import Flask, send_file, abort

app = Flask(__name__)

@app.route('/<path:file_name>')
def serve_html(file_name):
    # Get the full path of the HTML file
    full_path = os.path.join(app.root_path, file_name)

    # Check if the file exists
    if os.path.isfile(full_path) and file_name.endswith('.html'):
        # Return the HTML file
        return send_file(full_path)
    else:
        # Return a 404 error if the file doesn't exist or is not an HTML file
        abort(404)

if __name__ == '__main__':
    app.run(debug=True)