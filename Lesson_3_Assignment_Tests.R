library(testthat)

# each call to test_that() produces one test
# each test represents one point value
# you can have multiple tests for each question


test_that("Q2 (visible)", {
  
  expect_true(dim(rep1)[1] == 10)
  expect_true(dim(rep1)[2] == 26)
  expect_equal(rep1$DMA_ID[1], 501)
  expect_equal(rep1$DMA_CONDITION[3], "3")
  expect_equal(rep1$GOOGLE_RETARGETING_CLICKS[6], 11)
  
})

test_that("Q3 (visible)", {
  
  expect_true(dim(rep1b)[1] == 10)
  expect_true(dim(rep1b)[2] == 26)
  expect_equal(rep1b$DMA_ID[2], 803)
  expect_equal(rep1b$DMA_CONDITION[3], "18")
  expect_equal(rep1b$GOOGLE_RETARGETING_CLICKS[6], 6)
  
})

test_that("Q4a (visible)", {
  
  expect_true(names(fexp)[27] == "Tot_Imp")
  expect_equal(sum(fexp$Tot_Imp), 13184393, tolerance = 1)
              
})
  
test_that("Q4b (visible)", {
  
  expect_true(names(fexp)[28] == "Tot_Click")
  expect_equal(sum(fexp$Tot_Click), 66802, tolerance = 1)
  
})

test_that("Q5 (visible)", {
  
  expect_true(names(fexp)[29] == "CTR")
  expect_equal(sum(fexp$CTR), 1813.163, tolerance = 1)
  
})

test_that("Q6 (visible)", {
  
  expect_equal(rep2$WebSales, 285249.4, tolerance = 1) 
  expect_equal(rep2$AmznSales, 12260.93, tolerance = 1) 
  
})

test_that("Q7 (visible)", {
  
  expect_equal(rep2b$WEEK[2], 59, tolerance = 1e-2) 
  expect_equal(rep2b$WebSales[2], 97126.42, tolerance = 1) 
  expect_equal(rep2b$AmznSales[3], 4130.85, tolerance = 1) 
  
})

test_that("Q8 (visible)", {
  
  expect_equal(rep2c$WEEK[11], 60, tolerance = 1e-2) 
  expect_equal(rep2c$WebSales[6], 14760.27, tolerance = 1) 
  expect_equal(rep2c$AmznSales[13], 1325.37, tolerance = 1) 
  
})

test_that("Q9 (visible)", {
  
  expect_true(dim(rep2c)[1] == 15)
  expect_true(dim(rep2c)[2] == 5)
  expect_true(names(rep2c)[5] == "PercAmzn")
  expect_equal(rep2c$PercAmzn[3], .0723, tolerance = 1e-3) 
  expect_equal(rep2c$PercAmzn[6], .0282, tolerance = 1e-3) 
  expect_equal(rep2c$PercAmzn[13], .0363, tolerance = 1e-3) 
  
})

test_that("Q10 (visible)", {
  
  expect_true(dim(rep2d)[1] == 15)
  expect_true(dim(rep2d)[2] == 5)
  expect_true(names(rep2d)[5] == "PercAmzn")
  expect_equal(rep2d$PercAmzn[3], .0518, tolerance = 1e-3) 
  expect_equal(rep2d$PercAmzn[6], .0597, tolerance = 1e-3) 
  expect_equal(rep2d$PercAmzn[13], .0363, tolerance = 1e-3) 
  
})

test_that("Q11 (visible)", {
  
  expect_true(Q11p == 15)
  expect_true(dim(rep2d)[2] == 5)
  expect_true(names(rep2d)[5] == "PercAmzn")
  expect_equal(rep2d$PercAmzn[3], .0518, tolerance = 1e-3) 
  expect_equal(rep2d$PercAmzn[6], .0597, tolerance = 1e-3) 
  expect_equal(rep2d$PercAmzn[13], .0363, tolerance = 1e-3) 
  
})