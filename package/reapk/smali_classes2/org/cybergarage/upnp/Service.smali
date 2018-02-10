.class public Lorg/cybergarage/upnp/Service;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONTROL_URL:Ljava/lang/String; = "controlURL"

.field public static final ELEM_NAME:Ljava/lang/String; = "service"

.field private static final EVENT_SUB_URL:Ljava/lang/String; = "eventSubURL"

.field public static final MAJOR:Ljava/lang/String; = "major"

.field public static final MAJOR_VALUE:Ljava/lang/String; = "1"

.field public static final MINOR:Ljava/lang/String; = "minor"

.field public static final MINOR_VALUE:Ljava/lang/String; = "0"

.field private static final SCPDURL:Ljava/lang/String; = "SCPDURL"

.field public static final SCPD_ROOTNODE:Ljava/lang/String; = "scpd"

.field public static final SCPD_ROOTNODE_NS:Ljava/lang/String; = "urn:schemas-upnp-org:service-1-0"

.field private static final SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final SERVICE_TYPE:Ljava/lang/String; = "serviceType"

.field public static final SPEC_VERSION:Ljava/lang/String; = "specVersion"

.field public static mStateVar_external:Lorg/cybergarage/upnp/StateVariable;

.field public static mStateVar_internal:Lorg/cybergarage/upnp/StateVariable;


# instance fields
.field private NOTIFY_RETRY_NUM:I

.field private descriptionXmlContent:Ljava/lang/String;

.field private mutex:Lorg/cybergarage/util/Mutex;

