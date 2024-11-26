---
parasoftVersion: 2024.2.0
productVersion: 10.7.1
schemaVersion: 1
suite:
  $type: TestSuite
  hasEnvironmentConfig: true
  enabled: true
  name: Test Suite
  rootTestSuite: true
  lastModifiedBy: gtrofimov
  profileMappingID: 0
  maxProfileMappingID: 1
  nextIdentifier: 3
  tests:
  - $type: RESTClientToolTest
    testLogic: true
    testID: 2
    enabled: true
    name: REST Client
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: REST Client
      formJson:
        value:
          $type: ElementValue
          writeType: true
          type:
            $type: ElementType
            hash: 1
            localName: root
            bodyType:
              $type: ComplexType
              hash: 2
              attributes:
              - hash: 3
                ns: ""
                name: type
                fixed: object
                contentType:
                  $type: StringType
                  hash: 4
                required: true
              name: rootType
              compositor: true
              compositorObj:
                $type: AllCompositor
                hash: 5
          replacedColumn: ""
          values:
          - $type: ComplexValue
            replacedColumn: ""
            attributes:
            - replacedColumn: ""
              value:
                $type: StringValue
                replacedColumn: ""
                value: object
                xmlEncoding: 2
              useValue: true
            compositorValue: true
            compositorValueObj:
              replacedColumn: ""
              values:
                $type: CompositorValueSetCollectionSet
                set:
                - $type: CompositorValueSet
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      formInput:
        value:
          $type: ElementValue
          writeType: true
          type:
            $type: ElementType
            hash: 1
            localName: ""
            bodyType:
              $type: ComplexType
              hash: 2
              name: anonymous
              compositor: true
              compositorObj:
                $type: SequenceCompositor
                hash: 3
          replacedColumn: ""
          values:
          - $type: ComplexValue
            replacedColumn: ""
            compositorValue: true
            compositorValueObj:
              replacedColumn: ""
              values:
                $type: CompositorValueSetCollectionSet
                set:
                - $type: CompositorValueSet
      constrainToSchema: false
      jmsMessageOutputProvider:
        $type: JMSMessageOutputProvider
        jmsOutputProviderRequest:
          $type: JMSOutputProvider
          name: Request Object
          menuName: Object
        jmsOutputProviderResponse:
          $type: JMSOutputProvider
          name: Response Message Object
          menuName: Message Object
      router:
        values:
        - $type: ScriptedValue
        fixedValue:
          $type: StringTestValue
          HTTPClient_Endpoint: http://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=2
      urlParameters:
        properties:
        - name: deck_count
          value:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: 2
      transportProperties:
        manager:
          protocol: 1
          properties:
          - $type: HTTPClientHTTPProperties
            followRedirects:
              bool: true
            common:
              auth:
                useDefault: false
                customType: 1
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: POST
            protocol: 1
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            followRedirects:
              bool: true
            common:
              auth:
                useDefault: false
                customType: 1
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: POST
            keepAlive1_1:
              bool: true
          - $type: NoneTransportProperties
        messageExchangePattern:
          inverted: true
      outputProviders:
        requestHeader:
          $type: HTTPNamedToolOutputProvider
          menuName: Transport Header
          name: Request Transport Header
        responseHeader:
          $type: HTTPNamedToolOutputProvider
          menuName: Transport Header
          name: Response Transport Header
        xmlRequestOutput:
          $type: NamedXMLToolOutputProvider
          menuName: Traffic
          name: Request Traffic
        trafficOutput:
          m_name: Traffic Stream
        objectOutput:
          $type: ObjectOutputProvider
          outputTools:
          - $type: TrafficViewer
            iconName: TrafficViewer
            name: Traffic Viewer
            showRequestHeaders: true
          name: Traffic Object
      formXML:
        doctype: ""
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: application/json
      mode: Literal
      literalQuery:
        isPropertiesRef: true
      literalPath:
        pathElements:
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: api
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: deck
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: new
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: shuffle
        - {}
      resourceMethod:
        httpMethod: GET
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
