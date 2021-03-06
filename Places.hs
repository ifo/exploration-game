module Places where

data Place =  Place { num   :: Int
                      , name  :: String
                      , desc  :: String
                      , exits :: [Exit]
                      }
instance Show Place where
    show (Place _ name desc _) = name ++ "\n" ++ desc

defaultPlaces s = [Place 1 "Failure" (show s) []]

data Exit = Exit { dir  :: String
                 , node :: Int }
            | NoExit deriving Show

defaultExit = Exit "" 1