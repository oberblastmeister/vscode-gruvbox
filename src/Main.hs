{-# LANGUAGE DeriveAnyClass #-}

import Data.Aeson qualified as Aeson
import Palette qualified
import Theme (new)

main :: IO ()
main = do
  Aeson.encodeFile "themes/gruvbox-medium-dark.json" $ Theme.new "Gruvbox Medium Dark" Palette.mediumDark
