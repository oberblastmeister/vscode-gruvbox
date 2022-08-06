module Theme where

import Data.Aeson
import Imports
import Palette (Palette (..))
import Semantic qualified
import Syntax qualified
import Types (Color)
import Workbench qualified

data Theme = Theme
  { name :: !Text,
    kind :: !Text,
    semanticHighlighting :: !Bool,
    semanticTokenColors :: !(HashMap Text Text),
    colors :: !(HashMap Text Text),
    tokenColors :: [Color]
  }
  deriving (Generic)

instance ToJSON Theme where
  toJSON = genericToJSON defaultOptions {fieldLabelModifier = \s -> case s of "kind" -> "type"; _ -> s}

new :: Text -> Palette -> Theme
new name palette =
  Theme
    { name,
      kind = "dark",
      semanticHighlighting = True,
      semanticTokenColors = Semantic.new palette,
      colors = Workbench.new palette,
      tokenColors = Syntax.new palette
    }
