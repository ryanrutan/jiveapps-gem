module Jiveapps::Command
  class Help < Base

    def index
      display "jiveapps gem: v#{Jiveapps::VERSION}"
      display ""
      display "=== Summary"
      display "The \"jiveapps\" program is a command line tool for building and hosting Jive App front-ends."
      display ""
      display "=== General Commands"
      display ""
      display "help                                       # show this usage"
      display ""
      display "list                                       # list your apps"
      display "create <app_name>                          # create a new app"
      display "clone <app_name>                           # clone the repository of an existing app"
      display ""
      display "=== App Specific Commands"
      display "    NOTE: run these within app directory, or pass app name with: --app <app_name>"
      display ""
      display "info                                       # display information about an app"
      display "install                                    # install an app on the sandbox (if you removed it, you can reinstall)"
      display "livedev                                    # start livedev mode"
      display "delete                                     # delete app"
      display ""
      display "keys                                       # show your user\'s public keys"
      display "keys:add [<path to keyfile>]               # add a public key. optionally include path"
      display "keys:remove <keyname>                      # remove a key by name (user@host)"
      display ""
      display "oauth                                      # show the oauth services for this app"
      display "oauth:add <service_name> <key> <secret>    # add an oauth service for this app"
      display "oauth:remove <service_name>                # remove an oauth service for this app"
      display ""
      display "sharing                                    # list collaborators"
      display "sharing:add <username>                     # add a collaborator"
      display "sharing:remove <username>                  # remove a collaborator"
      display ""
      display "=== Simple Workflow Example:"
      display ""
      display "$ jiveapps create myapp                    # create a new app named \"myapp\""
      display "$ cd myapp                                 # switch into app\'s directory"
      display ""
      display " ... develop your app ..."
      display ""
      display "$ git add .                                # stage all files for commit"
      display "$ git commit -m \"some updates to my app\"   # commit to your local git repository"
      display "$ git push jiveapps master                 # push updates to jive"
    end

  end
end
