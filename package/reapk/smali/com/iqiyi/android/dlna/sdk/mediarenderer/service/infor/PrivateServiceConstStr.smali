.class public Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/PrivateServiceConstStr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A_ARG_TYPE_NOTIFYMSG:Ljava/lang/String; = "A_ARG_TYPE_NOTIFYMSG"

.field public static final CONTROL_URL:Ljava/lang/String; = "_urn:schemas-upnp-org:service:PrivateServer_control"

.field public static final EVENTSUB_URL:Ljava/lang/String; = "_urn:schemas-upnp-org:service:PrivateServer_event"

.field public static final INFOR:Ljava/lang/String; = "Infor"

.field public static final INSTANCE_ID:Ljava/lang/String; = "InstanceID"

.field public static final NOTIFY_MESSAGE:Ljava/lang/String; = "NotifyMessage"

.field public static final NOTIFY_MSG:Ljava/lang/String; = "NotifyMsg"

.field public static final RESULT:Ljava/lang/String; = "Result"

.field public static final SCPD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><scpd xmlns=\"urn:schemas-upnp-org:service-1-0\"><specVersion> <major>1</major><minor>0</minor></specVersion><serviceStateTable><stateVariable sendEvents=\"no\"><name>A_ARG_TYPE_InstanceID</name><dataType>ui4</dataType></stateVariable><stateVariable sendEvents=\"yes\"><name>A_ARG_TYPE_NOTIFYMSG</name><dataType>string</dataType></stateVariable><stateVariable sendEvents=\"no\"><name>A_ARG_TYPE_INFOR</name><dataType>string</dataType></stateVariable><stateVariable sendEvents=\"no\"><name>A_ARG_TYPE_SendMessage_Result</name><dataType>string</dataType></stateVariable></serviceStateTable><actionList><action><name>SendMessage</name><argumentList><argument><name>InstanceID</name><direction>in</direction><relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable></argument><argument><name>Infor</name><direction>in</direction><relatedStateVariable>A_ARG_TYPE_INFOR</relatedStateVariable></argument><argument><name>Result</name><direction>out</direction><relatedStateVariable>A_ARG_TYPE_SendMessage_Result</relatedStateVariable></argument></argumentList></action><action><name>NotifyMessage</name><argumentList><argument><name>NotifyMsg</name><direction>in</direction><relatedStateVariable>A_ARG_TYPE_NOTIFYMSG</relatedStateVariable></argument></argumentList></action></actionList></scpd>"

.field public static final SCPDURL:Ljava/lang/String; = "_urn:schemas-upnp-org:service:PrivateServer_scpd.xml"

.field public static final SEND_MESSAGE:Ljava/lang/String; = "SendMessage"

.field public static final SERVICE_ID:Ljava/lang/String; = "urn:upnp-org:serviceId:PrivateServer"

.field public static final SERVICE_NAME:Ljava/lang/String; = "PrivateServer"

.field public static final SERVICE_TYPE:Ljava/lang/String; = "urn:schemas-upnp-org:service:PrivateServer:1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
