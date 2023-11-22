# Base libraries
library(igraph)
library(tidyverse)

# Function to analyze attribute influence on link formation
analyze_attribute_influence <- function(graph, attribute) {
  # Check if the attribute exists
  if (!attribute %in% names(vertex_attr(graph))) {
    stop(paste("Attribute", attribute, "not found in the graph vertices."))
  }
  
  # Extract vertex attributes
  attribute_values <- vertex_attr(graph)[[attribute]]
  
  # Calculate degree for each vertex
  degrees <- degree(graph)
  
  # Create a data frame
  df <- data.frame(attribute = attribute_values, degree = degrees)
  
  # Aggregate and summarize data
  attribute_influence <- df %>%
    group_by(attribute) %>%
    summarise(average_degree = mean(degree),
              count = n())
  
  return(attribute_influence)
}

# Example usage for the 'advice' network and 'status' attribute
advice_status_influence <- analyze_attribute_influence(advice, "status")
print(advice_status_influence)

# Repeat this process for other attributes like 'sex', 'office', etc.
advice_sex_influence <- analyze_attribute_influence(advice, "sex")
print(advice_sex_influence)

# Analyze attribute influence for 'office'
advice_office_influence <- analyze_attribute_influence(advice, "office")
print(advice_office_influence)

# Analyze attribute influence for 'practice'
advice_practice_influence <- analyze_attribute_influence(advice, "practice")
print(advice_practice_influence)

# Analyze attribute influence for 'school'
advice_school_influence <- analyze_attribute_influence(advice, "school")
print(advice_school_influence)


## Betweenness Centrality
# This measure can help to identify individuals who serve as bridges in the network communication paths.



# Function to analyze betweenness centrality based on attributes
analyze_betweenness <- function(graph, attribute) {
  if (!attribute %in% names(vertex_attr(graph))) {
    stop(paste("Attribute", attribute, "not found in the graph vertices."))
  }
  
  attribute_values <- vertex_attr(graph)[[attribute]]
  betweenness_values <- betweenness(graph)
  
  df <- data.frame(attribute = attribute_values, betweenness = betweenness_values)
  attribute_betweenness <- df %>%
    group_by(attribute) %>%
    summarise(average_betweenness = mean(betweenness),
              count = n())
  
  return(attribute_betweenness)
}

# Example usage for the 'advice' network and 'status' attribute
advice_status_betweenness <- analyze_betweenness(advice, "status")
print(advice_status_betweenness)

# Function to analyze eigenvector centrality based on attributes
analyze_eigenvector <- function(graph, attribute) {
  if (!attribute %in% names(vertex_attr(graph))) {
    stop(paste("Attribute", attribute, "not found in the graph vertices."))
  }
  
  attribute_values <- vertex_attr(graph)[[attribute]]
  eigenvector_values <- eigen_centrality(graph)$vector
  
  df <- data.frame(attribute = attribute_values, eigenvector = eigenvector_values)
  attribute_eigenvector <- df %>%
    group_by(attribute) %>%
    summarise(average_eigenvector = mean(eigenvector),
              count = n())
  
  return(attribute_eigenvector)
}

# Example usage for the 'advice' network and 'status' attribute
advice_status_eigenvector <- analyze_eigenvector(advice, "status")
print(advice_status_eigenvector)


## Eigenvector Centrality



# Function to analyze eigenvector centrality based on attributes
analyze_eigenvector <- function(graph, attribute) {
  if (!attribute %in% names(vertex_attr(graph))) {
    stop(paste("Attribute", attribute, "not found in the graph vertices."))
  }
  
  attribute_values <- vertex_attr(graph)[[attribute]]
  eigenvector_values <- eigen_centrality(graph)$vector
  
  df <- data.frame(attribute = attribute_values, eigenvector = eigenvector_values)
  attribute_eigenvector <- df %>%
    group_by(attribute) %>%
    summarise(average_eigenvector = mean(eigenvector),
              count = n())
  
  return(attribute_eigenvector)
}

# Example usage for the 'advice' network and 'status' attribute
advice_status_eigenvector <- analyze_eigenvector(advice, "status")
print(advice_status_eigenvector)




## Assortativity Coefficient

# Function to calculate assortativity coefficient based on an attribute
calculate_assortativity <- function(graph, attribute) {
  if (!attribute %in% names(vertex_attr(graph))) {
    stop(paste("Attribute", attribute, "not found in the graph vertices."))
  }
  
  attribute_values <- vertex_attr(graph)[[attribute]]
  assortativity_coefficient <- assortativity(graph, attribute_values, directed = TRUE)
  
  return(assortativity_coefficient)
}

# Example usage for the 'advice' network and 'status' attribute
advice_status_assortativity <- calculate_assortativity(advice, "status")
print(advice_status_assortativity)



