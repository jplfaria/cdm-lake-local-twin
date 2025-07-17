# Ontology Term Validation Notebook

## Overview
The `ontology_term_validation.ipynb` notebook provides tools for validating and querying ontology terms in the CDM (Common Data Model) ontology database.

## Features

### 1. Term Validation
- **Simple validation**: Check if a list of ontology terms exists in the database
- **Comprehensive validation**: Check terms across multiple tables (statements, entailed_edge, term_association)
- **Batch validation**: Process large lists of terms with detailed reporting

### 2. OMP (Ontology of Microbial Phenotypes) Queries
- Count and explore OMP terms
- Query term hierarchies (parents and children)
- Search OMP terms by keyword (e.g., 'growth', 'resistance')

### 3. ECO (Evidence and Conclusion Ontology) Queries
- Explore evidence type terms
- Find ECO terms used in annotations
- Search by evidence type (experimental, computational, similarity)

### 4. Cross-Ontology Analysis
- Find relationships between different ontologies
- Identify cross-references and mappings

## Usage Examples

### Validate a list of terms:
```python
test_terms = "OMP:0006023, ECO:0006056, OMP:9999999, ECO:0000001, FAKE:12345"
found_terms, missing_terms = validate_ontology_terms(test_terms)
```

### Search OMP terms:
```python
# Find all OMP terms related to growth
growth_terms = search_omp_by_keyword('growth')

# Get hierarchy for a specific term
parents, children = get_omp_hierarchy('OMP:0006023')
```

### Batch validation with output:
```python
terms_list = ["OMP:0006023", "ECO:0006056", "GO:0008150", "FAKE:00001"]
results = batch_validate_terms(terms_list, output_file="validation_results.csv")
```

## Output
The validation functions provide:
- Clear indication of which terms exist vs. missing
- Term labels and descriptions
- Usage statistics across tables
- Summary messages (e.g., "All terms are part of the loaded ontology records!")

## Requirements
- Spark session with access to the CDM ontology database
- Python packages: pandas, pyspark
- Access to ontology_data namespace tables:
  - statements
  - entailed_edge
  - term_association
  - feature_annotation