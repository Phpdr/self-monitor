from flask import Flask, render_template, request, redirect, session

app = Flask(__name__)
app.secret_key = "monitor_self_secret"

USERNAME = "selfbnv"
PASSWORD = "@102030hm"

@app.route("/", methods=["GET","POST"])
def login():

    if request.method == "POST":

        user = request.form.get("username")
        pwd = request.form.get("password")

        if user == USERNAME and pwd == PASSWORD:
            session["logged"] = True
            return redirect("/admin")

    return render_template("login.html")


@app.route("/admin")
def admin():

    if not session.get("logged"):
        return redirect("/")

    return render_template("admin.html")


@app.route("/logout")
def logout():

    session.clear()
    return redirect("/")


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)