% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/render.R
\name{quarto_render}
\alias{quarto_render}
\title{Render Markdown}
\usage{
quarto_render(
  input,
  output_format = NULL,
  output_file = NULL,
  execute = TRUE,
  execute_params = NULL,
  execute_dir = NULL,
  cache = NULL,
  cache_refresh = FALSE,
  kernel_keepalive = NULL,
  kernel_restart = FALSE,
  debug = FALSE,
  quiet = FALSE,
  pandoc_args = NULL
)
}
\arguments{
\item{input}{The input file or project directory to be rendered.}

\item{output_format}{Target output format (defaults to "html"). The option
\code{"all"} will render all formats defined within the file or project.}

\item{output_file}{The name of the output file. If using \code{NULL} then the
output filename will be based on filename for the input file.}

\item{execute}{Whether to execute embedded code chunks.}

\item{execute_params}{A list of named parameters that override custom params
specified within the YAML front-matter.}

\item{execute_dir}{The working directory in which to execute embedded code
chunks.}

\item{cache}{Cache execution output (uses knitr cache and jupyter-cache
respectively for Rmd and Jupyter input files).}

\item{cache_refresh}{Force refresh of execution cache.}

\item{kernel_keepalive}{Keep Jupyter kernel alive (defaults to 300 seconds).
Note this option is only applicable for rendering Jupyter notebooks or
Jupyter markdown.}

\item{kernel_restart}{Restart keepalive Jupyter kernel before render.
Note this option is only applicable for rendering Jupyter notebooks or
Jupyter markdown.}

\item{debug}{Leave intermediate files in place after render.}

\item{quiet}{Suppress warning and other messages.}

\item{pandoc_args}{Additional command line options to pass to pandoc.}
}
\description{
Render the input file to the specified output format using quarto. If the
input requires computations (e.g. for Rmd or Jupyter files) then those
computations are performed before rendering.
}
\examples{
\dontrun{
# Render R Markdown
quarto_render("notebook.Rmd")
quarto_render("notebook.Rmd", output_format = "pdf")

# Render Jupyter Notebook
quarto_render("notebook.ipynb")

# Render Jupyter Markdown
quarto_render("notebook.md")
}
}