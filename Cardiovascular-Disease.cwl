cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  cardiovascular-disease-infarction---primary:
    run: cardiovascular-disease-infarction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  acute-cardiovascular-disease---primary:
    run: acute-cardiovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-infarction---primary/output
  coronary-cardiovascular-disease---primary:
    run: coronary-cardiovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: acute-cardiovascular-disease---primary/output
  cardiovascular-disease-unspecified---primary:
    run: cardiovascular-disease-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: coronary-cardiovascular-disease---primary/output
  cardiovascular-disease-anterior---primary:
    run: cardiovascular-disease-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-unspecified---primary/output
  cardiovascular-disease-posterior---primary:
    run: cardiovascular-disease-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-anterior---primary/output
  cardiovascular-disease-elevation---primary:
    run: cardiovascular-disease-elevation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-posterior---primary/output
  cardiovascular-disease-inferior---primary:
    run: cardiovascular-disease-inferior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-elevation---primary/output
  cardiovascular-disease-unspecif---primary:
    run: cardiovascular-disease-unspecif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-inferior---primary/output
  other-cardiovascular-disease---primary:
    run: other-cardiovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-unspecif---primary/output
  cardiovascular-disease-aborted---primary:
    run: cardiovascular-disease-aborted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: other-cardiovascular-disease---primary/output
  subsequent-cardiovascular-disease---primary:
    run: subsequent-cardiovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-aborted---primary/output
  postoperative-cardiovascular-disease---primary:
    run: postoperative-cardiovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: subsequent-cardiovascular-disease---primary/output
  transmural-cardiovascular-disease---primary:
    run: transmural-cardiovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: postoperative-cardiovascular-disease---primary/output
  cardiovascular-disease-stroke---primary:
    run: cardiovascular-disease-stroke---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: transmural-cardiovascular-disease---primary/output
  acute-cardiovascular-disease---secondary:
    run: acute-cardiovascular-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-stroke---primary/output
  cardiovascular-disease-anterior---secondary:
    run: cardiovascular-disease-anterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: acute-cardiovascular-disease---secondary/output
  cardiovascular-disease-inferior---secondary:
    run: cardiovascular-disease-inferior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-anterior---secondary/output
  other-cardiovascular-disease---secondary:
    run: other-cardiovascular-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-inferior---secondary/output
  cardiovascular-disease-specified---secondary:
    run: cardiovascular-disease-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: other-cardiovascular-disease---secondary/output
  subsequent-cardiovascular-disease---secondary:
    run: subsequent-cardiovascular-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-specified---secondary/output
  cardiovascular-disease-following---secondary:
    run: cardiovascular-disease-following---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: subsequent-cardiovascular-disease---secondary/output
  cardiovascular-disease-haemopericardium---secondary:
    run: cardiovascular-disease-haemopericardium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-following---secondary/output
  cardiovascular-disease-defect---secondary:
    run: cardiovascular-disease-defect---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-haemopericardium---secondary/output
  cardiovascular-disease-rupture---secondary:
    run: cardiovascular-disease-rupture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-defect---secondary/output
  cardiovascular-disease-thrombosis---secondary:
    run: cardiovascular-disease-thrombosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-rupture---secondary/output
  precerebral-cardiovascular-disease---secondary:
    run: precerebral-cardiovascular-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-thrombosis---secondary/output
  cardiovascular-disease-embolism---secondary:
    run: cardiovascular-disease-embolism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: precerebral-cardiovascular-disease---secondary/output
  cardiovascular-disease-haemorrhage---secondary:
    run: cardiovascular-disease-haemorrhage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-embolism---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-haemorrhage---secondary/output
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
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
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
