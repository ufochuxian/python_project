.class public final enum Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

.field public static final enum ACCEPT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

.field public static final enum ACCEPT_LANGUAGE:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

.field public static final enum ACCEPT_RANGE:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

.field public static final enum CHARSET:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

.field public static final enum CONNECT_TIMEOUT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

.field public static final enum KEEP_CONNECT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

.field public static final enum LOCATION:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

.field public static final enum POST:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

.field public static final enum REFERER:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;


# instance fields
.field public content:Ljava/lang/String;

.field public header:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 9
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    const-string v1, "POST"

    const-string v2, "GET"

    invoke-direct {v0, v1, v5, v2}, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->POST:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    const-string v1, "ACCEPT"

    const-string v2, "Accept"

    const-string v3, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->ACCEPT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    .line 11
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    const-string v1, "ACCEPT_LANGUAGE"

    const-string v2, "Accept-Language"

    const-string v3, "zh-CN"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->ACCEPT_LANGUAGE:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    .line 12
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    const-string v1, "ACCEPT_RANGE"

    const-string v2, "Accept-Ranges"

    const-string v3, "bytes"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->ACCEPT_RANGE:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    const-string v1, "CHARSET"

    const-string v2, "Charset"

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->CHARSET:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    const-string v1, "CONNECT_TIMEOUT"

    const/4 v2, 0x5

    const-string v3, "5000"

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->CONNECT_TIMEOUT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    const-string v1, "KEEP_CONNECT"

    const/4 v2, 0x6

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->KEEP_CONNECT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    .line 13
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    const-string v1, "LOCATION"

    const/4 v2, 0x7

    const-string v3, "location"

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->LOCATION:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    const-string v1, "REFERER"

    const/16 v2, 0x8

    const-string v3, "referer"

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->REFERER:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    .line 8
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->POST:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->ACCEPT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->ACCEPT_LANGUAGE:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    aput-object v1, v0, v7

    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->ACCEPT_RANGE:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    aput-object v1, v0, v8

    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->CHARSET:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->CONNECT_TIMEOUT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->KEEP_CONNECT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->LOCATION:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->REFERER:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->$VALUES:[Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "header"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->header:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->$VALUES:[Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    return-object v0
.end method
