-- scaffold geniefile for luagit2

luagit2_script = path.getabsolute(path.getdirectory(_SCRIPT))
luagit2_root = path.join(luagit2_script, "luagit2")

luagit2_includedirs = {
	path.join(luagit2_script, "config"),
	luagit2_root,
}

luagit2_libdirs = {}
luagit2_links = {}
luagit2_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { luagit2_includedirs }
	end,

	_add_defines = function()
		defines { luagit2_defines }
	end,

	_add_libdirs = function()
		libdirs { luagit2_libdirs }
	end,

	_add_external_links = function()
		links { luagit2_links }
	end,

	_add_self_links = function()
		links { "luagit2" }
	end,

	_create_projects = function()

project "luagit2"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		luagit2_includedirs,
	}

	defines {}

	files {
		path.join(luagit2_script, "config", "**.h"),
		path.join(luagit2_root, "**.h"),
		path.join(luagit2_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
