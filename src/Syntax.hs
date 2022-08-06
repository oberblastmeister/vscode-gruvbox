module Syntax where

import Palette
import Types

new :: Palette -> [Color]
new palette =
  [ -- Syntax{{{
    C
      { name = "Source",
        scope = "source",
        settings = def {foreground = Just palette.fg1}
      },
    C
      { name = "Keyword",
        scope =
          "keyword, storage.type.function, storage.type.class, storage.type.enum, storage.type.interface, storage.type.property, keyword.operator.new, keyword.operator.expression, keyword.operator.new, keyword.operator.delete, storage.type.extends",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "Function Keyword",
        scope = "keyword.other.fn",
        settings = def {foreground = Just palette.aqua}
      },
    C
      { name = "Function Keyword",
        scope = "keyword.other.fn.rust",
        settings = def {foreground = Just palette.red}
      },
    C
      { name = "Debug",
        scope = "keyword.other.debugger",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "Storage",
        scope =
          "storage, modifier, keyword.var, entity.name.tag, keyword.control.case, keyword.control.switch",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Operator",
        scope = "keyword.operator, storage.type.operator",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "String",
        scope =
          "string, punctuation.definition.string.end, punctuation.definition.string.begin, punctuation.definition.string.template.begin, punctuation.definition.string.template.end",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Attribute",
        scope = "entity.other.attribute-name",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "String Escape",
        scope =
          "constant.character.escape, punctuation.quasi.element, punctuation.definition.template-expression, punctuation.section.embedded, storage.type.format, constant.other.placeholder, constant.other.placeholder, variable.interpolation",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Function",
        scope =
          "entity.name.function, support.function, meta.function, meta.function-call, meta.definition.method",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Preproc",
        scope =
          "keyword.control.at-rule, keyword.control.import, keyword.control.export, storage.type.namespace, punctuation.decorator, keyword.control.directive, keyword.preprocessor, punctuation.definition.preprocessor, punctuation.definition.directive, keyword.other.import, keyword.other.package, entity.name.type.namespace, entity.name.scope-resolution, keyword.other.using, keyword.package, keyword.import, keyword.map",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Annotation",
        scope = "storage.type.annotation",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Label",
        scope = "entity.name.label, constant.other.label",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Modules",
        scope =
          "support.module, support.node, support.other.module, support.type.object.module, entity.name.type.module, entity.name.type.class.module, keyword.control.module",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Type",
        scope = "storage.type, support.type, entity.name.type, keyword.type",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Class",
        scope =
          "entity.name.type.class, support.class, entity.name.class, entity.other.inherited-class, storage.class",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "Number",
        scope = "constant.numeric",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    C
      { name = "Boolean",
        scope = "constant.language.boolean",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    C
      { name = "Macro",
        scope = "entity.name.function.preprocessor",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    C
      { name = "Special identifier",
        scope =
          "variable.language.this, variable.language.self, variable.language.super, keyword.other.this, variable.language.special, constant.language.null, constant.language.undefined, constant.language.nan",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    C
      { name = "Constant",
        scope = "constant.language, support.constant",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    C
      { name = "Identifier",
        scope = "variable, support.variable, meta.definition.variable",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "Property",
        scope =
          "variable.object.property, support.variable.property, variable.other.property, variable.other.object.property, variable.other.enummember, variable.other.member, meta.object-literal.key, entity.other.attribute-name",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "Delimiter",
        scope = "punctuation, meta.brace, meta.delimiter, meta.bracket",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    -- }}}
    -- Markdown{{{
    C
      { name = "Markdown heading1",
        scope = "heading.1.markdown, markup.heading.setext.1.markdown",
        settings =
          def
            { foreground = Just palette.red,
              fontStyle = Just "bold"
            }
      },
    C
      { name = "Markdown heading2",
        scope = "heading.2.markdown, markup.heading.setext.2.markdown",
        settings =
          def
            { foreground = Just palette.orange,
              fontStyle = Just "bold"
            }
      },
    C
      { name = "Markdown heading3",
        scope = "heading.3.markdown",
        settings =
          def
            { foreground = Just palette.yellow,
              fontStyle = Just "bold"
            }
      },
    C
      { name = "Markdown heading4",
        scope = "heading.4.markdown",
        settings =
          def
            { foreground = Just palette.green,
              fontStyle = Just "bold"
            }
      },
    C
      { name = "Markdown heading5",
        scope = "heading.5.markdown",
        settings =
          def
            { foreground = Just palette.blue,
              fontStyle = Just "bold"
            }
      },
    C
      { name = "Markdown heading6",
        scope = "heading.6.markdown",
        settings =
          def
            { foreground = Just palette.purple,
              fontStyle = Just "bold"
            }
      },
    C
      { name = "Markdown heading delimiter",
        scope = "punctuation.definition.heading.markdown",
        settings =
          def
            { foreground = Just palette.grey1,
              fontStyle = Just "regular"
            }
      },
    C
      { name = "Markdown link",
        scope =
          "string.other.link.title.markdown, constant.other.reference.link.markdown, string.other.link.description.markdown",
        settings =
          def
            { foreground = Just palette.purple,
              fontStyle = Just "regular"
            }
      },
    C
      { name = "Markdown link text",
        scope =
          "markup.underline.link.image.markdown, markup.underline.link.markdown",
        settings =
          def
            { foreground = Just palette.green,
              fontStyle = Just "underline"
            }
      },
    C
      { name = "Markdown delimiter",
        scope =
          "punctuation.definition.string.begin.markdown, punctuation.definition.string.end.markdown, punctuation.definition.italic.markdown, punctuation.definition.quote.begin.markdown, punctuation.definition.metadata.markdown, punctuation.separator.key-value.markdown, punctuation.definition.constant.markdown",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "Markdown bold delimiter",
        scope = "punctuation.definition.bold.markdown",
        settings =
          def
            { foreground = Just palette.grey1,
              fontStyle = Just "regular"
            }
      },
    C
      { name = "Markdown separator delimiter",
        scope =
          "meta.separator.markdown, punctuation.definition.constant.begin.markdown, punctuation.definition.constant.end.markdown",
        settings =
          def
            { foreground = Just palette.grey1,
              fontStyle = Just "bold"
            }
      },
    C
      { name = "Markdown italic",
        scope = "markup.italic",
        settings =
          def
            { fontStyle = Just "italic"
            }
      },
    C
      { name = "Markdown bold",
        scope = "markup.bold",
        settings =
          def
            { fontStyle = Just "bold"
            }
      },
    C
      { name = "Markdown bold italic",
        scope = "markup.bold markup.italic, markup.italic markup.bold",
        settings =
          def
            { fontStyle = Just "italic bold"
            }
      },
    C
      { name = "Markdown code delimiter",
        scope =
          "punctuation.definition.markdown, punctuation.definition.raw.markdown",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Markdown code type",
        scope = "fenced_code.block.language",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Markdown code block",
        scope =
          "markup.fenced_code.block.markdown, markup.inline.raw.string.markdown",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Markdown list mark",
        scope = "punctuation.definition.list.begin.markdown",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    -- }}}
    -- reStructuredText{{{
    C
      { name = "reStructuredText heading",
        scope = "punctuation.definition.heading.restructuredtext",
        settings =
          def
            { foreground = Just palette.orange,
              fontStyle = Just "bold"
            }
      },
    C
      { name = "reStructuredText delimiter",
        scope =
          "punctuation.definition.field.restructuredtext, punctuation.separator.key-value.restructuredtext, punctuation.definition.directive.restructuredtext, punctuation.definition.constant.restructuredtext, punctuation.definition.italic.restructuredtext, punctuation.definition.table.restructuredtext",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "reStructuredText delimiter bold",
        scope = "punctuation.definition.bold.restructuredtext",
        settings =
          def
            { foreground = Just palette.grey1,
              fontStyle = Just "regular"
            }
      },
    C
      { name = "reStructuredText aqua",
        scope =
          "entity.name.tag.restructuredtext, punctuation.definition.link.restructuredtext, punctuation.definition.raw.restructuredtext, punctuation.section.raw.restructuredtext",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "reStructuredText purple",
        scope = "constant.other.footnote.link.restructuredtext",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    C
      { name = "reStructuredText red",
        scope = "support.directive.restructuredtext",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "reStructuredText green",
        scope =
          "entity.name.directive.restructuredtext, markup.raw.restructuredtext, markup.raw.inner.restructuredtext, string.other.link.title.restructuredtext",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    -- }}}
    -- LaTex{{{
    C
      { name = "LaTex delimiter",
        scope =
          "punctuation.definition.function.latex, punctuation.definition.function.tex, punctuation.definition.keyword.latex, constant.character.newline.tex, punctuation.definition.keyword.tex",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "LaTex red",
        scope = "support.function.be.latex",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "LaTex orange",
        scope =
          "support.function.section.latex, keyword.control.table.cell.latex, keyword.control.table.newline.latex",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "LaTex yellow",
        scope =
          "support.class.latex, variable.parameter.latex, variable.parameter.function.latex, variable.parameter.definition.label.latex, constant.other.reference.label.latex",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "LaTex purple",
        scope = "keyword.control.preamble.latex",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Html/Xml{{{
    C
      { name = "Html grey",
        scope = "punctuation.separator.namespace.xml",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "Html orange",
        scope =
          "entity.name.tag.html, entity.name.tag.xml, entity.name.tag.localname.xml",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Html yellow",
        scope =
          "entity.other.attribute-name.html, entity.other.attribute-name.xml, entity.other.attribute-name.localname.xml",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Html green",
        scope =
          "string.quoted.double.html, string.quoted.single.html, punctuation.definition.string.begin.html, punctuation.definition.string.end.html, punctuation.separator.key-value.html, punctuation.definition.string.begin.xml, punctuation.definition.string.end.xml, string.quoted.double.xml, string.quoted.single.xml, punctuation.definition.tag.begin.html, punctuation.definition.tag.end.html, punctuation.definition.tag.xml, meta.tag.xml, meta.tag.preprocessor.xml, meta.tag.other.html, meta.tag.block.any.html, meta.tag.inline.any.html",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Html purple",
        scope = "variable.language.documentroot.xml, meta.tag.sgml.doctype.xml",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Proto{{{
    C
      { name = "Proto yellow",
        scope = "storage.type.proto",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Proto green",
        scope =
          "string.quoted.double.proto.syntax, string.quoted.single.proto.syntax, string.quoted.double.proto, string.quoted.single.proto",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Proto aqua",
        scope = "entity.name.class.proto, entity.name.class.message.proto",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    -- }}}
    -- CSS{{{
    C
      { name = "CSS grey",
        scope =
          "punctuation.definition.entity.css, punctuation.separator.key-value.css, punctuation.terminator.rule.css, punctuation.separator.list.comma.css",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "CSS red",
        scope = "entity.other.attribute-name.class.css",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "CSS orange",
        scope = "keyword.other.unit",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "CSS yellow",
        scope =
          "entity.other.attribute-name.pseudo-class.css, entity.other.attribute-name.pseudo-element.css",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "CSS green",
        scope =
          "string.quoted.single.css, string.quoted.double.css, support.constant.property-value.css, meta.property-value.css, punctuation.definition.string.begin.css, punctuation.definition.string.end.css, constant.numeric.css, support.constant.font-name.css, variable.parameter.keyframe-list.css",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "CSS aqua",
        scope = "support.type.property-name.css",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "CSS blue",
        scope = "support.type.vendored.property-name.css",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "CSS purple",
        scope =
          "entity.name.tag.css, entity.other.keyframe-offset.css, punctuation.definition.keyword.css, keyword.control.at-rule.keyframes.css, meta.selector.css",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- SASS{{{
    C
      { name = "SASS grey",
        scope =
          "punctuation.definition.entity.scss, punctuation.separator.key-value.scss, punctuation.terminator.rule.scss, punctuation.separator.list.comma.scss",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "SASS orange",
        scope = "keyword.control.at-rule.keyframes.scss",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "SASS yellow",
        scope =
          "punctuation.definition.interpolation.begin.bracket.curly.scss, punctuation.definition.interpolation.end.bracket.curly.scss",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "SASS green",
        scope =
          "punctuation.definition.string.begin.scss, punctuation.definition.string.end.scss, string.quoted.double.scss, string.quoted.single.scss, constant.character.css.sass, meta.property-value.scss",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "SASS purple",
        scope =
          "keyword.control.at-rule.include.scss, keyword.control.at-rule.use.scss, keyword.control.at-rule.mixin.scss, keyword.control.at-rule.extend.scss, keyword.control.at-rule.import.scss",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Stylus{{{
    C
      { name = "Stylus white",
        scope = "meta.function.stylus",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "Stylus yellow",
        scope = "entity.name.function.stylus",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    -- }}}
    -- JavaScript{{{
    C
      { name = "JavaScript white",
        scope = "string.unquoted.js",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "JavaScript grey",
        scope =
          "punctuation.accessor.js, punctuation.separator.key-value.js, punctuation.separator.label.js, keyword.operator.accessor.js",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "JavaScript red",
        scope = "punctuation.definition.block.tag.jsdoc",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "JavaScript orange",
        scope = "storage.type.js, storage.type.function.arrow.js",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    -- }}}
    -- JSX{{{
    C
      { name = "JSX white",
        scope = "JSXNested",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "JSX green",
        scope =
          "punctuation.definition.tag.jsx, entity.other.attribute-name.jsx, punctuation.definition.tag.begin.js.jsx, punctuation.definition.tag.end.js.jsx, entity.other.attribute-name.js.jsx",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    -- }}}
    -- TypeScript{{{
    C
      { name = "TypeScript white",
        scope = "entity.name.type.module.ts",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "TypeScript grey",
        scope =
          "keyword.operator.type.annotation.ts, punctuation.accessor.ts, punctuation.separator.key-value.ts",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "TypeScript green",
        scope =
          "punctuation.definition.tag.directive.ts, entity.other.attribute-name.directive.ts",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "TypeScript aqua",
        scope =
          "entity.name.type.ts, entity.name.type.interface.ts, entity.other.inherited-class.ts, entity.name.type.alias.ts, entity.name.type.class.ts, entity.name.type.enum.ts",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "TypeScript orange",
        scope =
          "storage.type.ts, storage.type.function.arrow.ts, storage.type.type.ts",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "TypeScript blue",
        scope = "entity.name.type.module.ts",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "TypeScript purple",
        scope =
          "keyword.control.import.ts, keyword.control.export.ts, storage.type.namespace.ts",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- TSX{{{
    C
      { name = "TSX white",
        scope = "entity.name.type.module.tsx",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "TSX grey",
        scope =
          "keyword.operator.type.annotation.tsx, punctuation.accessor.tsx, punctuation.separator.key-value.tsx",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "TSX green",
        scope =
          "punctuation.definition.tag.directive.tsx, entity.other.attribute-name.directive.tsx, punctuation.definition.tag.begin.tsx, punctuation.definition.tag.end.tsx, entity.other.attribute-name.tsx",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "TSX aqua",
        scope =
          "entity.name.type.tsx, entity.name.type.interface.tsx, entity.other.inherited-class.tsx, entity.name.type.alias.tsx, entity.name.type.class.tsx, entity.name.type.enum.tsx",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "TSX blue",
        scope = "entity.name.type.module.tsx",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "TSX purple",
        scope =
          "keyword.control.import.tsx, keyword.control.export.tsx, storage.type.namespace.tsx",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    C
      { name = "TSX orange",
        scope =
          "storage.type.tsx, storage.type.function.arrow.tsx, storage.type.type.tsx, support.class.component.tsx",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    -- }}}
    -- CoffeeScript{{{
    C
      { name = "CoffeeScript orange",
        scope = "storage.type.function.coffee",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    -- }}}
    -- PureScript{{{
    C
      { name = "PureScript white",
        scope = "meta.type-signature.purescript",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "PureScript orange",
        scope =
          "keyword.other.double-colon.purescript, keyword.other.arrow.purescript, keyword.other.big-arrow.purescript",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "PureScript yellow",
        scope = "entity.name.function.purescript",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "PureScript green",
        scope =
          "string.quoted.single.purescript, string.quoted.double.purescript, punctuation.definition.string.begin.purescript, punctuation.definition.string.end.purescript, string.quoted.triple.purescript, entity.name.type.purescript",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "PureScript purple",
        scope = "support.other.module.purescript",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Dart{{{
    C
      { name = "Dart grey",
        scope = "punctuation.dot.dart",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "Dart orange",
        scope = "storage.type.primitive.dart",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Dart yellow",
        scope = "support.class.dart",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Dart green",
        scope =
          "entity.name.function.dart, string.interpolated.single.dart, string.interpolated.double.dart",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Dart blue",
        scope = "variable.language.dart",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "Dart purple",
        scope = "keyword.other.import.dart, storage.type.annotation.dart",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Pug{{{
    C
      { name = "Pug red",
        scope = "entity.other.attribute-name.class.pug",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "Pug orange",
        scope = "storage.type.function.pug",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Pug aqua",
        scope = "entity.other.attribute-name.tag.pug",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Pug purple",
        scope = "entity.name.tag.pug, storage.type.import.include.pug",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- C{{{
    C
      { name = "C white",
        scope =
          "meta.function-call.c, storage.modifier.array.bracket.square.c, meta.function.definition.parameters.c",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "C grey",
        scope =
          "punctuation.separator.dot-access.c, constant.character.escape.line-continuation.c",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "C red",
        scope =
          "keyword.control.directive.include.c, punctuation.definition.directive.c, keyword.control.directive.pragma.c, keyword.control.directive.line.c, keyword.control.directive.define.c, keyword.control.directive.conditional.c, keyword.control.directive.diagnostic.error.c, keyword.control.directive.undef.c, keyword.control.directive.conditional.ifdef.c, keyword.control.directive.endif.c, keyword.control.directive.conditional.ifndef.c, keyword.control.directive.conditional.if.c, keyword.control.directive.else.c",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "C orange",
        scope = "punctuation.separator.pointer-access.c",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "C aqua",
        scope = "variable.other.member.c",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    -- }}}
    -- C++{{{
    C
      { name = "C++ white",
        scope =
          "meta.function-call.cpp, storage.modifier.array.bracket.square.cpp, meta.function.definition.parameters.cpp, meta.body.function.definition.cpp",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "C++ grey",
        scope =
          "punctuation.separator.dot-access.cpp, constant.character.escape.line-continuation.cpp",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "C++ red",
        scope =
          "keyword.control.directive.include.cpp, punctuation.definition.directive.cpp, keyword.control.directive.pragma.cpp, keyword.control.directive.line.cpp, keyword.control.directive.define.cpp, keyword.control.directive.conditional.cpp, keyword.control.directive.diagnostic.error.cpp, keyword.control.directive.undef.cpp, keyword.control.directive.conditional.ifdef.cpp, keyword.control.directive.endif.cpp, keyword.control.directive.conditional.ifndef.cpp, keyword.control.directive.conditional.if.cpp, keyword.control.directive.else.cpp, storage.type.namespace.definition.cpp, keyword.other.using.directive.cpp, storage.type.struct.cpp",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "C++ orange",
        scope =
          "punctuation.separator.pointer-access.cpp, punctuation.section.angle-brackets.begin.template.call.cpp, punctuation.section.angle-brackets.end.template.call.cpp",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "C++ aqua",
        scope = "variable.other.member.cpp",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    -- }}}
    -- C#{{{
    C
      { name = "C# red",
        scope = "keyword.other.using.cs",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "C# yellow",
        scope =
          "keyword.type.cs, constant.character.escape.cs, punctuation.definition.interpolation.begin.cs, punctuation.definition.interpolation.end.cs",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "C# green",
        scope =
          "string.quoted.double.cs, string.quoted.single.cs, punctuation.definition.string.begin.cs, punctuation.definition.string.end.cs",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "C# aqua",
        scope = "variable.other.object.property.cs",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "C# purple",
        scope = "entity.name.type.namespace.cs",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- F#{{{
    C
      { name = "F# white",
        scope = "keyword.symbol.fsharp, constant.language.unit.fsharp",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "F# yellow",
        scope = "keyword.format.specifier.fsharp, entity.name.type.fsharp",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "F# green",
        scope =
          "string.quoted.double.fsharp, string.quoted.single.fsharp, punctuation.definition.string.begin.fsharp, punctuation.definition.string.end.fsharp",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "F# blue",
        scope = "entity.name.section.fsharp",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "F# purple",
        scope = "support.function.attribute.fsharp",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Java{{{
    C
      { name = "Java grey",
        scope = "punctuation.separator.java, punctuation.separator.period.java",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "Java red",
        scope = "keyword.other.import.java, keyword.other.package.java",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "Java orange",
        scope = "storage.type.function.arrow.java, keyword.control.ternary.java",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Java aqua",
        scope = "variable.other.property.java",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Java purple",
        scope =
          "variable.language.wildcard.java, storage.modifier.import.java, storage.type.annotation.java, punctuation.definition.annotation.java, storage.modifier.package.java, entity.name.type.module.java",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Kotlin{{{
    C
      { name = "Kotlin red",
        scope = "keyword.other.import.kotlin",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "Kotlin orange",
        scope = "storage.type.kotlin",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Kotlin aqua",
        scope = "constant.language.kotlin",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Kotlin purple",
        scope = "entity.name.package.kotlin, storage.type.annotation.kotlin",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Scala{{{
    C
      { name = "Scala purple",
        scope = "entity.name.package.scala",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    C
      { name = "Scala blue",
        scope = "constant.language.scala",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "Scala aqua",
        scope = "entity.name.import.scala",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Scala green",
        scope =
          "string.quoted.double.scala, string.quoted.single.scala, punctuation.definition.string.begin.scala, punctuation.definition.string.end.scala, string.quoted.double.interpolated.scala, string.quoted.single.interpolated.scala, string.quoted.triple.scala",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Scala yellow",
        scope = "entity.name.class, entity.other.inherited-class.scala",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Scala orange",
        scope = "keyword.declaration.stable.scala, keyword.other.arrow.scala",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Scala red",
        scope = "keyword.other.import.scala",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    -- }}}
    -- Groovy{{{
    C
      { name = "Groovy white",
        scope =
          "keyword.operator.navigation.groovy, meta.method.body.java, meta.definition.method.groovy, meta.definition.method.signature.java",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "Scala grey",
        scope = "punctuation.separator.groovy",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "Scala red",
        scope =
          "keyword.other.import.groovy, keyword.other.package.groovy, keyword.other.import.static.groovy",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "Groovy orange",
        scope = "storage.type.def.groovy",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Groovy green",
        scope = "variable.other.interpolated.groovy, meta.method.groovy",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Groovy aqua",
        scope = "storage.modifier.import.groovy, storage.modifier.package.groovy",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Groovy purple",
        scope = "storage.type.annotation.groovy",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Go{{{
    C
      { name = "Go red",
        scope = "keyword.type.go",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "Go aqua",
        scope = "entity.name.package.go",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Go purple",
        scope = "keyword.import.go, keyword.package.go",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Rust{{{
    C
      { name = "Rust white",
        scope = "entity.name.type.mod.rust",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "Rust grey",
        scope = "keyword.operator.path.rust, keyword.operator.member-access.rust",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "Rust orange",
        scope = "storage.type.rust",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Rust aqua",
        scope = "meta.attribute.rust",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Rust purple",
        scope =
          "variable.language.rust",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Swift{{{
    C
      { name = "Swift white",
        scope = "meta.function-call.swift, support.function.any-method.swift",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "Swift aqua",
        scope = "support.variable.swift",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    -- }}}
    -- PHP{{{
    C
      { name = "PHP white",
        scope = "keyword.operator.class.php",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "PHP orange",
        scope = "storage.type.trait.php",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "PHP aqua",
        scope = "constant.language.php, support.other.namespace.php",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "PHP blue",
        scope =
          "storage.type.modifier.access.control.public.cpp, storage.type.modifier.access.control.private.cpp",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "PHP purple",
        scope = "keyword.control.import.include.php, storage.type.php",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Python{{{
    C
      { name = "Python white",
        scope = "meta.function-call.arguments.python",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "Python grey",
        scope =
          "punctuation.definition.decorator.python, punctuation.separator.period.python",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "Python aqua",
        scope = "constant.language.python",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Python purple",
        scope =
          "keyword.control.import.python, keyword.control.import.from.python",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Lua{{{
    C
      { name = "Lua aqua",
        scope = "constant.language.lua",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Lua blue",
        scope = "entity.name.class.lua",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    -- }}}
    -- Ruby{{{
    C
      { name = "Ruby white",
        scope = "meta.function.method.with-arguments.ruby",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "Ruby grey",
        scope = "punctuation.separator.method.ruby",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "Ruby orange",
        scope = "keyword.control.pseudo-method.ruby, storage.type.variable.ruby",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Ruby green",
        scope = "keyword.other.special-method.ruby",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Ruby purple",
        scope =
          "keyword.control.module.ruby, punctuation.definition.constant.ruby",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    C
      { name = "Ruby yellow",
        scope =
          "string.regexp.character-class.ruby,string.regexp.interpolated.ruby,punctuation.definition.character-class.ruby,string.regexp.group.ruby, punctuation.section.regexp.ruby, punctuation.definition.group.ruby",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Ruby blue",
        scope = "variable.other.constant.ruby",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    -- }}}
    -- Haskell{{{
    C
      { name = "Haskell yellow",
        scope = "storage.type.haskell",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Haskell green",
        scope =
          "constant.other.haskell, string.quoted.double.haskell, string.quoted.single.haskell, punctuation.definition.string.begin.haskell, punctuation.definition.string.end.haskell",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Haskell function",
        scope = "entity.name.function.haskell",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Haskell aqua",
        scope = "entity.name.namespace, meta.preprocessor.haskell",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    -- }}}
    -- Julia{{{
    C
      { name = "Julia red",
        scope = "keyword.control.import.julia, keyword.control.export.julia",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "Julia orange",
        scope = "keyword.storage.modifier.julia",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Julia aqua",
        scope = "constant.language.julia",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Julia purple",
        scope = "support.function.macro.julia",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Elm{{{
    C
      { name = "Elm white",
        scope = "keyword.other.period.elm",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "Elm yellow",
        scope = "storage.type.elm",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    -- }}}
    -- R{{{
    C
      { name = "R orange",
        scope = "keyword.other.r",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "R green",
        scope = "entity.name.function.r, variable.function.r",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "R aqua",
        scope = "constant.language.r",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "R purple",
        scope = "entity.namespace.r",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Erlang{{{
    C
      { name = "Erlang grey",
        scope =
          "punctuation.separator.module-function.erlang, punctuation.section.directive.begin.erlang",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "Erlang red",
        scope =
          "keyword.control.directive.erlang, keyword.control.directive.define.erlang",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "Erlang yellow",
        scope = "entity.name.type.class.module.erlang",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Erlang green",
        scope =
          "string.quoted.double.erlang, string.quoted.single.erlang, punctuation.definition.string.begin.erlang, punctuation.definition.string.end.erlang",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Erlang purple",
        scope =
          "keyword.control.directive.export.erlang, keyword.control.directive.module.erlang, keyword.control.directive.import.erlang, keyword.control.directive.behaviour.erlang",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Elixir{{{
    C
      { name = "Elixir aqua",
        scope =
          "variable.other.readwrite.module.elixir, punctuation.definition.variable.elixir",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Elixir blue",
        scope = "constant.language.elixir",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "Elixir purple",
        scope = "keyword.control.module.elixir",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- OCaml{{{
    C
      { name = "OCaml white",
        scope = "entity.name.type.value-signature.ocaml",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "OCaml orange",
        scope = "keyword.other.ocaml",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "OCaml aqua",
        scope = "constant.language.variant.ocaml",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    -- }}}
    -- Perl{{{
    C
      { name = "Perl red",
        scope = "storage.type.sub.perl, storage.type.declare.routine.perl",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    -- }}}
    -- Common Lisp{{{
    C
      { name = "Lisp white",
        scope = "meta.function.lisp",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "Lisp red",
        scope = "storage.type.function-type.lisp",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "Lisp green",
        scope = "keyword.constant.lisp",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Lisp aqua",
        scope = "entity.name.function.lisp",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    -- }}}
    -- Clojure{{{
    C
      { name = "Clojure green",
        scope =
          "constant.keyword.clojure, support.variable.clojure, meta.definition.variable.clojure",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Clojure purple",
        scope = "entity.global.clojure",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    C
      { name = "Clojure blue",
        scope = "entity.name.function.clojure",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    -- }}}
    -- Shell{{{
    C
      { name = "Shell white",
        scope = "meta.scope.if-block.shell, meta.scope.group.shell",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "Shell yellow",
        scope = "support.function.builtin.shell, entity.name.function.shell",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Shell green",
        scope =
          "string.quoted.double.shell, string.quoted.single.shell, punctuation.definition.string.begin.shell, punctuation.definition.string.end.shell, string.unquoted.heredoc.shell",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Shell purple",
        scope =
          "keyword.control.heredoc-token.shell, variable.other.normal.shell, punctuation.definition.variable.shell, variable.other.special.shell, variable.other.positional.shell, variable.other.bracket.shell",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Fish{{{
    C
      { name = "Fish red",
        scope = "support.function.builtin.fish",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "Fish orange",
        scope = "support.function.unix.fish",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Fish blue",
        scope =
          "variable.other.normal.fish, punctuation.definition.variable.fish, variable.other.fixed.fish, variable.other.special.fish",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "Fish green",
        scope =
          "string.quoted.double.fish, punctuation.definition.string.end.fish, punctuation.definition.string.begin.fish, string.quoted.single.fish",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Fish purple",
        scope = "constant.character.escape.single.fish",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- PowerShell{{{
    C
      { name = "PowerShell grey",
        scope = "punctuation.definition.variable.powershell",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "PowerShell yellow",
        scope =
          "entity.name.function.powershell, support.function.attribute.powershell, support.function.powershell",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "PowerShell green",
        scope =
          "string.quoted.single.powershell, string.quoted.double.powershell, punctuation.definition.string.begin.powershell, punctuation.definition.string.end.powershell, string.quoted.double.heredoc.powershell",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "PowerShell aqua",
        scope = "variable.other.member.powershell",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    -- }}}
    -- GraphQL{{{
    C
      { name = "GraphQL white",
        scope = "string.unquoted.alias.graphql",
        settings =
          def
            { foreground = Just palette.fg1
            }
      },
    C
      { name = "GraphQL red",
        scope = "keyword.type.graphql",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "GraphQL purple",
        scope = "entity.name.fragment.graphql",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- {{{Makefile
    C
      { name = "Makefile orange",
        scope = "entity.name.function.target.makefile",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Makefile yellow",
        scope = "variable.other.makefile",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Makefile green",
        scope = "meta.scope.prerequisites.makefile",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    -- }}}
    -- {{{CMake
    C
      { name = "CMake green",
        scope = "string.source.cmake",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "CMake aqua",
        scope = "entity.source.cmake",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "CMake purple",
        scope = "storage.source.cmake",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- {{{VimL
    C
      { name = "VimL grey",
        scope = "punctuation.definition.map.viml",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "VimL orange",
        scope = "storage.type.map.viml",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "VimL green",
        scope = "constant.character.map.viml, constant.character.map.key.viml",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "VimL blue",
        scope = "constant.character.map.special.viml",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    -- }}}
    -- {{{Tmux
    C
      { name = "Tmux green",
        scope = "constant.language.tmux, constant.numeric.tmux",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    -- }}}
    -- {{{Dockerfile
    C
      { name = "Dockerfile orange",
        scope = "entity.name.function.package-manager.dockerfile",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Dockerfile yellow",
        scope = "keyword.operator.flag.dockerfile",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Dockerfile green",
        scope = "string.quoted.double.dockerfile, string.quoted.single.dockerfile",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Dockerfile aqua",
        scope = "constant.character.escape.dockerfile",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    C
      { name = "Dockerfile purple",
        scope =
          "entity.name.type.base-image.dockerfile, entity.name.image.dockerfile",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- Diff{{{
    C
      { name = "Diff grey",
        scope = "punctuation.definition.separator.diff",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "Diff red",
        scope = "markup.deleted.diff, punctuation.definition.deleted.diff",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "Diff orange",
        scope = "meta.diff.range.context, punctuation.definition.range.diff",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Diff yellow",
        scope = "meta.diff.header.from-file",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "Diff green",
        scope = "markup.inserted.diff, punctuation.definition.inserted.diff",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Diff blue",
        scope = "markup.changed.diff, punctuation.definition.changed.diff",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "Diff purple",
        scope = "punctuation.definition.from-file.diff",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    -- }}}
    -- {{{Git
    C
      { name = "Git red",
        scope =
          "entity.name.section.group-title.ini, punctuation.definition.entity.ini",
        settings =
          def
            { foreground = Just palette.red
            }
      },
    C
      { name = "Git orange",
        scope = "punctuation.separator.key-value.ini",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "Git green",
        scope =
          "string.quoted.double.ini, string.quoted.single.ini, punctuation.definition.string.begin.ini, punctuation.definition.string.end.ini",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "Git aqua",
        scope = "keyword.other.definition.ini",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    -- }}}
    -- SQL{{{
    C
      { name = "SQL yellow",
        scope = "support.function.aggregate.sql",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "SQL green",
        scope =
          "string.quoted.single.sql, punctuation.definition.string.end.sql, punctuation.definition.string.begin.sql, string.quoted.double.sql",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    -- }}}
    -- GraphQL{{{
    C
      { name = "GraphQL yellow",
        scope = "support.type.graphql",
        settings =
          def
            { foreground = Just palette.yellow
            }
      },
    C
      { name = "GraphQL blue",
        scope = "variable.parameter.graphql",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "GraphQL aqua",
        scope = "constant.character.enum.graphql",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    -- }}}
    -- JSON{{{
    C
      { name = "JSON grey",
        scope =
          "punctuation.support.type.property-name.begin.json, punctuation.support.type.property-name.end.json, punctuation.separator.dictionary.key-value.json, punctuation.definition.string.begin.json, punctuation.definition.string.end.json, punctuation.separator.dictionary.pair.json, punctuation.separator.array.json",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "JSON orange",
        scope = "support.type.property-name.json",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "JSON green",
        scope = "string.quoted.double.json",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    -- }}}
    -- YAML {{{
    C
      { name = "YAML grey",
        scope = "punctuation.separator.key-value.mapping.yaml",
        settings =
          def
            { foreground = Just palette.grey1
            }
      },
    C
      { name = "YAML green",
        scope =
          "string.unquoted.plain.out.yaml, string.quoted.single.yaml, string.quoted.double.yaml, punctuation.definition.string.begin.yaml, punctuation.definition.string.end.yaml, string.unquoted.plain.in.yaml, string.unquoted.block.yaml",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "YAML aqua",
        scope =
          "punctuation.definition.anchor.yaml, punctuation.definition.block.sequence.item.yaml",
        settings =
          def
            { foreground = Just palette.aqua
            }
      },
    -- }}}
    -- TOML {{{
    C
      { name = "TOML orange",
        scope = "keyword.key.toml",
        settings =
          def
            { foreground = Just palette.orange
            }
      },
    C
      { name = "TOML green",
        scope =
          "string.quoted.single.basic.line.toml, string.quoted.single.literal.line.toml, punctuation.definition.keyValuePair.toml",
        settings =
          def
            { foreground = Just palette.green
            }
      },
    C
      { name = "TOML blue",
        scope = "constant.other.boolean.toml",
        settings =
          def
            { foreground = Just palette.blue
            }
      },
    C
      { name = "TOML purple",
        scope =
          "entity.other.attribute-name.table.toml, punctuation.definition.table.toml, entity.other.attribute-name.table.array.toml, punctuation.definition.table.array.toml",
        settings =
          def
            { foreground = Just palette.purple
            }
      },
    C
      { name = "Comment",
        scope = "comment, string.comment, punctuation.definition.comment",
        settings =
          def
            { foreground = Just palette.grey1,
              fontStyle = Just "italic"
            }
      },
    -- }}}
    -- Nix {{{
    C
      { name = "Nix call",
        scope = "support.function.nix",
        settings = def {foreground = Just palette.fg1}
      }
  ]

-- }}}
