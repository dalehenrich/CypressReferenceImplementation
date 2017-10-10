"
notice: Copyright 2013,2017 GemTalk Systems, LLC. Open source under the MIT license.
category: baseline
"
baseline: spec
  <baseline>
  spec for: #'gemstone64' do: [ spec
        package: 'Cypress-Definitions';
        package: 'Cypress-Structure'
          with: [ spec requires: 'Cypress-Definitions' ];
        package: 'Cypress-GemStoneFileServer'
          with: [ spec requires: 'Cypress-Structure' ];
        package: 'Cypress-MesssageDigest'
          with: [ spec requires: 'Cypress-Structure' ];
        package: 'Cypress-Comparison'
          with: [ spec requires: 'Cypress-Definitions' ];
        package: 'Cypress-Network-Url';
        package: 'Cypress-PackageManagement' with: [ spec
                requires:
                  #('Cypress-Definitions' 'Cypress-Network-Url' 'Cypress-GemStoneFileServer') ];
        package: 'Cypress-Mocks';
        package: 'Cypress-Tests' with: [ spec
                requires:
                  #('Cypress-Mocks' 'Cypress-Definitions' 'Cypress-Structure' 'Cypress-PackageManagement') ];
        package: 'NetworkTests' with: [ spec requires: #('Cypress-Network-Url') ];
        yourself.
      spec
        group: 'default' with: #('Core');
        group: 'Core'
          with:
            #('Cypress-Structure' 'Cypress-MesssageDigest' 'Cypress-PackageManagement' 'Cypress-Comparison');
        group: 'Tests' with: #('Cypress-Tests' 'NetworkTests');
        yourself ]
