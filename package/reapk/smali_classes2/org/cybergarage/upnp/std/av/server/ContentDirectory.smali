.class public Lorg/cybergarage/upnp/std/av/server/ContentDirectory;
.super Lorg/cybergarage/util/ThreadCore;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/control/ActionListener;
.implements Lorg/cybergarage/upnp/control/QueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cybergarage/upnp/std/av/server/ContentDirectory$ContentDirectoryUpdateListener;
    }
.end annotation


# static fields
.field public static final BROWSE:Ljava/lang/String; = "Browse"

.field public static final BROWSEDIRECTCHILDREN:Ljava/lang/String; = "BrowseDirectChildren"

.field public static final BROWSEFLAG:Ljava/lang/String; = "BrowseFlag"

.field public static final BROWSEMETADATA:Ljava/lang/String; = "BrowseMetadata"

.field public static final COMPLETED:Ljava/lang/String; = "COMPLETED"

.field public static final CONTAINERID:Ljava/lang/String; = "ContainerID"

.field public static final CONTAINERUPDATEIDS:Ljava/lang/String; = "ContainerUpdateIDs"

.field public static final CONTENT_EXPORT_URI:Ljava/lang/String; = "/ExportContent"

.field public static final CONTENT_ID:Ljava/lang/String; = "id"

.field public static final CONTENT_IMPORT_URI:Ljava/lang/String; = "/ImportContent"

.field public static final CREATEOBJECT:Ljava/lang/String; = "CreateObject"

.field public static final CREATEREFERENCE:Ljava/lang/String; = "CreateReference"

.field public static final CURRENTTAGVALUE:Ljava/lang/String; = "CurrentTagValue"

.field private static final DEFAULT_CONTENTUPDATE_INTERVAL:I = 0xea60

.field private static final DEFAULT_SYSTEMUPDATEID_INTERVAL:I = 0x7d0

.field public static final DELETERESOURCE:Ljava/lang/String; = "DeleteResource"

.field public static final DESTINATIONURI:Ljava/lang/String; = "DestinationURI"

.field public static final DESTROYOBJECT:Ljava/lang/String; = "DestroyObject"

.field public static final ELEMENTS:Ljava/lang/String; = "Elements"

.field public static final ERROR:Ljava/lang/String; = "ERROR"

.field public static final EXPORTRESOURCE:Ljava/lang/String; = "ExportResource"

.field public static final FILTER:Ljava/lang/String; = "Filter"

.field public static final GETSEARCHCAPABILITIES:Ljava/lang/String; = "GetSearchCapabilities"

.field public static final GETSORTCAPABILITIES:Ljava/lang/String; = "GetSortCapabilities"

.field public static final GETSYSTEMUPDATEID:Ljava/lang/String; = "GetSystemUpdateID"

.field public static final GETTRANSFERPROGRESS:Ljava/lang/String; = "GetTransferProgress"

.field public static final ID:Ljava/lang/String; = "Id"

.field public static final IMPORTRESOURCE:Ljava/lang/String; = "ImportResource"

.field public static final IN_PROGRESS:Ljava/lang/String; = "IN_PROGRESS"

.field public static final NEWID:Ljava/lang/String; = "NewID"

.field public static final NEWTAGVALUE:Ljava/lang/String; = "NewTagValue"

.field public static final NUMBERRETURNED:Ljava/lang/String; = "NumberReturned"

.field public static final OBJECTID:Ljava/lang/String; = "ObjectID"

.field public static final REQUESTEDCOUNT:Ljava/lang/String; = "RequestedCount"

.field public static final RESOURCEURI:Ljava/lang/String; = "ResourceURI"

.field public static final RESULT:Ljava/lang/String; = "Result"

.field public static final SCPD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n   </specVersion>\n   <actionList>\n      <action>\n         <name>ExportResource</name>\n         <argumentList>\n            <argument>\n               <name>SourceURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>DestinationURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>StopTransferResource</name>\n         <argumentList>\n            <argument>\n               <name>TransferID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>DestroyObject</name>\n         <argumentList>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>DeleteResource</name>\n         <argumentList>\n            <argument>\n               <name>ResourceURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>UpdateObject</name>\n         <argumentList>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>CurrentTagValue</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TagValueList</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NewTagValue</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TagValueList</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>Browse</name>\n         <argumentList>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>BrowseFlag</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_BrowseFlag</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Filter</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Filter</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>StartingIndex</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Index</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>RequestedCount</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>SortCriteria</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_SortCriteria</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Result</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NumberReturned</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TotalMatches</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>UpdateID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_UpdateID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetTransferProgress</name>\n         <argumentList>\n            <argument>\n               <name>TransferID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferStatus</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferStatus</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferLength</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferLength</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferTotal</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferTotal</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetSearchCapabilities</name>\n         <argumentList>\n            <argument>\n               <name>SearchCaps</name>\n               <direction>out</direction>\n               <relatedStateVariable>SearchCapabilities</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>CreateObject</name>\n         <argumentList>\n            <argument>\n               <name>ContainerID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Elements</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>ObjectID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Result</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>Search</name>\n         <argumentList>\n            <argument>\n               <name>ContainerID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>SearchCriteria</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_SearchCriteria</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Filter</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Filter</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>StartingIndex</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Index</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>RequestedCount</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>SortCriteria</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_SortCriteria</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Result</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NumberReturned</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TotalMatches</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>UpdateID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_UpdateID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetSortCapabilities</name>\n         <argumentList>\n            <argument>\n               <name>SortCaps</name>\n               <direction>out</direction>\n               <relatedStateVariable>SortCapabilities</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>ImportResource</name>\n         <argumentList>\n            <argument>\n               <name>SourceURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>DestinationURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>CreateReference</name>\n         <argumentList>\n            <argument>\n               <name>ContainerID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NewID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetSystemUpdateID</name>\n         <argumentList>\n            <argument>\n              <name>Id</name>\n               <direction>out</direction>\n               <relatedStateVariable>SystemUpdateID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n   </actionList>\n   <serviceStateTable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_SortCriteria</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferLength</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>TransferIDs</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_UpdateID</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_SearchCriteria</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Filter</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>ContainerUpdateIDs</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Result</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Index</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferID</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TagValueList</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_URI</name>\n         <dataType>uri</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ObjectID</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>SortCapabilities</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>SearchCapabilities</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Count</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_BrowseFlag</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>BrowseMetadata</allowedValue>\n            <allowedValue>BrowseDirectChildren</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SystemUpdateID</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferStatus</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>COMPLETED</allowedValue>\n            <allowedValue>ERROR</allowedValue>\n            <allowedValue>IN_PROGRESS</allowedValue>\n            <allowedValue>STOPPED</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferTotal</name>\n         <dataType>string</dataType>\n      </stateVariable>\n   </serviceStateTable>\n</scpd>"

