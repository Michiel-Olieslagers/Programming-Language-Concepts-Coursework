import Tokens
import System.Environment
import Control.Exception
import System.IO


main :: IO ()
main = getTokens

getTokens :: IO ()
getTokens = do path <- getArgs
               contents <- readFile (head path)
               let var = alexScanTokens contents
               print var
         