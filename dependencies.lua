--This file can be used by adding it as a lib in Git-tool:
--require = ("dependencies")
--to run the install script call dependencies:installScript([folder used for storing temporary files], <Library folder; default: /lib>)

--The entries shoud be accepted by just adding them. Just look at the template how to add things.

dependencies = {
    dep1 = {
    Name = "",
    Url = "",
    InstallTarget = ""
    },
    --Not the best thing at the moment, but can be used to move things arround
    dependencyInstall = {
        Name = "Script",
        InstallScript = function(temporaryPath, libPath)
            libPath = libPath or "/lib/"
            os.execute("mkdir "..libPath.."FormatModules")--not shure if useless, keeping for redundancy
            os.execute("cp -r "..temporaryPath.."* "..libPath)
        end
    }
}

return dependencies

--[[
    Template:
    dep1 = {
        Name = "",
        Url = "",
        InstallTarget = ""
    },
    dependencyInstall = {
        Name = "Script",
        InstallScript = function(temporaryPath, targetPath)
            os.execute("")
        end
    }
]]