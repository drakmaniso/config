# Defined in /tmp/fish.UTjWOd/fish_prompt.fish @ line 2
function fish_prompt --description 'Prints left prompt'
	set -l last_status  $status
    #set -l glyph        "❯"
    #set -l glyph        "\u276f"
    #set -l glyph        "\ue0b0"
    set -l glyph        ""
    set -l glyph_color  (set_color normal; set_color magenta)
    set -l pwd          (prompt_pwd)
    set -l pwd_color    (set_color -b magenta; set_color black)

    if test (id -u "$USER") -eq 0
        set glyph "#"
    end

    if test "$last_status" -ne 0
        set pwd_color (set_color red)
    end

    if git_is_repo
        if git_is_staged
            set glyph_color  (set_color normal; set_color green)
            set pwd_color    (set_color -b green; set_color black)
        else if git_is_stashed
            set glyph_color  (set_color normal; set_color yellow)
            set pwd_color    (set_color -b yellow; set_color black)
        end
    end

    printf "$pwd_color$pwd$glyph_color$glyph "
end
