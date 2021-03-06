% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kuenm_cal.R
\name{kuenm_cal}
\alias{kuenm_cal}
\title{Creation of candidate models for calibration}
\usage{
kuenm_cal(occ.joint, occ.tra, M.var.dir, batch, out.dir, reg.mult,
  f.clas = "all", background = 10000, maxent.path, wait = TRUE,
  invisible = TRUE, run = TRUE)
}
\arguments{
\item{occ.joint}{(character) is the name of the csv file with all the occurrences; columns must be: species, longitude, latitude.}

\item{occ.tra}{(character) is the name of the csv file with the calibration occurrences; columns equal to occ.joint.}

\item{M.var.dir}{(character) is the name of the folder containing other folders with different sets of environmental variables.}

\item{batch}{(character) name of the batch file (bash for Unix) with the code to create all candidate models.}

\item{out.dir}{(character) name of the folder that will contain all calibration model subfolders.}

\item{reg.mult}{(numeric vector) regularization multiplier(s) to be evaluated.}

\item{f.clas}{(character) feature clases can be selected from  five different combination sets or manually.
Combination sets are: "all", "basic", "no.t.h", "no.h", and "no.t". Default = "all".
basic = "l", "lq", "lqp", "lqpt", "lqpth". Combinations "no.t.h", "no.h", and "no.t", exclude t and/or h.
Options from the following list can be selected manually:
"l", "q", "p", "t", "h", "lq", "lp", "lt", "lh", "qp", "qt", "qh",
"pt", "ph", "th", "lqp", "lqt", "lqh", "lpt", "lph", "qpt", "qph",
"qth", "pth", "lqpt", "lqph", "lqth", "lpth", and "lqpth".}

\item{background}{(numeric) the numer of pixels be used as background when creating the maxent models.}

\item{maxent.path}{(character) the path were the maxent.jar file is in your computer.}

\item{wait}{(logical) if TRUE R will wait until all the Maxent models are created. If FALSE the process of
model creation will be performed separately and R could be used at the same time. This may be useful for evaluating
candidate models parallelly. Default = TRUE.}

\item{invisible}{(logical) determines wheter or not the terminal executing the batch file (bash for Unix) for producing
maxent models can be seen. Seeing the terminal can be useful for detecting potential errors. Valid only on Windows.
Default = TRUE. If wait = FALSE it is advisable to set invisible = FALSE to monitor the advance of that process.}

\item{run}{(logical) if TRUE the batch runs after its creation, if FALSE it will only be created and its runnig would be
manual, default = TRUE.}
}
\value{
A folder named out.dir with all the subfolders to save Maxent results when running the .bat file (.sh for Unix).
A .bat file (.sh for Unix) containing the java codes to run the calibration models, it will run auotmatically or on some
computers a dialog box will ask if running is allowed.
}
\description{
kuenm_cal creates and executes a batch file (bash for Unix) for generating candidate models in Maxent
to test multiple parameter combinations, including distinct regularization multiplier values,
various feature classes, and different sets of environmental variables.
}
\details{
Java needs to be installed in the computer and maxent.jar needs to be in a known place in the computer.
Java can be obtained from \url{https://java.com/es/download/manual.jsp}. Users of Linux and Mac need the entire
Java Development Kit available in \url{http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html}.
Maxent can be downloaded from \url{https://biodiversityinformatics.amnh.org/open_source/maxent/}
}
