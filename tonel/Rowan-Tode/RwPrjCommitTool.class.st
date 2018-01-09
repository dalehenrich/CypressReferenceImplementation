Class {
	#name : 'RwPrjCommitTool',
	#superclass : 'RwProjectTool',
	#category : 'Rowan-Tode'
}

{ #category : 'smalltalk api' }
RwPrjCommitTool >> commitPackagesForSpecification: aRwSpecification message: messageString [
  "write out packages and commit repository"

  self specification: aRwSpecification.
  self class write writePackagesForSpecification: specification.
  ^ Rowan repositoryTools commit
    commitRepositoryForSpecification: specification
    message: messageString
]

{ #category : 'smalltalk api' }
RwPrjCommitTool >> commitPackagesForSpecUrl: aSpecUrlString message: messageString [
  "write out packages and commit repository"

  ^ self
    commitPackagesForSpecification: (RwSpecification fromUrl: aSpecUrlString)
    message: messageString
]

{ #category : 'cypress api' }
RwPrjCommitTool >> commitSpecification: aRwSpecification message: messageString [ 
  self specification: aRwSpecification.
  self class write writeSpecification: specification.
  specification canCommit
    ifFalse: [ 
      | msg |
      msg := 'repository for ' , specification specName printString
        ,
          ' does not support commit operations. Source written to repository and skipping commit'.
      self inform: msg.
      ^ msg ].
  specification commitForTool: self message: messageString.
^ specification updateLoadedCommitIdForTool: self
]

{ #category : 'cypress api' }
RwPrjCommitTool >> commitSpecUrl: aSpecUrlString message: messageString [ 
  ^ self
    commitSpecification: (RwSpecification fromUrl: aSpecUrlString)
message: messageString
]

{ #category : 'man page' }
RwPrjCommitTool >> manPage [
  ^ TDManPage
    commandName: 'commit'
    sourceMethod: self class name asString , '>>manPage'
    fromString:
      'NAME
  prj commit - Save image changes to repository and commit (git repos only)
SYNOPSIS
  prj commit --message=<message-ref> [--push[=remote]] <spec-url>
DESCRIPTION
EXAMPLES
  prj commit --message=`implement RwCommitTool` Rowan
  prj commit Rowan

  prj commit --push=origin Rowan
  prj commit --push Rowan
'
]