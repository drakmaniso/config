# Defined in /tmp/fish.UTjWOd/fish_prompt.fish @ line 2
function fish_prompt --description 'Prints left prompt'
	set -l last_status  $status
    #set -l glyph        "❯"
	#set -l glyph        "\u276f"
	#set -l glyph        "\ue0b0"
	set -l glyph        ""
	#set -l glyph        "\u258c"
    set -l glyph_color  (set_color normal; set_color blue)
    set -l pwd          (prompt_pwd)
    set -l pwd_color    (set_color -b blue; set_color black)

    if git_is_repo
        if git_is_staged || git_is_dirty
            set glyph_color  (set_color normal; set_color yellow)
            set pwd_color    (set_color -b yellow; set_color black)
        else 
            set glyph_color  (set_color normal; set_color green)
            set pwd_color    (set_color -b green; set_color black)
        end
    end

    if test "$last_status" -ne 0
        set pwd_color (set_color -b red; set_color black)
        set glyph_color  (set_color normal; set_color red)
    end

    if test (id -u "$USER") -eq 0
        set glyph "#"
    end

	printf "$pwd_color$pwd$glyph_color$glyph "
	#printf "$pwd_color$pwd $glyph_color "
end
