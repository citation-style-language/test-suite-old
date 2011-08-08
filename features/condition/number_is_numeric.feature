Feature: Condition - Number Is Numeric

  @v1.0 @std @citation
  Scenario: Number Is Numeric
    Given following style:
    """
    <style 
          xmlns="http://purl.org/net/xbiblio/csl"
          class="note"
          version="1.0">
      <info>
        <id />
        <title />
        <updated>2009-08-10T04:49:00+09:00</updated>
      </info>
      <citation>
        <layout>
          <choose>
            <if is-numeric="edition">
              <text value="TRUE"/>
            </if>
            <else>
              <text value="FALSE"/>
            </else>
          </choose>
        </layout>
      </citation>
    </style>
    """
    When I process the following items:
    """
    [
        {
            "edition": 5, 
            "id": "ITEM-1", 
            "type": "book"
        }
    ]
    """  
    Then the result should be:
    """
    TRUE
    """