.field public static final SEARCH:Ljava/lang/String; = "Search"

.field public static final SEARCHCAPABILITIES:Ljava/lang/String; = "SearchCapabilities"

.field public static final SEARCHCAPS:Ljava/lang/String; = "SearchCaps"

.field public static final SEARCHCRITERIA:Ljava/lang/String; = "SearchCriteria"

.field public static final SERVICE_TYPE:Ljava/lang/String; = "urn:schemas-upnp-org:service:ContentDirectory:1"

.field public static final SORTCAPABILITIES:Ljava/lang/String; = "SortCapabilities"

.field public static final SORTCAPS:Ljava/lang/String; = "SortCaps"

.field public static final SORTCRITERIA:Ljava/lang/String; = "SortCriteria"

.field public static final SOURCEURI:Ljava/lang/String; = "SourceURI"

.field public static final STARTINGINDEX:Ljava/lang/String; = "StartingIndex"

.field public static final STOPPED:Ljava/lang/String; = "STOPPED"

.field public static final STOPTRANSFERRESOURCE:Ljava/lang/String; = "StopTransferResource"

.field public static final SYSTEMUPDATEID:Ljava/lang/String; = "SystemUpdateID"

.field private static final TAG:Ljava/lang/String; = "ContentDirectory"

.field public static final TOTALMATCHES:Ljava/lang/String; = "TotalMatches"

.field public static final TRANSFERID:Ljava/lang/String; = "TransferID"

.field public static final TRANSFERIDS:Ljava/lang/String; = "TransferIDs"

.field public static final TRANSFERLENGTH:Ljava/lang/String; = "TransferLength"

.field public static final TRANSFERSTATUS:Ljava/lang/String; = "TransferStatus"

.field public static final TRANSFERTOTAL:Ljava/lang/String; = "TransferTotal"

.field public static final UPDATEID:Ljava/lang/String; = "UpdateID"

.field public static final UPDATEOBJECT:Ljava/lang/String; = "UpdateObject"


# instance fields
.field private contentUpdateInterval:J

.field private dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

.field private formatList:Lorg/cybergarage/upnp/std/av/server/object/FormatList;

.field private mDirectoryUpdateListener:Lorg/cybergarage/upnp/std/av/server/ContentDirectory$ContentDirectoryUpdateListener;

.field private maxContentID:I

.field private mediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

.field private mutex:Lorg/cybergarage/util/Mutex;

.field private rootNode:Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

.field private searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

.field private sortCapList:Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

.field private systemUpdateID:I

