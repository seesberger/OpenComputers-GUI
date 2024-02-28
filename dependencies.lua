--This file can be used by adding it as a lib in Git-tool:
--require = ("dependencies") -> already implemented in InstallDependencies
--If a a Table is given the Name "Script" it will automatically run the contained Function "InstallScript" while installing dependencies

dependencies = {
    --Not the best thing at the moment, but can be used to move things arround
    dependencyInstall = {
        Name = "Script",
        InstallScript = function(temporaryPath, libPath)
            --FIXME: Recursively call git tool to install automatically from repo!
            print("Please make shure you have installed the Seesberger/OpenComputers-GUI")
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