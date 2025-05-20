-- This Pandoc filter modifies the output based on the language set in the document.
-- It replaces specific keywords in Div identifiers with their corresponding translations
-- and adds a custom LaTeX command for big color blocks.
-- The filter uses a dictionary to map keywords to their translations in different languages.


-- You can add more languages by adding them to the dictionary below.
local dict = {
    ["toc-tile-text"] = {
        ["pl-PL"] = "Spis treści",
        ["en-US"] = "Table of contents"
    },
    ["references-tile-text"] = {
        ["pl-PL"] = "Bibliografia",
        ["en-US"] = "References"
    },
    ["questions-tile-text"] = {
        ["pl-PL"] = "Pytania",
        ["en-US"] = "Questions"
    },
    ["thank-you-tile-text"] = {
        ["pl-PL"] = "Dziękuję za uwagę",
        ["en-US"] = "Thank you for your attention"
    }
}


local lang = "en-US" -- default language


-- Function to read the language from the document's metadata
-- and then call the langfilter function to replace keywords
-- with their translations.
-- It also adds a custom LaTeX command for big color blocks.
function Pandoc(doc)
  if doc.meta.lang then
    lang = pandoc.utils.stringify(doc.meta.lang)
  end

  doc.meta = add_big_color(doc.meta)

  for i, blk in ipairs(doc.blocks) do
    local replaced = langfilter(blk, lang)
    if replaced then
      doc.blocks[i] = replaced
    end
  end

  return doc
end


-- Function to add a custom LaTeX command for big color blocks
function add_big_color(meta)
    local header_code = [[
    \usepackage{etoolbox}
    \newcommand{\bigcolorblock}[1]{%
    \begin{center}
    \usebeamerfont*{frametitle}%
    \usebeamercolor[bg]{frametitle}%
    #1
    \end{center}
    }
    ]]

    meta['header-includes'] = meta['header-includes'] or {}
    table.insert(meta['header-includes'], pandoc.RawBlock('latex', header_code))

    return meta
end


-- Function to replace keywords in Div identifiers with their translations
function langfilter(el, lang)
    if el.t ~= "Div" then
        return nil
    end

    if dict[el.identifier] then
        local keyword = el.identifier
        local subdict = dict[keyword]
        local text = subdict[lang]
        
        if not text then
            io.stderr:write("No translation found for '" .. keyword .. "' in " .. lang .. "\n")
            return nil
        end
        
        print("Replacing keyword with translation: " .. keyword)
        
        -- handle allowframebreaks attribute
        local attr = {}
        if el.classes:includes("allowframebreaks") then
            table.insert(attr, "allowframebreaks")
        end

        -- handle heading classes
        if el.classes:includes("heading1") then
            return pandoc.Header(1, pandoc.Inlines(pandoc.Str(text)), pandoc.Attr("", attr))

        elseif el.classes:includes("heading2") then
            return pandoc.Header(2, pandoc.Inlines(pandoc.Str(text)), pandoc.Attr("", attr))

        -- handle big-color classes
        elseif el.classes:includes("big-color") then
            return pandoc.Para{
                pandoc.RawInline("latex", "\\bigcolorblock{" .. text .. "}")
            }

        -- default case
        else 
            return pandoc.Para{pandoc.Str(text)}
        end 
    end
end
