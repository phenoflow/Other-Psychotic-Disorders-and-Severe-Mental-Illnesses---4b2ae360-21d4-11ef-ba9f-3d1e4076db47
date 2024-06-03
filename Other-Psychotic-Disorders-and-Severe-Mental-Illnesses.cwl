cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  other-psychotic-disorders-and-severe-mental-illnesses-xacute---primary:
    run: other-psychotic-disorders-and-severe-mental-illnesses-xacute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  reactive-other-psychotic-disorders-and-severe-mental-illnesses---primary:
    run: reactive-other-psychotic-disorders-and-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: other-psychotic-disorders-and-severe-mental-illnesses-xacute---primary/output
  current-other-psychotic-disorders-and-severe-mental-illnesses---primary:
    run: current-other-psychotic-disorders-and-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: reactive-other-psychotic-disorders-and-severe-mental-illnesses---primary/output
  other-psychotic-disorders-and-severe-mental-illnesses---primary:
    run: other-psychotic-disorders-and-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: current-other-psychotic-disorders-and-severe-mental-illnesses---primary/output
  early-other-psychotic-disorders-and-severe-mental-illnesses---primary:
    run: early-other-psychotic-disorders-and-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: other-psychotic-disorders-and-severe-mental-illnesses---primary/output
  nonorganic-other-psychotic-disorders-and-severe-mental-illnesses---primary:
    run: nonorganic-other-psychotic-disorders-and-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: early-other-psychotic-disorders-and-severe-mental-illnesses---primary/output
  other-psychotic-disorders-and-severe-mental-illnesses-depre---primary:
    run: other-psychotic-disorders-and-severe-mental-illnesses-depre---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: nonorganic-other-psychotic-disorders-and-severe-mental-illnesses---primary/output
  psychogenic-other-psychotic-disorders-and-severe-mental-illnesses---primary:
    run: psychogenic-other-psychotic-disorders-and-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: other-psychotic-disorders-and-severe-mental-illnesses-depre---primary/output
  affective-other-psychotic-disorders-and-severe-mental-illnesses---primary:
    run: affective-other-psychotic-disorders-and-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: psychogenic-other-psychotic-disorders-and-severe-mental-illnesses---primary/output
  paranoid-other-psychotic-disorders-and-severe-mental-illnesses---primary:
    run: paranoid-other-psychotic-disorders-and-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: affective-other-psychotic-disorders-and-severe-mental-illnesses---primary/output
  other-psychotic-disorders-and-severe-mental-illnesses-psychosis---primary:
    run: other-psychotic-disorders-and-severe-mental-illnesses-psychosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: paranoid-other-psychotic-disorders-and-severe-mental-illnesses---primary/output
  other-psychotic-disorders-and-severe-mental-illnesses-specified---primary:
    run: other-psychotic-disorders-and-severe-mental-illnesses-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: other-psychotic-disorders-and-severe-mental-illnesses-psychosis---primary/output
  other-psychotic-disorders-and-severe-mental-illnesses-schizophrenialike---primary:
    run: other-psychotic-disorders-and-severe-mental-illnesses-schizophrenialike---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: other-psychotic-disorders-and-severe-mental-illnesses-specified---primary/output
  other-psychotic-disorders-and-severe-mental-illnesses-hypomania---primary:
    run: other-psychotic-disorders-and-severe-mental-illnesses-hypomania---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: other-psychotic-disorders-and-severe-mental-illnesses-schizophrenialike---primary/output
  manic-other-psychotic-disorders-and-severe-mental-illnesses---primary:
    run: manic-other-psychotic-disorders-and-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: other-psychotic-disorders-and-severe-mental-illnesses-hypomania---primary/output
  delusional-other-psychotic-disorders-and-severe-mental-illnesses---primary:
    run: delusional-other-psychotic-disorders-and-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: manic-other-psychotic-disorders-and-severe-mental-illnesses---primary/output
  single-other-psychotic-disorders-and-severe-mental-illnesses---primary:
    run: single-other-psychotic-disorders-and-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: delusional-other-psychotic-disorders-and-severe-mental-illnesses---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: single-other-psychotic-disorders-and-severe-mental-illnesses---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
