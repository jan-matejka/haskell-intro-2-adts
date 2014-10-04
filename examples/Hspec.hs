import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "arithmetic" $ do
        it "works" $ do
            2 + 2 `shouldBe` 4

        it "doesn't" $ do
            2 + 2 `shouldBe` 5