.field private systemUpdateIDInterval:J


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V
    .locals 2
    .param p1, "mserver"    # Lorg/cybergarage/upnp/std/av/server/MediaServer;

    .prologue
    const/4 v1, 0x0

    .line 322
    invoke-direct {p0}, Lorg/cybergarage/util/ThreadCore;-><init>()V

    .line 357
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mutex:Lorg/cybergarage/util/Mutex;

    .line 438
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/FormatList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/FormatList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->formatList:Lorg/cybergarage/upnp/std/av/server/object/FormatList;

    .line 478
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/SortCapList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortCapList:Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

    .line 527
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    .line 580
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    .line 324
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->setMediaServer(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V

    .line 326
    iput v1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->systemUpdateID:I

    .line 327
    iput v1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->maxContentID:I

    .line 329
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->setSystemUpdateInterval(J)V

    .line 330
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->setContentUpdateInterval(J)V

    .line 332
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->initRootNode()V

    .line 333
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->initSortCaps()V

    .line 334
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->initSearchCaps()V

    .line 335
    return-void
.end method

.method private browseActionReceived(Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;)Z
    .locals 1
    .param p1, "action"    # Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;

    .prologue
    .line 702
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->isMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->browseMetadataActionReceived(Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;)Z

    move-result v0

    .line 710
    :goto_0
    return v0

    .line 706
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->isDirectChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->browseDirectChildrenActionReceived(Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;)Z

    move-result v0

    goto :goto_0

    .line 710
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private browseDirectChildrenActionReceived(Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;)Z
    .locals 16
    .param p1, "action"    # Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;

    .prologue
    .line 819
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->getObjectID()Ljava/lang/String;

    move-result-object v9

    .line 821
    .local v9, "objID":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v7

    .line 822
    .local v7, "node":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isContainerNode()Z

    move-result v15

    if-nez v15, :cond_1

    .line 823
    :cond_0
    const/4 v15, 0x0

    .line 861
    :goto_0
    return v15

    :cond_1
    move-object v2, v7

    .line 825
    check-cast v2, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .line 826
    .local v2, "containerNode":Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-direct {v3}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;-><init>()V

    .line 827
    .local v3, "contentNodeList":Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v6

    .line 828
    .local v6, "nChildNodes":I
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_1
    if-lt v5, v6, :cond_5

    .line 835
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->getSortCriteria()Ljava/lang/String;

    move-result-object v12

    .line 836
    .local v12, "sortCriteria":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortContentNodeList(Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    move-result-object v13

    .line 838
    .local v13, "sortedContentNodeList":Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->getStartingIndex()I

    move-result v14

    .line 839
    .local v14, "startingIndex":I
    if-gtz v14, :cond_2

    .line 840
    const/4 v14, 0x0

    .line 841
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->getRequestedCount()I

    move-result v10

    .line 842
    .local v10, "requestedCount":I
    if-nez v10, :cond_3

    .line 843
    move v10, v6

    .line 845
    :cond_3
    new-instance v4, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;

    invoke-direct {v4}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;-><init>()V

    .line 846
    .local v4, "didlLite":Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    const/4 v8, 0x0

    .line 847
    .local v8, "numberReturned":I
    move v5, v14

    :goto_2
    if-ge v5, v6, :cond_4

    if-lt v8, v10, :cond_6

    .line 855
    :cond_4
    invoke-virtual {v4}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v11

    .line 856
    .local v11, "result":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->setResult(Ljava/lang/String;)V

    .line 857
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->setNumberReturned(I)V

    .line 858
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->setTotalMaches(I)V

    .line 859
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSystemUpdateID()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->setUpdateID(I)V

    .line 861
    const/4 v15, 0x1

    goto :goto_0

    .line 830
    .end local v4    # "didlLite":Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    .end local v8    # "numberReturned":I
    .end local v10    # "requestedCount":I
    .end local v11    # "result":Ljava/lang/String;
    .end local v12    # "sortCriteria":Ljava/lang/String;
    .end local v13    # "sortedContentNodeList":Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    .end local v14    # "startingIndex":I
    :cond_5
    invoke-virtual {v2, v5}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v1

    .line 831
    .local v1, "cnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->add(Ljava/lang/Object;)Z

    .line 828
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 849
    .end local v1    # "cnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .restart local v4    # "didlLite":Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    .restart local v8    # "numberReturned":I
    .restart local v10    # "requestedCount":I
    .restart local v12    # "sortCriteria":Ljava/lang/String;
    .restart local v13    # "sortedContentNodeList":Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    .restart local v14    # "startingIndex":I
    :cond_6
    invoke-virtual {v13, v5}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v1

    .line 850
    .restart local v1    # "cnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v4, v1}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 851
    invoke-virtual {v1, v9}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setParentID(Ljava/lang/String;)V

    .line 852
    add-int/lit8 v8, v8, 0x1

    .line 847
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private browseMetadataActionReceived(Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;)Z
    .locals 7
    .param p1, "action"    # Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;

    .prologue
    const/4 v4, 0x1

    .line 719
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->getObjectID()Ljava/lang/String;

    move-result-object v2

    .line 720
    .local v2, "objID":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v1

    .line 722
    .local v1, "node":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-nez v1, :cond_1

    .line 723
    const/4 v4, 0x0

    .line 737
    :cond_0
    :goto_0
    return v4

    .line 725
    :cond_1
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;-><init>()V

    .line 726
    .local v0, "didlLite":Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->setContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 727
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v3

    .line 729
    .local v3, "result":Ljava/lang/String;
    const-string v5, "Result"

    invoke-virtual {p1, v5, v3}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v5, "NumberReturned"

    invoke-virtual {p1, v5, v4}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->setArgumentValue(Ljava/lang/String;I)V

    .line 731
    const-string v5, "TotalMatches"

    invoke-virtual {p1, v5, v4}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->setArgumentValue(Ljava/lang/String;I)V

    .line 732
    const-string v5, "UpdateID"

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSystemUpdateID()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->setArgumentValue(Ljava/lang/String;I)V

    .line 734
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 735
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->print()V

    goto :goto_0
.end method

.method private createContainerNode()Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    .locals 1

    .prologue
    .line 430
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;-><init>()V

    .line 431
    .local v0, "node":Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    return-object v0
.end method

.method private getDirectoryList()Lorg/cybergarage/upnp/std/av/server/DirectoryList;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    return-object v0
.end method

.method private declared-synchronized getNextContentID()I
    .locals 1

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->maxContentID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->maxContentID:I

    .line 394
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->maxContentID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSearchCapabilities()Ljava/lang/String;
    .locals 7

    .prologue
    .line 563
    const-string v3, ""

    .line 564
    .local v3, "searchCapsStr":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNSearchCaps()I

    move-result v1

    .line 565
    .local v1, "nSearchCaps":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 573
    return-object v3

    .line 567
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSearchCap(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCap;

    move-result-object v2

    .line 568
    .local v2, "searchCap":Lorg/cybergarage/upnp/std/av/server/object/SearchCap;
    invoke-interface {v2}, Lorg/cybergarage/upnp/std/av/server/object/SearchCap;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    .line 569
    .local v4, "type":Ljava/lang/String;
    if-lez v0, :cond_1

    .line 570
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 571
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSearchContentList(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;)I
    .locals 4
    .param p1, "node"    # Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    .param p2, "searchCriList"    # Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;
    .param p3, "searchCapList"    # Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;
    .param p4, "contentNodeList"    # Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    .prologue
    .line 905
    invoke-virtual {p2, p1, p3}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->compare(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 906
    invoke-virtual {p4, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v2

    .line 909
    .local v2, "nChildNodes":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 915
    invoke-virtual {p4}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->size()I

    move-result v3

    return v3

    .line 911
    :cond_1
    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 912
    .local v0, "cnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isContainerNode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 913
    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .end local v0    # "cnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSearchContentList(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;)I

    .line 909
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSearchCriteriaList(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;
    .locals 8
    .param p1, "searchStr"    # Ljava/lang/String;

    .prologue
    .line 870
    new-instance v5, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;

    invoke-direct {v5}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;-><init>()V

    .line 872
    .local v5, "searchList":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;
    if-nez p1, :cond_1

    .line 899
    :cond_0
    return-object v5

    .line 874
    :cond_1
    const-string v7, "*"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 877
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v7, " \t\n\u000c\r"

    invoke-direct {v4, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .local v4, "searchCriTokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 880
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "prop":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 883
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "binOp":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 886
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 887
    .local v6, "value":Ljava/lang/String;
    const-string v7, "\""

    invoke-static {v6, v7}, Lorg/cybergarage/util/StringUtil;->trim(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 888
    const-string v1, ""

    .line 889
    .local v1, "logOp":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 890
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 891
    :cond_2
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    invoke-direct {v3}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;-><init>()V

    .line 892
    .local v3, "searchCri":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setProperty(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setOperation(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setValue(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setLogic(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v5, v3}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getSortCapabilities()Ljava/lang/String;
    .locals 7

    .prologue
    .line 510
    const-string v3, ""

    .line 511
    .local v3, "sortCapsStr":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNSortCaps()I

    move-result v1

    .line 512
    .local v1, "nSortCaps":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 520
    return-object v3

    .line 514
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSortCap(I)Lorg/cybergarage/upnp/std/av/server/object/SortCap;

    move-result-object v2

    .line 515
    .local v2, "sortCap":Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    invoke-interface {v2}, Lorg/cybergarage/upnp/std/av/server/object/SortCap;->getType()Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, "type":Ljava/lang/String;
    if-lez v0, :cond_1

    .line 517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 518
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSortCriteriaArray(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;
    .locals 4
    .param p1, "sortCriteria"    # Ljava/lang/String;

    .prologue
    .line 767
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;-><init>()V

    .line 768
    .local v0, "sortCriList":Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ", "

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_0

    .line 774
    return-object v0

    .line 771
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initRoot()V
    .locals 4

    .prologue
    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/http"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;

    const-string v2, "rootFile"

    invoke-direct {v1, v2, v0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    .local v1, "root":Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addDirectory(Lorg/cybergarage/upnp/std/av/server/Directory;)Z

    .line 636
    return-void
.end method

.method private initRootNode()V
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->rootNode:Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    .line 416
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->rootNode:Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    invoke-virtual {v0, p0}, Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;->setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 417
    return-void
.end method

.method private initSearchCaps()V
    .locals 1

    .prologue
    .line 557
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/search/IdSearchCap;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/search/IdSearchCap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addSearchCap(Lorg/cybergarage/upnp/std/av/server/object/SearchCap;)Z

    .line 558
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/search/TitleSearchCap;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/search/TitleSearchCap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addSearchCap(Lorg/cybergarage/upnp/std/av/server/object/SearchCap;)Z

    .line 559
    return-void
.end method

.method private initSortCaps()V
    .locals 1

    .prologue
    .line 503
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/sort/UPnPClassSortCap;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/sort/UPnPClassSortCap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addSortCap(Lorg/cybergarage/upnp/std/av/server/object/SortCap;)Z

    .line 504
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/sort/DCTitleSortCap;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/sort/DCTitleSortCap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addSortCap(Lorg/cybergarage/upnp/std/av/server/object/SortCap;)Z

    .line 505
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/sort/DCDateSortCap;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/sort/DCDateSortCap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addSortCap(Lorg/cybergarage/upnp/std/av/server/object/SortCap;)Z

    .line 506
    return-void
.end method

.method private searchActionReceived(Lorg/cybergarage/upnp/std/av/server/action/SearchAction;)Z
    .locals 20
    .param p1, "action"    # Lorg/cybergarage/upnp/std/av/server/action/SearchAction;

    .prologue
    .line 920
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->getContainerID()Ljava/lang/String;

    move-result-object v3

    .line 921
    .local v3, "contaierID":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v9

    .line 922
    .local v9, "node":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isContainerNode()Z

    move-result v19

    if-nez v19, :cond_1

    .line 923
    :cond_0
    const/16 v19, 0x0

    .line 967
    :goto_0
    return v19

    :cond_1
    move-object v4, v9

    .line 925
    check-cast v4, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .line 926
    .local v4, "containerNode":Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->getSearchCriteria()Ljava/lang/String;

    move-result-object v15

    .line 927
    .local v15, "searchCriteria":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSearchCriteriaList(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;

    move-result-object v14

    .line 928
    .local v14, "searchCriList":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSearchCapList()Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    move-result-object v13

    .line 931
    .local v13, "searchCapList":Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;
    new-instance v5, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-direct {v5}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;-><init>()V

    .line 932
    .local v5, "contentNodeList":Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v8

    .line 933
    .local v8, "nChildNodes":I
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_1
    if-lt v7, v8, :cond_5

    .line 939
    invoke-virtual {v5}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->size()I

    move-result v8

    .line 942
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->getSortCriteria()Ljava/lang/String;

    move-result-object v16

    .line 943
    .local v16, "sortCriteria":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortContentNodeList(Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    move-result-object v17

    .line 945
    .local v17, "sortedContentNodeList":Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->getStartingIndex()I

    move-result v18

    .line 946
    .local v18, "startingIndex":I
    if-gtz v18, :cond_2

    .line 947
    const/16 v18, 0x0

    .line 948
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->getRequestedCount()I

    move-result v11

    .line 949
    .local v11, "requestedCount":I
    if-nez v11, :cond_3

    .line 950
    move v11, v8

    .line 952
    :cond_3
    new-instance v6, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;

    invoke-direct {v6}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;-><init>()V

    .line 953
    .local v6, "didlLite":Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    const/4 v10, 0x0

    .line 954
    .local v10, "numberReturned":I
    move/from16 v7, v18

    :goto_2
    if-ge v7, v8, :cond_4

    if-lt v10, v11, :cond_7

    .line 961
    :cond_4
    invoke-virtual {v6}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v12

    .line 962
    .local v12, "result":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->setResult(Ljava/lang/String;)V

    .line 963
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->setNumberReturned(I)V

    .line 964
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->setTotalMaches(I)V

    .line 965
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSystemUpdateID()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->setUpdateID(I)V

    .line 967
    const/16 v19, 0x1

    goto :goto_0

    .line 935
    .end local v6    # "didlLite":Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    .end local v10    # "numberReturned":I
    .end local v11    # "requestedCount":I
    .end local v12    # "result":Ljava/lang/String;
    .end local v16    # "sortCriteria":Ljava/lang/String;
    .end local v17    # "sortedContentNodeList":Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    .end local v18    # "startingIndex":I
    :cond_5
    invoke-virtual {v4, v7}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v2

    .line 936
    .local v2, "cnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isContainerNode()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 937
    check-cast v2, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .end local v2    # "cnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v13, v5}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSearchContentList(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;)I

    .line 933
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 956
    .restart local v6    # "didlLite":Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    .restart local v10    # "numberReturned":I
    .restart local v11    # "requestedCount":I
    .restart local v16    # "sortCriteria":Ljava/lang/String;
    .restart local v17    # "sortedContentNodeList":Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    .restart local v18    # "startingIndex":I
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v2

    .line 957
    .restart local v2    # "cnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v6, v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 958
    add-int/lit8 v10, v10, 0x1

    .line 954
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method private setMediaServer(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V
    .locals 0
    .param p1, "mserver"    # Lorg/cybergarage/upnp/std/av/server/MediaServer;

    .prologue
    .line 345
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    .line 346
    return-void
.end method

.method private sortContentNodeList([Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Lorg/cybergarage/upnp/std/av/server/object/SortCap;Z)V
    .locals 8
    .param p1, "conNode"    # [Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .param p2, "sortCap"    # Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    .param p3, "ascSeq"    # Z

    .prologue
    .line 747
    array-length v4, p1

    .line 748
    .local v4, "nConNode":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-lt v2, v6, :cond_0

    .line 763
    return-void

    .line 750
    :cond_0
    move v5, v2

    .line 751
    .local v5, "selIdx":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_1
    if-lt v3, v4, :cond_1

    .line 759
    aget-object v1, p1, v2

    .line 760
    .local v1, "conTmp":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    aget-object v6, p1, v5

    aput-object v6, p1, v2

    .line 761
    aput-object v1, p1, v5

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 753
    .end local v1    # "conTmp":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_1
    aget-object v6, p1, v5

    aget-object v7, p1, v3

    invoke-interface {p2, v6, v7}, Lorg/cybergarage/upnp/std/av/server/object/SortCap;->compare(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)I

    move-result v0

    .line 754
    .local v0, "cmpRet":I
    if-eqz p3, :cond_2

    if-gez v0, :cond_2

    .line 755
    move v5, v3

    .line 756
    :cond_2
    if-nez p3, :cond_3

    if-lez v0, :cond_3

    .line 757
    move v5, v3

    .line 751
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public actionControlReceived(Lorg/cybergarage/upnp/Action;)Z
    .locals 10
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    const/4 v8, 0x1

    .line 655
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "actionName":Ljava/lang/String;
    const-string v9, "Browse"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 658
    new-instance v1, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;

    invoke-direct {v1, p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;-><init>(Lorg/cybergarage/upnp/Action;)V

    .line 659
    .local v1, "browseAct":Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;
    invoke-direct {p0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->browseActionReceived(Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;)Z

    move-result v8

    .line 693
    .end local v1    # "browseAct":Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;
    :goto_0
    return v8

    .line 662
    :cond_0
    const-string v9, "Search"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 664
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;

    invoke-direct {v3, p1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;-><init>(Lorg/cybergarage/upnp/Action;)V

    .line 665
    .local v3, "searchAct":Lorg/cybergarage/upnp/std/av/server/action/SearchAction;
    invoke-direct {p0, v3}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchActionReceived(Lorg/cybergarage/upnp/std/av/server/action/SearchAction;)Z

    move-result v8

    goto :goto_0

    .line 669
    .end local v3    # "searchAct":Lorg/cybergarage/upnp/std/av/server/action/SearchAction;
    :cond_1
    const-string v9, "GetSearchCapabilities"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 671
    const-string v9, "SearchCaps"

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v4

    .line 672
    .local v4, "searchCapsArg":Lorg/cybergarage/upnp/Argument;
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSearchCapabilities()Ljava/lang/String;

    move-result-object v5

    .line 673
    .local v5, "searchCapsStr":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 678
    .end local v4    # "searchCapsArg":Lorg/cybergarage/upnp/Argument;
    .end local v5    # "searchCapsStr":Ljava/lang/String;
    :cond_2
    const-string v9, "GetSortCapabilities"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 680
    const-string v9, "SortCaps"

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v6

    .line 681
    .local v6, "sortCapsArg":Lorg/cybergarage/upnp/Argument;
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSortCapabilities()Ljava/lang/String;

    move-result-object v7

    .line 682
    .local v7, "sortCapsStr":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 686
    .end local v6    # "sortCapsArg":Lorg/cybergarage/upnp/Argument;
    .end local v7    # "sortCapsStr":Ljava/lang/String;
    :cond_3
    const-string v9, "GetSystemUpdateID"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 688
    const-string v9, "Id"

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    .line 689
    .local v2, "idArg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSystemUpdateID()I

    move-result v9

    invoke-virtual {v2, v9}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    goto :goto_0

    .line 693
    .end local v2    # "idArg":Lorg/cybergarage/upnp/Argument;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public addDirectory(Lorg/cybergarage/upnp/std/av/server/Directory;)Z
    .locals 1
    .param p1, "dir"    # Lorg/cybergarage/upnp/std/av/server/Directory;

    .prologue
    .line 589
    invoke-virtual {p1, p0}, Lorg/cybergarage/upnp/std/av/server/Directory;->setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 590
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextContainerID()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/std/av/server/Directory;->setID(I)V

    .line 591
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/Directory;->updateContentList()V

    .line 592
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->rootNode:Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 596
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 598
    const/4 v0, 0x1

    return v0
.end method

.method public addPlugIn(Lorg/cybergarage/upnp/std/av/server/object/Format;)Z
    .locals 1
    .param p1, "format"    # Lorg/cybergarage/upnp/std/av/server/object/Format;

    .prologue
    .line 442
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->formatList:Lorg/cybergarage/upnp/std/av/server/object/FormatList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/FormatList;->add(Ljava/lang/Object;)Z

    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method public addSearchCap(Lorg/cybergarage/upnp/std/av/server/object/SearchCap;)Z
    .locals 1
    .param p1, "searchCap"    # Lorg/cybergarage/upnp/std/av/server/object/SearchCap;

    .prologue
    .line 531
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;->add(Ljava/lang/Object;)Z

    .line 532
    const/4 v0, 0x1

    return v0
.end method

.method public addSortCap(Lorg/cybergarage/upnp/std/av/server/object/SortCap;)Z
    .locals 1
    .param p1, "sortCap"    # Lorg/cybergarage/upnp/std/av/server/object/SortCap;

    .prologue
    .line 482
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortCapList:Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/SortCapList;->add(Ljava/lang/Object;)Z

    .line 483
    const/4 v0, 0x1

    return v0
.end method

.method public contentExportRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 20
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 1013
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v17

    .line 1015
    .local v17, "uri":Ljava/lang/String;
    const-string v18, "/ExportContent"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1017
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    .line 1091
    :goto_0
    return-void

    .line 1021
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPRequest;->getParameterList()Lorg/cybergarage/http/ParameterList;

    move-result-object v16

    .line 1022
    .local v16, "paramList":Lorg/cybergarage/http/ParameterList;
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lorg/cybergarage/http/ParameterList;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v13, v0, :cond_1

    .line 1032
    const-string v18, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/http/ParameterList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1037
    .local v10, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v14

    .line 1038
    .local v14, "node":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-nez v14, :cond_2

    .line 1040
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0

    .line 1024
    .end local v10    # "id":Ljava/lang/String;
    .end local v14    # "node":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/cybergarage/http/ParameterList;->getParameter(I)Lorg/cybergarage/http/Parameter;

    move-result-object v15

    .line 1025
    .local v15, "param":Lorg/cybergarage/http/Parameter;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lorg/cybergarage/http/Parameter;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Lorg/cybergarage/http/Parameter;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1022
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1043
    .end local v15    # "param":Lorg/cybergarage/http/Parameter;
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v14    # "node":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_2
    instance-of v0, v14, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 1045
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0

    :cond_3
    move-object v11, v14

    .line 1053
    check-cast v11, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    .line 1055
    .local v11, "itemNode":Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
    invoke-virtual {v11}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getContentLength()J

    move-result-wide v6

    .line 1056
    .local v6, "contentLen":J
    invoke-virtual {v11}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getMimeType()Ljava/lang/String;

    move-result-object v8

    .line 1057
    .local v8, "contentType":Ljava/lang/String;
    invoke-virtual {v11}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getContentInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 1059
    .local v5, "contentIn":Ljava/io/InputStream;
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_4

    if-nez v5, :cond_5

    .line 1061
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0

    .line 1065
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v12

    .line 1066
    .local v12, "mserver":Lorg/cybergarage/upnp/std/av/server/MediaServer;
    invoke-virtual {v12}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getConnectionManager()Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    move-result-object v4

    .line 1067
    .local v4, "conMan":Lorg/cybergarage/upnp/std/av/server/ConnectionManager;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->getNextConnectionID()I

    move-result v2

    .line 1068
    .local v2, "conID":I
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;

    invoke-direct {v3, v2}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;-><init>(I)V

    .line 1069
    .local v3, "conInfo":Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;
    invoke-virtual {v3, v8}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->setProtocolInfo(Ljava/lang/String;)V

    .line 1070
    const-string v18, "Output"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->setDirection(Ljava/lang/String;)V

    .line 1071
    const-string v18, "OK"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->setStatus(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v4, v3}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->addConnectionInfo(Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;)V

    .line 1075
    new-instance v9, Lorg/cybergarage/http/HTTPResponse;

    invoke-direct {v9}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 1076
    .local v9, "httpRes":Lorg/cybergarage/http/HTTPResponse;
    invoke-virtual {v9, v8}, Lorg/cybergarage/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 1077
    const/16 v18, 0xc8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 1078
    invoke-virtual {v9, v6, v7}, Lorg/cybergarage/http/HTTPResponse;->setContentLength(J)V

    .line 1079
    invoke-virtual {v9, v5}, Lorg/cybergarage/http/HTTPResponse;->setContentInputStream(Ljava/io/InputStream;)V

    .line 1081
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 1085
    :try_start_0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :goto_2
    invoke-virtual {v4, v2}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->removeConnectionInfo(I)V

    goto/16 :goto_0

    .line 1086
    :catch_0
    move-exception v18

    goto :goto_2
.end method

.method public contentServiceRequestFinished(I)V
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    .line 1002
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v1

    .line 1003
    .local v1, "mserver":Lorg/cybergarage/upnp/std/av/server/MediaServer;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getConnectionManager()Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    move-result-object v0

    .line 1004
    .local v0, "conMan":Lorg/cybergarage/upnp/std/av/server/ConnectionManager;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->removeConnectionInfo(I)V

    .line 1005
    return-void
.end method

.method public contentServiceRequestReceived(Ljava/lang/String;)I
    .locals 10
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 982
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v8

    .local v8, "node":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    move-object v6, v8

    .line 984
    check-cast v6, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    .line 986
    .local v6, "itemNode":Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getContentLength()J

    move-result-wide v4

    .line 987
    .local v4, "contentLen":J
    invoke-virtual {v6}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 989
    .local v3, "contentType":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v7

    .line 990
    .local v7, "mserver":Lorg/cybergarage/upnp/std/av/server/MediaServer;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getConnectionManager()Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    move-result-object v1

    .line 991
    .local v1, "conMan":Lorg/cybergarage/upnp/std/av/server/ConnectionManager;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->getNextConnectionID()I

    move-result v2

    .line 992
    .local v2, "connectionId":I
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;

    invoke-direct {v0, v2}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;-><init>(I)V

    .line 993
    .local v0, "conInfo":Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;
    invoke-virtual {v0, v3}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->setProtocolInfo(Ljava/lang/String;)V

    .line 994
    const-string v9, "Output"

    invoke-virtual {v0, v9}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->setDirection(Ljava/lang/String;)V

    .line 995
    const-string v9, "OK"

    invoke-virtual {v0, v9}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->setStatus(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->addConnectionInfo(Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;)V

    .line 997
    return v2
.end method

.method public findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 644
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getRootNode()Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    return-object v0
.end method

.method public getContentExportURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getWebServerPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentExportURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getWebServerPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentImportURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getWebServerPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentUpdateInterval()J
    .locals 2

    .prologue
    .line 1163
    iget-wide v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->contentUpdateInterval:J

    return-wide v0
.end method

.method public getDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->getDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;

    move-result-object v0

    return-object v0
.end method

.method public getDirectoryUpdateListener()Lorg/cybergarage/upnp/std/av/server/ContentDirectory$ContentDirectoryUpdateListener;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mDirectoryUpdateListener:Lorg/cybergarage/upnp/std/av/server/ContentDirectory$ContentDirectoryUpdateListener;

    return-object v0
.end method

.method public getFormat(I)Lorg/cybergarage/upnp/std/av/server/object/Format;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->formatList:Lorg/cybergarage/upnp/std/av/server/object/FormatList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/FormatList;->getFormat(I)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v0

    return-object v0
.end method

.method public getFormat(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/Format;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 448
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->formatList:Lorg/cybergarage/upnp/std/av/server/object/FormatList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/FormatList;->getFormat(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPPort()I
    .locals 1

    .prologue
    .line 1104
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getHTTPPort()I

    move-result v0

    return v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1099
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    return-object v0
.end method

.method public getNDirectories()I
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->size()I

    move-result v0

    return v0
.end method

.method public getNFormats()I
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->formatList:Lorg/cybergarage/upnp/std/av/server/object/FormatList;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/FormatList;->size()I

    move-result v0

    return v0
.end method

.method public getNSearchCaps()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;->size()I

    move-result v0

    return v0
.end method

.method public getNSortCaps()I
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortCapList:Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/SortCapList;->size()I

    move-result v0

    return v0
.end method

.method public getNextContainerID()I
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextContentID()I

    move-result v0

    return v0
.end method

.method public getNextItemID()I
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextContentID()I

    move-result v0

    return v0
.end method

.method public getRootNode()Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->rootNode:Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    return-object v0
.end method

.method public getSearchCap(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCap;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 547
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;->getSearchCap(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCap;

    move-result-object v0

    return-object v0
.end method

.method public getSearchCap(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SearchCap;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 552
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;->getSearchCap(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SearchCap;

    move-result-object v0

    return-object v0
.end method

.method public getSearchCapList()Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    return-object v0
.end method

.method public getSortCap(I)Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 493
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortCapList:Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/SortCapList;->getSortCap(I)Lorg/cybergarage/upnp/std/av/server/object/SortCap;

    move-result-object v0

    return-object v0
.end method

.method public getSortCap(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 498
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortCapList:Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/SortCapList;->getSortCap(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SortCap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSystemUpdateID()I
    .locals 1

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->systemUpdateID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSystemUpdateIDInterval()J
    .locals 2

    .prologue
    .line 1153
    iget-wide v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->systemUpdateIDInterval:J

    return-wide v0
.end method

.method public getWebServerPort()I
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getServerPort()I

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 362
    return-void
.end method

.method public queryControlReceived(Lorg/cybergarage/upnp/StateVariable;)Z
    .locals 1
    .param p1, "stateVar"    # Lorg/cybergarage/upnp/StateVariable;

    .prologue
    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllDirectories()Z
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->removeAllElements()V

    .line 618
    const/4 v0, 0x1

    return v0
.end method

.method public removeDirectory(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 603
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->getDirectory(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/Directory;

    move-result-object v0

    .line 604
    .local v0, "dirNode":Lorg/cybergarage/upnp/std/av/server/Directory;
    if-nez v0, :cond_0

    .line 605
    const/4 v1, 0x0

    .line 612
    :goto_0
    return v1

    .line 606
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->remove(Ljava/lang/Object;)Z

    .line 607
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->rootNode:Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;->removeNode(Lorg/cybergarage/xml/Node;)Z

    .line 610
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 612
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 1170
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v7

    .line 1171
    .local v7, "mserver":Lorg/cybergarage/upnp/std/av/server/MediaServer;
    const-string v9, "SystemUpdateID"

    invoke-virtual {v7, v9}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v8

    .line 1173
    .local v8, "varSystemUpdateID":Lorg/cybergarage/upnp/StateVariable;
    const/4 v6, 0x0

    .line 1174
    .local v6, "lastSystemUpdateID":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1175
    .local v4, "lastContentUpdateTime":J
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->initRoot()V

    .line 1176
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getDirectoryList()Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    move-result-object v9

    invoke-virtual {v9}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->update()V

    .line 1177
    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mDirectoryUpdateListener:Lorg/cybergarage/upnp/std/av/server/ContentDirectory$ContentDirectoryUpdateListener;

    if-eqz v9, :cond_0

    .line 1179
    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mDirectoryUpdateListener:Lorg/cybergarage/upnp/std/av/server/ContentDirectory$ContentDirectoryUpdateListener;

    invoke-interface {v9}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory$ContentDirectoryUpdateListener;->onDirectoryUpdate()V

    .line 1181
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->isRunnable()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1216
    :cond_1
    :goto_1
    const-string v9, "ContentDirectory thread has exited"

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1217
    return-void

    .line 1185
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSystemUpdateIDInterval()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->isRunnable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1196
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSystemUpdateID()I

    move-result v0

    .line 1197
    .local v0, "currSystemUpdateID":I
    if-eq v6, v0, :cond_3

    .line 1199
    invoke-virtual {v8, v0}, Lorg/cybergarage/upnp/StateVariable;->setValue(I)V

    .line 1200
    move v6, v0

    .line 1204
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1205
    .local v2, "currTime":J
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getContentUpdateInterval()J

    move-result-wide v10

    sub-long v12, v2, v4

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    .line 1207
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getDirectoryList()Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    move-result-object v9

    invoke-virtual {v9}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->update()V

    .line 1208
    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mDirectoryUpdateListener:Lorg/cybergarage/upnp/std/av/server/ContentDirectory$ContentDirectoryUpdateListener;

    if-eqz v9, :cond_4

    .line 1210
    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mDirectoryUpdateListener:Lorg/cybergarage/upnp/std/av/server/ContentDirectory$ContentDirectoryUpdateListener;

    invoke-interface {v9}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory$ContentDirectoryUpdateListener;->onDirectoryUpdate()V

    .line 1212
    :cond_4
    move-wide v4, v2

    goto :goto_0

    .line 1186
    .end local v0    # "currSystemUpdateID":I
    .end local v2    # "currTime":J
    :catch_0
    move-exception v1

    .line 1188
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public setContentUpdateInterval(J)V
    .locals 1
    .param p1, "itime"    # J

    .prologue
    .line 1158
    iput-wide p1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->contentUpdateInterval:J

    .line 1159
    return-void
.end method

.method public setDirectoryUpdateListener(Lorg/cybergarage/upnp/std/av/server/ContentDirectory$ContentDirectoryUpdateListener;)V
    .locals 0
    .param p1, "mDirectoryUpdateListener"    # Lorg/cybergarage/upnp/std/av/server/ContentDirectory$ContentDirectoryUpdateListener;

    .prologue
    .line 1226
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mDirectoryUpdateListener:Lorg/cybergarage/upnp/std/av/server/ContentDirectory$ContentDirectoryUpdateListener;

    .line 1227
    return-void
.end method

.method public setSystemUpdateInterval(J)V
    .locals 1
    .param p1, "itime"    # J

    .prologue
    .line 1148
    iput-wide p1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->systemUpdateIDInterval:J

    .line 1149
    return-void
.end method

.method public sortContentNodeList(Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    .locals 13
    .param p1, "contentNodeList"    # Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    .param p2, "sortCriteria"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x2d

    .line 779
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_2

    :cond_0
    move-object v9, p1

    .line 810
    :cond_1
    return-object v9

    .line 782
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->size()I

    move-result v4

    .line 783
    .local v4, "nChildNodes":I
    new-array v1, v4, [Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .line 784
    .local v1, "conNode":[Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v4, :cond_3

    .line 787
    invoke-direct {p0, p2}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSortCriteriaArray(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;

    move-result-object v7

    .line 788
    .local v7, "sortCritList":Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;->size()I

    move-result v5

    .line 789
    .local v5, "nSortCrit":I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v5, :cond_4

    .line 807
    new-instance v9, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-direct {v9}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;-><init>()V

    .line 808
    .local v9, "sortedContentNodeList":Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_1

    .line 809
    aget-object v10, v1, v3

    invoke-virtual {v9, v10}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->add(Ljava/lang/Object;)Z

    .line 808
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 785
    .end local v5    # "nSortCrit":I
    .end local v7    # "sortCritList":Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;
    .end local v9    # "sortedContentNodeList":Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    :cond_3
    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v10

    aput-object v10, v1, v3

    .line 784
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 791
    .restart local v5    # "nSortCrit":I
    .restart local v7    # "sortCritList":Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;
    :cond_4
    invoke-virtual {v7, v3}, Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;->getSortCriterion(I)Ljava/lang/String;

    move-result-object v8

    .line 792
    .local v8, "sortStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 793
    const/4 v0, 0x1

    .line 794
    .local v0, "ascSeq":Z
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 795
    .local v2, "firstSortChar":C
    if-ne v2, v12, :cond_5

    .line 796
    const/4 v0, 0x0

    .line 797
    :cond_5
    const/16 v10, 0x2b

    if-eq v2, v10, :cond_6

    if-ne v2, v12, :cond_7

    .line 798
    :cond_6
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 799
    :cond_7
    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSortCap(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SortCap;

    move-result-object v6

    .line 800
    .local v6, "sortCap":Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    if-nez v6, :cond_8

    .line 789
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 802
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  ascSeq = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 803
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  sortCap = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/cybergarage/upnp/std/av/server/object/SortCap;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 804
    invoke-direct {p0, v1, v6, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortContentNodeList([Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Lorg/cybergarage/upnp/std/av/server/object/SortCap;Z)V

    goto :goto_3
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 367
    return-void
.end method

.method public declared-synchronized updateSystemUpdateID()V
    .locals 1

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->systemUpdateID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->systemUpdateID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