.field private serviceNode:Lorg/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 138
    new-instance v4, Lorg/cybergarage/xml/Node;

    const-string v5, "service"

    invoke-direct {v4, v5}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lorg/cybergarage/upnp/Service;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 140
    new-instance v3, Lorg/cybergarage/xml/Node;

    const-string v4, "specVersion"

    invoke-direct {v3, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 142
    .local v3, "sp":Lorg/cybergarage/xml/Node;
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v4, "major"

    invoke-direct {v0, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "M":Lorg/cybergarage/xml/Node;
    const-string v4, "1"

    invoke-virtual {v0, v4}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v3, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 146
    new-instance v1, Lorg/cybergarage/xml/Node;

    const-string v4, "minor"

    invoke-direct {v1, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "m":Lorg/cybergarage/xml/Node;
    const-string v4, "0"

    invoke-virtual {v1, v4}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 151
    new-instance v2, Lorg/cybergarage/xml/Node;

    const-string v4, "scpd"

    invoke-direct {v2, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, "scpd":Lorg/cybergarage/xml/Node;
    const-string v4, "xmlns"

    const-string v5, "urn:schemas-upnp-org:service-1-0"

    invoke-virtual {v2, v4, v5}, Lorg/cybergarage/xml/Node;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 154
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x4

    iput v0, p0, Lorg/cybergarage/upnp/Service;->NOTIFY_RETRY_NUM:I

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/Service;->descriptionXmlContent:Ljava/lang/String;

    .line 193
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Service;->mutex:Lorg/cybergarage/util/Mutex;

    .line 1159
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/Service;->userData:Ljava/lang/Object;

    .line 159
    iput-object p1, p0, Lorg/cybergarage/upnp/Service;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 160
    return-void
.end method

.method private getDeviceNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 221
    .local v0, "node":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 222
    const/4 v1, 0x0

    .line 223
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method private getNotifyServiceTypeNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyServiceTypeUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRootNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method private getSCPDNode()Lorg/cybergarage/xml/Node;
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 439
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    .line 440
    .local v0, "data":Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v7

    .line 441
    .local v7, "scpdNode":Lorg/cybergarage/xml/Node;
    if-eqz v7, :cond_1

    move-object v11, v7

    .line 552
    :cond_0
    :goto_0
    return-object v11

    .line 445
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v5

    .line 446
    .local v5, "rootDev":Lorg/cybergarage/upnp/Device;
    if-eqz v5, :cond_0

    .line 449
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSCPDURL()Ljava/lang/String;

    move-result-object v8

    .line 456
    .local v8, "scpdURLStr":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v12

    invoke-virtual {v12}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isQiyiServer()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 458
    invoke-static {}, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->getInstance()Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;

    move-result-object v12

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->getDmrInfor(Ljava/lang/String;)Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;

    move-result-object v1

    .line 459
    .local v1, "dmrInfor":Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;
    if-eqz v1, :cond_3

    .line 461
    invoke-virtual {v1}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->getServerMap()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 463
    invoke-virtual {v1}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->getServerMap()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 466
    .local v10, "serverXml":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v10}, Lorg/cybergarage/upnp/Service;->getSCPDNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 472
    :goto_1
    if-eqz v7, :cond_3

    .line 474
    invoke-virtual {v0, v7}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    move-object v11, v7

    .line 475
    goto :goto_0

    .line 467
    :catch_0
    move-exception v2

    .line 470
    .local v2, "e":Lorg/cybergarage/xml/ParserException;
    invoke-virtual {v2}, Lorg/cybergarage/xml/ParserException;->printStackTrace()V

    goto :goto_1

    .line 478
    .end local v2    # "e":Lorg/cybergarage/xml/ParserException;
    .end local v10    # "serverXml":Ljava/lang/String;
    :cond_2
    const-string v10, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n   </specVersion>\n   <serviceStateTable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_InstanceID</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>A_ARG_TYPE_NOTIFYMSG</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_INFOR</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_SendMessage_Result</name>\n         <dataType>string</dataType>\n      </stateVariable>\n   </serviceStateTable>\n   <actionList>\n      <action>\n         <name>SendMessage</name>\n         <argumentList>\n            <argument>\n               <name>InstanceID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Infor</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_INFOR</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Result</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_SendMessage_Result</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>NotifyMessage</name>\n         <argumentList>\n            <argument>\n               <name>NotifyMsg</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_NOTIFYMSG</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n   </actionList>\n</scpd>\n"

    .line 481
    .restart local v10    # "serverXml":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0, v10}, Lorg/cybergarage/upnp/Service;->getSCPDNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 487
    :goto_2
    if-eqz v7, :cond_3

    .line 489
    invoke-virtual {v0, v7}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    move-object v11, v7

    .line 490
    goto :goto_0

    .line 482
    :catch_1
    move-exception v2

    .line 485
    .restart local v2    # "e":Lorg/cybergarage/xml/ParserException;
    invoke-virtual {v2}, Lorg/cybergarage/xml/ParserException;->printStackTrace()V

    goto :goto_2

    .line 497
    .end local v1    # "dmrInfor":Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;
    .end local v2    # "e":Lorg/cybergarage/xml/ParserException;
    .end local v10    # "serverXml":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->getDescriptionFilePath()Ljava/lang/String;

    move-result-object v6

    .line 498
    .local v6, "rootDevPath":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 501
    new-instance v3, Ljava/io/File;

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 507
    :try_start_2
    invoke-direct {p0, v3}, Lorg/cybergarage/upnp/Service;->getSCPDNode(Ljava/io/File;)Lorg/cybergarage/xml/Node;
    :try_end_2
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 513
    :goto_3
    if-eqz v7, :cond_4

    .line 515
    invoke-virtual {v0, v7}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    .line 517
    invoke-direct {p0, v5, v8, v7}, Lorg/cybergarage/upnp/Service;->saveServiceToCache(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Lorg/cybergarage/xml/Node;)V

    move-object v11, v7

    .line 518
    goto/16 :goto_0

    .line 508
    :catch_2
    move-exception v2

    .line 511
    .restart local v2    # "e":Lorg/cybergarage/xml/ParserException;
    invoke-virtual {v2}, Lorg/cybergarage/xml/ParserException;->printStackTrace()V

    goto :goto_3

    .line 525
    .end local v2    # "e":Lorg/cybergarage/xml/ParserException;
    .end local v3    # "f":Ljava/io/File;
    :cond_4
    :try_start_3
    new-instance v9, Ljava/net/URL;

    invoke-virtual {v5, v8}, Lorg/cybergarage/upnp/Device;->getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 526
    .local v9, "scpdUrl":Ljava/net/URL;
    invoke-direct {p0, v9}, Lorg/cybergarage/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v7

    .line 527
    if-eqz v7, :cond_5

    .line 529
    invoke-virtual {v0, v7}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    .line 531
    invoke-direct {p0, v5, v8, v7}, Lorg/cybergarage/upnp/Service;->saveServiceToCache(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Lorg/cybergarage/xml/Node;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v11, v7

    .line 532
    goto/16 :goto_0

    .line 534
    .end local v9    # "scpdUrl":Ljava/net/URL;
    :catch_3
    move-exception v2

    .line 536
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 539
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->getDescriptionFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lorg/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 542
    .local v4, "newScpdURLStr":Ljava/lang/String;
    :try_start_4
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v12}, Lorg/cybergarage/upnp/Service;->getSCPDNode(Ljava/io/File;)Lorg/cybergarage/xml/Node;

    move-result-object v7

    .line 544
    invoke-direct {p0, v5, v8, v7}, Lorg/cybergarage/upnp/Service;->saveServiceToCache(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Lorg/cybergarage/xml/Node;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v11, v7

    .line 546
    goto/16 :goto_0

    .line 547
    :catch_4
    move-exception v2

    .line 549
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method private getSCPDNode(Ljava/io/File;)Lorg/cybergarage/xml/Node;
    .locals 2
    .param p1, "scpdFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v0

    .line 425
    .local v0, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/File;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    return-object v1
.end method

.method private getSCPDNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 2
    .param p1, "scpdDocument"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v0

    .line 434
    .local v0, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    return-object v1
.end method

.method private getSCPDNode(Ljava/net/URL;)Lorg/cybergarage/xml/Node;
    .locals 2
    .param p1, "scpdUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v0

    .line 419
    .local v0, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    return-object v1
.end method

.method private getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;
    .locals 2

    .prologue
    .line 725
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 726
    .local v0, "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/xml/ServiceData;

    .line 727
    .local v1, "userData":Lorg/cybergarage/upnp/xml/ServiceData;
    if-nez v1, :cond_0

    .line 729
    new-instance v1, Lorg/cybergarage/upnp/xml/ServiceData;

    .end local v1    # "userData":Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-direct {v1}, Lorg/cybergarage/upnp/xml/ServiceData;-><init>()V

    .line 730
    .restart local v1    # "userData":Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 731
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/xml/ServiceData;->setNode(Lorg/cybergarage/xml/Node;)V

    .line 733
    :cond_0
    return-object v1
.end method

.method public static getStateVar(Z)Lorg/cybergarage/upnp/StateVariable;
    .locals 1
    .param p0, "external"    # Z

    .prologue
    .line 964
    if-eqz p0, :cond_0

    .line 965
    sget-object v0, Lorg/cybergarage/upnp/Service;->mStateVar_external:Lorg/cybergarage/upnp/StateVariable;

    .line 967
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/cybergarage/upnp/Service;->mStateVar_internal:Lorg/cybergarage/upnp/StateVariable;

    goto :goto_0
.end method

.method public static isServiceNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 211
    const-string v0, "service"

    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isURL(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "referenceUrl"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 284
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v2, v3

    .line 293
    :cond_1
    :goto_0
    return v2

    .line 286
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 287
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 289
    invoke-static {p1, v3}, Lorg/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "relativeRefUrl":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 291
    if-nez v1, :cond_1

    move v2, v3

    .line 293
    goto :goto_0
.end method

.method private notify(Lorg/cybergarage/upnp/event/Subscriber;Lorg/cybergarage/upnp/StateVariable;Z)Z
    .locals 8
    .param p1, "sub"    # Lorg/cybergarage/upnp/event/Subscriber;
    .param p2, "stateVar"    # Lorg/cybergarage/upnp/StateVariable;
    .param p3, "external"    # Z

    .prologue
    .line 930
    invoke-virtual {p2}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v5

    .line 932
    .local v5, "varName":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 933
    invoke-virtual {p2}, Lorg/cybergarage/upnp/StateVariable;->getValue_tvguo()Ljava/lang/String;

    move-result-object v4

    .line 937
    .local v4, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v2

    .line 940
    .local v2, "port":I
    new-instance v1, Lorg/cybergarage/upnp/event/NotifyRequest;

    invoke-direct {v1}, Lorg/cybergarage/upnp/event/NotifyRequest;-><init>()V

    .line 941
    .local v1, "notifyReq":Lorg/cybergarage/upnp/event/NotifyRequest;
    invoke-virtual {v1, p1, v5, v4}, Lorg/cybergarage/upnp/event/NotifyRequest;->setRequest(Lorg/cybergarage/upnp/event/Subscriber;Ljava/lang/String;Ljava/lang/String;)Z

    .line 943
    const/4 v3, 0x0

    .line 944
    .local v3, "retry":I
    :goto_1
    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/upnp/event/NotifyRequest;->post(Ljava/lang/String;I)Lorg/cybergarage/http/HTTPResponse;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cybergarage/http/HTTPResponse;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 954
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sub: notify success ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->incrementNotifyCount()V

    .line 956
    const/4 v6, 0x1

    :goto_2
    return v6

    .line 935
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "notifyReq":Lorg/cybergarage/upnp/event/NotifyRequest;
    .end local v2    # "port":I
    .end local v3    # "retry":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lorg/cybergarage/upnp/StateVariable;->getValue_dlna()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 946
    .restart local v0    # "host":Ljava/lang/String;
    .restart local v1    # "notifyReq":Lorg/cybergarage/upnp/event/NotifyRequest;
    .restart local v2    # "port":I
    .restart local v3    # "retry":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    iget v6, p0, Lorg/cybergarage/upnp/Service;->NOTIFY_RETRY_NUM:I

    if-lt v3, v6, :cond_2

    .line 948
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sub: notify failure ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][Give Up!]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 949
    const/4 v6, 0x0

    goto :goto_2

    .line 951
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sub: notify failure ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][Retry:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private saveServiceToCache(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Lorg/cybergarage/xml/Node;)V
    .locals 3
    .param p1, "rootDev"    # Lorg/cybergarage/upnp/Device;
    .param p2, "scpdURLStr"    # Ljava/lang/String;
    .param p3, "scpdNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 561
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isQiyiServer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    invoke-static {}, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->getInstance()Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;

    move-result-object v1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->getDmrInfor(Ljava/lang/String;)Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;

    move-result-object v0

    .line 564
    .local v0, "dmrInfor":Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->getServerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->getServerMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p3}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    invoke-static {}, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->getInstance()Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->SaveDmrInfor(Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;)V

    .line 574
    .end local v0    # "dmrInfor":Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;
    :cond_0
    return-void
.end method

.method public static setStateVar(Lorg/cybergarage/upnp/StateVariable;Z)V
    .locals 3
    .param p0, "var"    # Lorg/cybergarage/upnp/StateVariable;
    .param p1, "tvguo"    # Z

    .prologue
    .line 972
    if-eqz p1, :cond_0

    .line 973
    new-instance v0, Lorg/cybergarage/upnp/StateVariable;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/StateVariable;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    sput-object v0, Lorg/cybergarage/upnp/Service;->mStateVar_external:Lorg/cybergarage/upnp/StateVariable;

    .line 976
    :goto_0
    return-void

    .line 975
    :cond_0
    new-instance v0, Lorg/cybergarage/upnp/StateVariable;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/StateVariable;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    sput-object v0, Lorg/cybergarage/upnp/Service;->mStateVar_internal:Lorg/cybergarage/upnp/StateVariable;

    goto :goto_0
.end method


# virtual methods
.method public addAction(Lorg/cybergarage/upnp/Action;)V
    .locals 5
    .param p1, "a"    # Lorg/cybergarage/upnp/Action;

    .prologue
    .line 638
    if-nez p1, :cond_0

    .line 655
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cybergarage/upnp/ArgumentList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 641
    .local v2, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 647
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 648
    .local v3, "scdpNode":Lorg/cybergarage/xml/Node;
    const-string v4, "actionList"

    invoke-virtual {v3, v4}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 649
    .local v0, "actionListNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 651
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0    # "actionListNode":Lorg/cybergarage/xml/Node;
    const-string v4, "actionList"

    invoke-direct {v0, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 652
    .restart local v0    # "actionListNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v3, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 654
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    goto :goto_0

    .line 643
    .end local v0    # "actionListNode":Lorg/cybergarage/xml/Node;
    .end local v3    # "scdpNode":Lorg/cybergarage/xml/Node;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/Argument;

    .line 644
    .local v1, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v1, p0}, Lorg/cybergarage/upnp/Argument;->setService(Lorg/cybergarage/upnp/Service;)V

    goto :goto_1
.end method

.method public addStateVariable(Lorg/cybergarage/upnp/StateVariable;)V
    .locals 3
    .param p1, "var"    # Lorg/cybergarage/upnp/StateVariable;

    .prologue
    .line 1141
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "serviceStateTable"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1142
    .local v0, "stateTableNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 1144
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0    # "stateTableNode":Lorg/cybergarage/xml/Node;
    const-string v1, "serviceStateTable"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 1149
    .restart local v0    # "stateTableNode":Lorg/cybergarage/xml/Node;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 1151
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/StateVariable;->setServiceNode(Lorg/cybergarage/xml/Node;)V

    .line 1152
    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 1153
    return-void
.end method

.method public declared-synchronized addSubscriber(Lorg/cybergarage/upnp/event/Subscriber;Z)V
    .locals 7
    .param p1, "sub"    # Lorg/cybergarage/upnp/event/Subscriber;
    .param p2, "tvguo"    # Z

    .prologue
    .line 850
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v4, "TVGupApp"

    .line 852
    .local v4, "tmp":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sub: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " addSubscriber for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 851
    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 853
    const/4 v2, 0x0

    .line 854
    .local v2, "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    if-eqz p2, :cond_1

    .line 856
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_tvguo()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v2

    .line 861
    :goto_1
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 863
    :try_start_1
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 864
    .local v3, "subListCnt":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_2
    if-lt v1, v3, :cond_2

    .line 879
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sub: [New SID] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 880
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/event/SubscriberList;->add(Ljava/lang/Object;)Z

    .line 861
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 883
    :try_start_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lorg/cybergarage/upnp/event/Subscriber;->initThreadParams(Lorg/cybergarage/xml/Node;Z)V

    .line 884
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NotifySubscriberThread["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/cybergarage/upnp/event/Subscriber;->start(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 885
    monitor-exit p0

    return-void

    .line 850
    .end local v1    # "n":I
    .end local v2    # "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    .end local v3    # "subListCnt":I
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string v4, "DLNA"

    goto/16 :goto_0

    .line 859
    .restart local v2    # "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    .restart local v4    # "tmp":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_dlna()Lorg/cybergarage/upnp/event/SubscriberList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    goto :goto_1

    .line 866
    .restart local v1    # "n":I
    .restart local v3    # "subListCnt":I
    :cond_2
    :try_start_4
    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v0

    .line 867
    .local v0, "curSub":Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v0, :cond_4

    .line 864
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 871
    :cond_4
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v5

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 873
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sub: [New SID]: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [Replace SID]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/Subscriber;->stop()V

    .line 875
    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/event/SubscriberList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 861
    .end local v0    # "curSub":Lorg/cybergarage/upnp/event/Subscriber;
    .end local v1    # "n":I
    .end local v3    # "subListCnt":I
    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 850
    .end local v2    # "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    .end local v4    # "tmp":Ljava/lang/String;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public announce(Ljava/lang/String;I)V
    .locals 8
    .param p1, "bindAddr"    # Ljava/lang/String;
    .param p2, "bindssdPort"    # I

    .prologue
    .line 753
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 754
    .local v2, "rootDev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "devLocation":Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v3

    .line 756
    .local v3, "serviceNT":Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v4

    .line 758
    .local v4, "serviceUSN":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 760
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    new-instance v5, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 761
    .local v5, "ssdpReq":Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setServer(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setLeaseTime(I)V

    .line 763
    invoke-virtual {v5, v1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setLocation(Ljava/lang/String;)V

    .line 764
    const-string v7, "ssdp:alive"

    invoke-virtual {v5, v7}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v5, v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v5, v4}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 770
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setConnect(Z)V

    .line 772
    new-instance v6, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v6, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 773
    .local v6, "ssdpSock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-static {}, Lorg/cybergarage/upnp/Device;->notifyWait()V

    .line 774
    invoke-virtual {v6, v5, p1, p2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;Ljava/lang/String;I)Z

    .line 775
    return-void
.end method

.method public byebye(Ljava/lang/String;)V
    .locals 6
    .param p1, "bindAddr"    # Ljava/lang/String;

    .prologue
    .line 781
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "devNT":Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "devUSN":Ljava/lang/String;
    new-instance v2, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 785
    .local v2, "ssdpReq":Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;
    const-string v4, "ssdp:byebye"

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 789
    new-instance v3, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v3, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 790
    .local v3, "ssdpSock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-static {}, Lorg/cybergarage/upnp/Device;->notifyWait()V

    .line 791
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3, v2, v4, v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;Ljava/lang/String;I)Z

    .line 792
    return-void
.end method

.method public clearSID()V
    .locals 2

    .prologue
    .line 1097
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 1098
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/Service;->setTimeout(J)V

    .line 1099
    return-void
.end method

.method public getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;
    .locals 7
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 620
    if-eqz p1, :cond_0

    const-string v6, ""

    if-ne p1, v6, :cond_1

    :cond_0
    move-object v0, v5

    .line 633
    :goto_0
    return-object v0

    .line 622
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getActionList()Lorg/cybergarage/upnp/ActionList;

    move-result-object v1

    .line 623
    .local v1, "actionList":Lorg/cybergarage/upnp/ActionList;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ActionList;->size()I

    move-result v3

    .line 624
    .local v3, "nActions":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    if-lt v2, v3, :cond_2

    move-object v0, v5

    .line 633
    goto :goto_0

    .line 626
    :cond_2
    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/ActionList;->getAction(I)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 627
    .local v0, "action":Lorg/cybergarage/upnp/Action;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 624
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 630
    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0
.end method

.method public getActionList()Lorg/cybergarage/upnp/ActionList;
    .locals 8

    .prologue
    .line 599
    new-instance v1, Lorg/cybergarage/upnp/ActionList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/ActionList;-><init>()V

    .line 600
    .local v1, "actionList":Lorg/cybergarage/upnp/ActionList;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 601
    .local v6, "scdpNode":Lorg/cybergarage/xml/Node;
    if-nez v6, :cond_1

    .line 615
    :cond_0
    return-object v1

    .line 603
    :cond_1
    const-string v7, "actionList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 604
    .local v2, "actionListNode":Lorg/cybergarage/xml/Node;
    if-eqz v2, :cond_0

    .line 606
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 607
    .local v4, "nNode":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 609
    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 610
    .local v5, "node":Lorg/cybergarage/xml/Node;
    invoke-static {v5}, Lorg/cybergarage/upnp/Action;->isActionNode(Lorg/cybergarage/xml/Node;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 607
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 612
    :cond_2
    new-instance v0, Lorg/cybergarage/upnp/Action;

    iget-object v7, p0, Lorg/cybergarage/upnp/Service;->serviceNode:Lorg/cybergarage/xml/Node;

    invoke-direct {v0, v7, v5}, Lorg/cybergarage/upnp/Action;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 613
    .local v0, "action":Lorg/cybergarage/upnp/Action;
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ActionList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getControlURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "controlURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getDescriptionURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionXmlContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/cybergarage/upnp/Service;->descriptionXmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Lorg/cybergarage/upnp/Device;
    .locals 3

    .prologue
    .line 237
    new-instance v0, Lorg/cybergarage/upnp/Device;

    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    return-object v0
.end method

.method public getEventSubURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "eventSubURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootDevice()Lorg/cybergarage/upnp/Device;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    return-object v0
.end method

.method public getSCPDData()[B
    .locals 4

    .prologue
    .line 578
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDescriptionXmlContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v3, :cond_1

    .line 580
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 581
    .local v1, "scpdNode":Lorg/cybergarage/xml/Node;
    if-nez v1, :cond_0

    .line 582
    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 590
    .end local v1    # "scpdNode":Lorg/cybergarage/xml/Node;
    :goto_0
    return-object v2

    .line 584
    .restart local v1    # "scpdNode":Lorg/cybergarage/xml/Node;
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 585
    .local v0, "desc":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Service;->setDescriptionXmlContent(Ljava/lang/String;)V

    .line 590
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "scpdNode":Lorg/cybergarage/xml/Node;
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDescriptionXmlContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_0
.end method

.method public getSCPDURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "SCPDURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1087
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/cybergarage/upnp/Service;->serviceNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;
    .locals 9

    .prologue
    .line 663
    new-instance v5, Lorg/cybergarage/upnp/ServiceStateTable;

    invoke-direct {v5}, Lorg/cybergarage/upnp/ServiceStateTable;-><init>()V

    .line 664
    .local v5, "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v7

    const-string v8, "serviceStateTable"

    invoke-virtual {v7, v8}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 665
    .local v6, "stateTableNode":Lorg/cybergarage/xml/Node;
    if-nez v6, :cond_1

    .line 677
    :cond_0
    return-object v5

    .line 667
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 668
    .local v3, "serviceNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v6}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v1

    .line 669
    .local v1, "nNode":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 671
    invoke-virtual {v6, v0}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 672
    .local v2, "node":Lorg/cybergarage/xml/Node;
    invoke-static {v2}, Lorg/cybergarage/upnp/StateVariable;->isStateVariableNode(Lorg/cybergarage/xml/Node;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 669
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    :cond_2
    new-instance v4, Lorg/cybergarage/upnp/StateVariable;

    invoke-direct {v4, v3, v2}, Lorg/cybergarage/upnp/StateVariable;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 675
    .local v4, "serviceVar":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v5, v4}, Lorg/cybergarage/upnp/ServiceStateTable;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceType"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 682
    if-eqz p1, :cond_0

    const-string v6, ""

    if-ne p1, v6, :cond_1

    :cond_0
    move-object v3, v5

    .line 696
    :goto_0
    return-object v3

    .line 685
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    .line 686
    .local v1, "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 687
    .local v2, "tableSize":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    if-lt v0, v2, :cond_2

    move-object v3, v5

    .line 696
    goto :goto_0

    .line 689
    :cond_2
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v3

    .line 690
    .local v3, "var":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, "varName":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 687
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 693
    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0
.end method

.method public getSubscriber(Ljava/lang/String;Z)Lorg/cybergarage/upnp/event/Subscriber;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "external"    # Z

    .prologue
    .line 909
    if-nez p2, :cond_0

    .line 910
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_dlna()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v3

    .line 913
    .local v3, "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    :goto_0
    invoke-virtual {v3}, Lorg/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v4

    .line 914
    .local v4, "subListCnt":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    if-lt v0, v4, :cond_1

    .line 925
    const/4 v2, 0x0

    :goto_2
    return-object v2

    .line 912
    .end local v0    # "n":I
    .end local v3    # "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    .end local v4    # "subListCnt":I
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_tvguo()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v3

    .restart local v3    # "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    goto :goto_0

    .line 916
    .restart local v0    # "n":I
    .restart local v4    # "subListCnt":I
    :cond_1
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v2

    .line 917
    .local v2, "sub":Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v2, :cond_3

    .line 914
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 919
    :cond_3
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, "sid":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 922
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2
.end method

.method public getSubscriberList_dlna()Lorg/cybergarage/upnp/event/SubscriberList;
    .locals 1

    .prologue
    .line 840
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getSubscriberList_dlna()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberList_tvguo()Lorg/cybergarage/upnp/event/SubscriberList;
    .locals 1

    .prologue
    .line 845
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getSubscriberList_tvguo()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 1117
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lorg/cybergarage/upnp/Service;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasSID()Z
    .locals 1

    .prologue
    .line 1103
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/StringUtil;->hasData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasStateVariable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 701
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Service;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isControlURL(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getControlURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEventSubURL(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getEventSubURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSCPDURL(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSCPDURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 710
    if-nez p1, :cond_1

    .line 716
    :cond_0
    :goto_0
    return v0

    .line 712
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 713
    goto :goto_0

    .line 714
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 715
    goto :goto_0
.end method

.method public isSubscribed()Z
    .locals 1

    .prologue
    .line 1108
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->hasSID()Z

    move-result v0

    return v0
.end method

.method public loadSCPD(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 384
    .local v1, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/File;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 385
    .local v2, "scpdNode":Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_0

    .line 386
    const/4 v3, 0x0

    .line 389
    :goto_0
    return v3

    .line 387
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    .line 388
    .local v0, "data":Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    .line 389
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public loadSCPD(Ljava/io/InputStream;)Z
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 398
    .local v1, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 399
    .local v2, "scpdNode":Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_0

    .line 400
    const/4 v3, 0x0

    .line 403
    :goto_0
    return v3

    .line 401
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    .line 402
    .local v0, "data":Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    .line 403
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public loadSCPD(Ljava/lang/String;)Z
    .locals 6
    .param p1, "scpdStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 367
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v2

    .line 368
    .local v2, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v2, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 369
    .local v3, "scpdNode":Lorg/cybergarage/xml/Node;
    if-nez v3, :cond_0

    .line 370
    const/4 v4, 0x0

    .line 378
    :goto_0
    return v4

    .line 371
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    .line 372
    .local v0, "data":Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0, v3}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    .line 373
    const-string v4, "xmlns"

    const-string v5, "urn:schemas-upnp-org:service-1-0"

    invoke-virtual {v3, v4, v5}, Lorg/cybergarage/xml/Node;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    const/4 v4, 0x1

    goto :goto_0

    .line 374
    .end local v0    # "data":Lorg/cybergarage/upnp/xml/ServiceData;
    .end local v2    # "parser":Lorg/cybergarage/xml/Parser;
    .end local v3    # "scpdNode":Lorg/cybergarage/xml/Node;
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Lorg/cybergarage/xml/ParserException;
    new-instance v4, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v4, v1}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/cybergarage/upnp/Service;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 198
    return-void
.end method

.method public notify(Lorg/cybergarage/upnp/StateVariable;Z)V
    .locals 8
    .param p1, "stateVar"    # Lorg/cybergarage/upnp/StateVariable;
    .param p2, "external"    # Z

    .prologue
    .line 1031
    if-eqz p2, :cond_0

    const-string v5, "TVGupApp"

    .line 1032
    .local v5, "tmp":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sub: notify "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->getValue_dlna()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1034
    if-nez p2, :cond_1

    .line 1035
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_dlna()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v2

    .line 1045
    .local v2, "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    :goto_1
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 1046
    .local v3, "subListCnt":I
    if-nez v3, :cond_2

    .line 1047
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sub: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " list empty..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1067
    :goto_2
    return-void

    .line 1031
    .end local v2    # "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    .end local v3    # "subListCnt":I
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_0
    const-string v5, "DLNA"

    goto :goto_0

    .line 1038
    .restart local v5    # "tmp":Ljava/lang/String;
    :cond_1
    const-string v6, "sub: notify external"

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_tvguo()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v2

    .restart local v2    # "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    goto :goto_1

    .line 1050
    .restart local v3    # "subListCnt":I
    :cond_2
    new-array v4, v3, [Lorg/cybergarage/upnp/event/Subscriber;

    .line 1051
    .local v4, "subs":[Lorg/cybergarage/upnp/event/Subscriber;
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_3
    if-lt v0, v3, :cond_3

    .line 1053
    const/4 v0, 0x0

    :goto_4
    if-lt v0, v3, :cond_4

    .line 1066
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/upnp/Service;->notifySubscribers(Lorg/cybergarage/upnp/StateVariable;Z)V

    goto :goto_2

    .line 1052
    :cond_3
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v6

    aput-object v6, v4, v0

    .line 1051
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1055
    :cond_4
    aget-object v1, v4, v0

    .line 1056
    .local v1, "sub":Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v1, :cond_6

    .line 1053
    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1058
    :cond_6
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/Subscriber;->isExpired()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1060
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sub: removesubscriber..."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0, v1, p2}, Lorg/cybergarage/upnp/Service;->removeSubscriber(Lorg/cybergarage/upnp/event/Subscriber;Z)V

    goto :goto_5
.end method

.method public notifyAllStateVariables(Z)V
    .locals 5
    .param p1, "external"    # Z

    .prologue
    .line 1071
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    .line 1072
    .local v1, "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 1073
    .local v2, "tableSize":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 1079
    return-void

    .line 1075
    :cond_0
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v3

    .line 1076
    .local v3, "var":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/StateVariable;->isSendEvents()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1077
    invoke-virtual {p0, v3, p1}, Lorg/cybergarage/upnp/Service;->notify(Lorg/cybergarage/upnp/StateVariable;Z)V

    .line 1073
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public notifySubscribers(Lorg/cybergarage/upnp/StateVariable;Z)V
    .locals 2
    .param p1, "var"    # Lorg/cybergarage/upnp/StateVariable;
    .param p2, "tvguo"    # Z

    .prologue
    .line 980
    if-eqz p2, :cond_0

    .line 982
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_tvguo()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v1

    monitor-enter v1

    .line 984
    :try_start_0
    const-string v0, "sub: wake up TVGuoApp NotifySubsriberThreads"

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 985
    invoke-static {p1, p2}, Lorg/cybergarage/upnp/Service;->setStateVar(Lorg/cybergarage/upnp/StateVariable;Z)V

    .line 986
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_tvguo()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 982
    monitor-exit v1

    .line 997
    :goto_0
    return-void

    .line 982
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 990
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_dlna()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v1

    monitor-enter v1

    .line 992
    :try_start_1
    const-string v0, "sub: wake up DLNA NotifySubsriberThreads"

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 993
    invoke-static {p1, p2}, Lorg/cybergarage/upnp/Service;->setStateVar(Lorg/cybergarage/upnp/StateVariable;Z)V

    .line 994
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_dlna()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 990
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public declared-synchronized removeSubscriber(Lorg/cybergarage/upnp/event/Subscriber;Z)V
    .locals 3
    .param p1, "sub"    # Lorg/cybergarage/upnp/event/Subscriber;
    .param p2, "tvguo"    # Z

    .prologue
    .line 890
    monitor-enter p0

    if-nez p2, :cond_0

    .line 892
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sub: removeSubscriber TVGuoApp"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_dlna()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    .line 899
    .local v0, "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    :goto_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 901
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/event/SubscriberList;->remove(Ljava/lang/Object;)Z

    .line 899
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 903
    :try_start_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 904
    monitor-exit p0

    return-void

    .line 896
    .end local v0    # "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    :cond_0
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sub: removeSubscriber DLNA"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_tvguo()Lorg/cybergarage/upnp/event/SubscriberList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .restart local v0    # "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    goto :goto_0

    .line 899
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 890
    .end local v0    # "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public serviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)Z
    .locals 6
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 796
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, "ssdpST":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 799
    const/4 v5, 0x0

    .line 816
    :goto_0
    return v5

    .line 801
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 803
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "serviceNT":Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, "serviceUSN":Ljava/lang/String;
    invoke-static {v4}, Lorg/cybergarage/upnp/device/ST;->isAllDevice(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 808
    invoke-virtual {v0, p1, v1, v3}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 816
    :cond_1
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 809
    :cond_2
    invoke-static {v4}, Lorg/cybergarage/upnp/device/ST;->isURNService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 811
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v2

    .line 812
    .local v2, "serviceType":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 813
    invoke-virtual {v0, p1, v2, v3}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/cybergarage/upnp/control/ActionListener;

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getActionList()Lorg/cybergarage/upnp/ActionList;

    move-result-object v1

    .line 181
    .local v1, "actionList":Lorg/cybergarage/upnp/ActionList;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ActionList;->size()I

    move-result v3

    .line 182
    .local v3, "nActions":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 187
    return-void

    .line 184
    :cond_0
    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/ActionList;->getAction(I)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 185
    .local v0, "action":Lorg/cybergarage/upnp/Action;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Action;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setControlURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "controlURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public setDescriptionURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 408
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/ServiceData;->setDescriptionURL(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public setDescriptionXmlContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "descriptionXmlContent"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/cybergarage/upnp/Service;->descriptionXmlContent:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setEventSubURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "eventSubURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V
    .locals 4
    .param p1, "queryListener"    # Lorg/cybergarage/upnp/control/QueryListener;

    .prologue
    .line 825
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    .line 826
    .local v1, "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 827
    .local v2, "tableSize":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 832
    return-void

    .line 829
    :cond_0
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v3

    .line 830
    .local v3, "var":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v3, p1}, Lorg/cybergarage/upnp/StateVariable;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSCPDURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "SCPDURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1092
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/ServiceData;->setSID(Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method public setServiceID(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceType"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setTimeout(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1122
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/upnp/xml/ServiceData;->setTimeout(J)V

    .line 1123
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1163
    iput-object p1, p0, Lorg/cybergarage/upnp/Service;->userData:Ljava/lang/Object;

    .line 1164
    return-void
.end method

.method public declared-synchronized stopNotifyThreads()V
    .locals 6

    .prologue
    .line 1001
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sub: stop NotifySubsriberThreads "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_dlna()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v2

    .line 1003
    .local v2, "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 1004
    .local v3, "subListCnt":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sub: stop TVGuoApp NotifySubsriberThreads Count="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1005
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 1013
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriberList;->clear()V

    .line 1015
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_tvguo()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v2

    .line 1016
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 1017
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sub: stop DLNA NotifySubsriberThreads Count="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1018
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_2

    .line 1026
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriberList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    monitor-exit p0

    return-void

    .line 1007
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v0

    .line 1008
    .local v0, "curSub":Lorg/cybergarage/upnp/event/Subscriber;
    if-eqz v0, :cond_1

    .line 1010
    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/Subscriber;->stop()V

    .line 1005
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1020
    .end local v0    # "curSub":Lorg/cybergarage/upnp/event/Subscriber;
    :cond_2
    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v0

    .line 1021
    .restart local v0    # "curSub":Lorg/cybergarage/upnp/event/Subscriber;
    if-eqz v0, :cond_3

    .line 1023
    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/Subscriber;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1001
    .end local v0    # "curSub":Lorg/cybergarage/upnp/event/Subscriber;
    .end local v1    # "n":I
    .end local v2    # "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    .end local v3    # "subListCnt":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/cybergarage/upnp/Service;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 203
    return-void
.end method
