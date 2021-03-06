\name{box_constraint}
\alias{box_constraint}
\title{constructor for box_constraint.}
\usage{
  box_constraint(type = "box", assets, min, max, min_mult,
    max_mult, enabled = TRUE, message = FALSE, ...)
}
\arguments{
  \item{type}{character type of the constraint}

  \item{assets}{number of assets, or optionally a named
  vector of assets specifying initial weights}

  \item{min}{numeric or named vector specifying minimum
  weight box constraints}

  \item{max}{numeric or named vector specifying minimum
  weight box constraints}

  \item{min_mult}{numeric or named vector specifying
  minimum multiplier box constraint from initial weight in
  \code{assets}}

  \item{max_mult}{numeric or named vector specifying
  maximum multiplier box constraint from initial weight in
  \code{assets}}

  \item{enabled}{TRUE/FALSE}

  \item{message}{TRUE/FALSE. The default is message=FALSE.
  Display messages if TRUE.}

  \item{\dots}{any other passthru parameters to specify box
  constraints}
}
\value{
  an object of class 'box_constraint'
}
\description{
  Box constraints specify the upper and lower bounds on the
  weights of the assets. This function is called by
  add.constraint when type="box" is specified. See
  \code{\link{add.constraint}}.
}
\examples{
data(edhec)
ret <- edhec[, 1:4]

pspec <- portfolio.spec(assets=colnames(ret))

# defaults to min=0 and max=1
pspec <- add.constraint(pspec, type="box")

# specify box constraints as a scalar
pspec <- add.constraint(pspec, type="box", min=0.05, max=0.45)

# specify box constraints per asset
pspec <- add.constraint(pspec, type="box", min=c(0.05, 0.10, 0.08, 0.06), max=c(0.45, 0.55, 0.35, 0.65))
}
\author{
  Ross Bennett
}
\seealso{
  \code{\link{add.constraint}}
}

