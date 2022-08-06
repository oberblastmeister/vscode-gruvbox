{-# LANGUAGE DeriveAnyClass #-}

module Palette where

import Data.Aeson
import Imports

data Palette = Palette
  { bg0 :: !Text,
    bg1 :: !Text,
    bg :: !Text,
    bg2 :: !Text,
    bg3 :: !Text,
    bg4 :: !Text,
    bg5 :: !Text,
    bg6 :: !Text,
    bg7 :: !Text,
    bg8 :: !Text,
    bg9 :: !Text,
    grey0 :: !Text,
    grey1 :: !Text,
    grey2 :: !Text,
    shadow :: !Text,
    fg0 :: !Text,
    fg1 :: !Text,
    red :: !Text,
    orange :: !Text,
    yellow :: !Text,
    green :: !Text,
    aqua :: !Text,
    blue :: !Text,
    purple :: !Text,
    dimRed :: !Text,
    dimOrange :: !Text,
    dimYellow :: !Text,
    dimGreen :: !Text,
    dimAqua :: !Text,
    neutralAqua :: !Text,
    dimBlue :: !Text,
    dimPurple :: !Text
  }
  deriving (Generic, ToJSON)

mediumDark :: Palette
mediumDark =
  Palette
    { bg0 = "#101010",
      bg1 = "#1c1c1c",
      bg = "#292828",
      bg2 = "#32302f",
      bg3 = "#383432",
      bg4 = "#3c3836",
      bg5 = "#45403d",
      bg6 = "#504945",
      bg7 = "#5a524c",
      bg8 = "#665c54",
      bg9 = "#7c6f64",
      grey0 = "#7c6f64",
      grey1 = "#928374",
      grey2 = "#a89984",
      shadow = "#00000070",
      fg0 = "#ebdbb2",
      fg1 = "#ebdbb2",
      red = "#fb4934",
      orange = "#fe8019",
      yellow = "#fabd2f",
      green = "#b8bb26",
      aqua = "#8ec07c",
      blue = "#83a598",
      purple = "#d3869b",
      dimRed = "#b85651",
      dimOrange = "#bd6f3e",
      dimYellow = "#c18f41",
      dimGreen = "#8f9a52",
      dimAqua = "#72966c",
      neutralAqua = "#689d6a",
      dimBlue = "#68948a",
      dimPurple = "#ab6c7d"
    }
