<xsl:stylesheet version="1.0" exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns oraxsl DVMFunctions BasicCredentialsUserFunction UUIDUserFunction IsUserInRoleFunction IsUserInGroupFunction XrefFunctions" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="saibot.airport/services/flightschedule" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="saibot.airport/services/private/flightschedule" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:reference="saibot.airport/data/reference" xmlns:common="saibot.airport/data/common" xmlns:flight="saibot.airport/data/flight">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../../PrivateSubmitFlightSchedule/Schemas/PrivateSubmitFlightScheduleService.xsd"/>
        <oracle-xsl-mapper:rootElement name="submitScheduledFlightResponseMessage" namespace="saibot.airport/services/private/flightschedule"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/FlightScheduleService.xsd"/>
        <oracle-xsl-mapper:rootElement name="submitScheduledFlightResponseMessage" namespace="saibot.airport/services/flightschedule"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140119.0846.5239) AT [WED MAR 12 14:00:19 CET 2014].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:submitScheduledFlightResponseMessage>
      <xsl:if test="/ns0:submitScheduledFlightResponseMessage/ns0:FlightSchedule">
        <tns:FlightSchedule>
          <xsl:if test="/ns0:submitScheduledFlightResponseMessage/ns0:FlightSchedule/ns0:FlightId">
            <tns:FlightId>
              <xsl:value-of select="/ns0:submitScheduledFlightResponseMessage/ns0:FlightSchedule/ns0:FlightId"/>
            </tns:FlightId>
          </xsl:if>
          <xsl:if test="/ns0:submitScheduledFlightResponseMessage/ns0:FlightSchedule/ns0:SlotId">
            <tns:SlotId>
              <xsl:value-of select="/ns0:submitScheduledFlightResponseMessage/ns0:FlightSchedule/ns0:SlotId"/>
            </tns:SlotId>
          </xsl:if>
          <xsl:if test="/ns0:submitScheduledFlightResponseMessage/ns0:FlightSchedule/ns0:TentativeGateLocation">
            <tns:TentativeGateLocation>
              <xsl:if test="/ns0:submitScheduledFlightResponseMessage/ns0:FlightSchedule/ns0:TentativeGateLocation/reference:Terminal">
                <reference:Terminal>
                  <xsl:value-of select="/ns0:submitScheduledFlightResponseMessage/ns0:FlightSchedule/ns0:TentativeGateLocation/reference:Terminal"/>
                </reference:Terminal>
              </xsl:if>
              <xsl:if test="/ns0:submitScheduledFlightResponseMessage/ns0:FlightSchedule/ns0:TentativeGateLocation/reference:Pier">
                <reference:Pier>
                  <xsl:value-of select="/ns0:submitScheduledFlightResponseMessage/ns0:FlightSchedule/ns0:TentativeGateLocation/reference:Pier"/>
                </reference:Pier>
              </xsl:if>
              <xsl:if test="/ns0:submitScheduledFlightResponseMessage/ns0:FlightSchedule/ns0:TentativeGateLocation/reference:Gate">
                <reference:Gate>
                  <xsl:value-of select="/ns0:submitScheduledFlightResponseMessage/ns0:FlightSchedule/ns0:TentativeGateLocation/reference:Gate"/>
                </reference:Gate>
              </xsl:if>
            </tns:TentativeGateLocation>
          </xsl:if>
        </tns:FlightSchedule>
      </xsl:if>
      <xsl:if test="/ns0:submitScheduledFlightResponseMessage/ns0:ProcessingResults">
        <tns:ProcessingResults>
          <xsl:for-each select="/ns0:submitScheduledFlightResponseMessage/ns0:ProcessingResults/ns0:ProcessingResult">
            <tns:ProcessingResult>
              <tns:ResultCode>
                <xsl:value-of select="ns0:ResultCode"/>
              </tns:ResultCode>
              <tns:Description>
                <xsl:value-of select="ns0:Description"/>
              </tns:Description>
            </tns:ProcessingResult>
          </xsl:for-each>
        </tns:ProcessingResults>
      </xsl:if>
    </tns:submitScheduledFlightResponseMessage>
  </xsl:template>
</xsl:stylesheet>