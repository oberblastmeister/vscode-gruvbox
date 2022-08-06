{-# LANGUAGE DeriveAnyClass #-}

module Types where

import Data.Aeson
import Imports

data Settings = Settings
  { foreground :: Maybe Text,
    fontStyle :: Maybe Text
  }
  deriving (Generic)

instance ToJSON Settings where
  toJSON = genericToJSON defaultOptions {omitNothingFields = True}

data Color = C
  { name :: !Text,
    scope :: !Text,
    settings :: !Settings
  }
  deriving (Generic, ToJSON)

def :: Settings
def =
  Settings
    { foreground = Nothing,
      fontStyle = Nothing
    }
