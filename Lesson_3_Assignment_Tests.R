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

test_that("Q3a (visible)", {
  
  expect_true(names(fexp)[27] == "Tot_Imp")
  expect_true(sum(fexp$Tot_Imp) == 13184393)
              
})
  
test_that("Q3b (visible)", {
    
  expect_true(names(fexp)[28] == "Tot_Click")
  expect_equal(sum(fexp$Tot_Click), 66802, tolerance = 1)
                
})
    
    test_that("Q8 (visible)", {
  
  expect_equal(summMaj[1,1], "Min.   :19.26  ") 
  expect_equal(summMaj[2,1], "1st Qu.:21.43  ") 
  expect_equal(summMaj[1,2], "Female: 7  ") 
  expect_equal(summMaj[4,3], "gscm :3  ") 
  
})

test_that("Q9 (visible)", {
  
  expect_equal(as.numeric(unname(marketing[1,1])), 20.7, tolerance = 1e-2) 
  expect_equal(as.numeric(unname(marketing[3,1])), 22.4, tolerance = 1e-2) 
  expect_equal(as.numeric(unname(marketing[4,1])), 22.8, tolerance = 1e-2) 
  expect_true(is.factor(marketing$Major))
  expect_true(is.ordered(marketing$Major))
  
})

test_that("Q10 (visible)", {
  
  expect_equal(agemark, 22.14566, tolerance = 1e-3) 
  
})

test_that("Q11 (visible)", {
  
  expect_equal(stratYN[1], TRUE)
  expect_equal(stratYN[2], FALSE)
  expect_equal(stratYN[5], FALSE)
  expect_equal(stratYN[8], FALSE)
  expect_equal(stratYN[15], TRUE)
  expect_true(length(stratYN) == 19)
})

test_that("Q12 (visible)", {
  
  expect_equal(as.numeric(unname(strategy[1,1])), 19.3, tolerance = 1e-2) 
  expect_equal(as.numeric(unname(strategy[3,1])), 23.1, tolerance = 1e-2) 
  expect_equal(as.numeric(unname(strategy[4,1])), 23.3, tolerance = 1e-2) 
  expect_true(is.factor(strategy$Major))
  expect_true(is.ordered(strategy$Major))
  
})

test_that("Q13 (visible)", {
  
  expect_equal(agestrat, 21.99086, tolerance = 1e-3) 
  
})

test_that("Q14 (visible)", {
  
  expect_equal(as.numeric(unname(entrepreneurship[1,1])), 21.0, tolerance = 1e-2) 
  expect_equal(as.numeric(unname(entrepreneurship[2,1])), 21.4, tolerance = 1e-2) 
  expect_equal(as.numeric(unname(entrepreneurship[3,1])), 22.2, tolerance = 1e-2) 
  expect_true(is.factor(entrepreneurship$Major))
  expect_true(is.ordered(entrepreneurship$Major))
  
})

test_that("Q15 (visible)", {
  
  expect_equal(ageentr, 21.53005, tolerance = 1e-3) 
  
})

test_that("Q16 (visible)", {
  
  expect_equal(agehrm, 22.46828, tolerance = 1e-3) 
  
})

test_that("Q17 (visible)", {
  
  expect_equal(agegscm, 22.35117, tolerance = 1e-3) 
  
})

test_that("Q18 (visible)", {
  
  expect_equal(MajorList[[1]][1, 1], 20.71259, tolerance = 1e-3) 
  expect_equal(MajorList[[1]][2, 1], 21.80737, tolerance = 1e-3) 
  expect_equal(MajorList[[1]][5, 1], 23.01437, tolerance = 1e-3) 
  expect_equal(MajorList[[2]][2, 1], 22.34075, tolerance = 1e-3) 
  expect_equal(MajorList[[3]][1, 1], 21.00289, tolerance = 1e-3) 
  expect_equal(MajorList[[3]][3, 1], 22.22459, tolerance = 1e-3) 
  
})

test_that("Q19 (visible)", {
  
  expect_equal(as.numeric(unname(agegenmark3[1])), 22.43433, tolerance = 1e-3) 
  expect_true(is.factor(unname(agegenmark3$Gender)))
})
