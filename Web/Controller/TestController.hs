module Web.Controller.TestController where

import Web.Controller.Prelude
import Web.View.TestController.Index

instance Controller TestControllerController where
    action TestAction = do
        render IndexView { }
    
    action DoAction = do
        redirectTo TestAction
