command: "canvas-users.widget/getUsers.sh"
# command: "ls"
# the refresh frequency in milliseconds
refreshFrequency: 600000            # Update every 10 minutes

# render gets called after the shell command has executed. The command's output
# is passed in as a string. Whatever it returns will get rendered as HTML.
render: (output) -> """
  <p>#{output}</p>
"""

# the CSS style for this widget, written using Stylus
# (http://learnboost.github.io/stylus/)
style: """
  color: #fff
  font-family: Avenir Next
  font-weight: 500
  line-height: 1.5
  top: 50px
  left: 50px
  width: 340px

  h1
    font-size: 20px
    margin: 0px 0px 0px 0px
"""
