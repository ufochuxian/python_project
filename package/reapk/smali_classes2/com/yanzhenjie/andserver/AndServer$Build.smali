.class public final Lcom/yanzhenjie/andserver/AndServer$Build;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/andserver/AndServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Build"
.end annotation


# instance fields
.field private mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/andserver/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/yanzhenjie/andserver/Server$Listener;

.field private mPort:I

.field private mTimeout:I

.field private mWebSite:Lcom/yanzhenjie/andserver/website/WebSite;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x1d7a

    iput v0, p0, Lcom/yanzhenjie/andserver/AndServer$Build;->mPort:I

    .line 86
    const/16 v0, 0x2710

    iput v0, p0, Lcom/yanzhenjie/andserver/AndServer$Build;->mTimeout:I

    .line 106
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/yanzhenjie/andserver/AndServer$Build;->mHandlerMap:Ljava/util/Map;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/andserver/AndServer$Build;)I
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/andserver/AndServer$Build;

    .prologue
    .line 75
    iget v0, p0, Lcom/yanzhenjie/andserver/AndServer$Build;->mPort:I

    return v0
.end method

.method static synthetic access$100(Lcom/yanzhenjie/andserver/AndServer$Build;)I
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/andserver/AndServer$Build;

    .prologue
    .line 75
    iget v0, p0, Lcom/yanzhenjie/andserver/AndServer$Build;->mTimeout:I

    return v0
.end method

.method static synthetic access$200(Lcom/yanzhenjie/andserver/AndServer$Build;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/andserver/AndServer$Build;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yanzhenjie/andserver/AndServer$Build;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yanzhenjie/andserver/AndServer$Build;)Lcom/yanzhenjie/andserver/website/WebSite;
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/andserver/AndServer$Build;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yanzhenjie/andserver/AndServer$Build;->mWebSite:Lcom/yanzhenjie/andserver/website/WebSite;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yanzhenjie/andserver/AndServer$Build;)Lcom/yanzhenjie/andserver/Server$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/andserver/AndServer$Build;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yanzhenjie/andserver/AndServer$Build;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/yanzhenjie/andserver/AndServer;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/yanzhenjie/andserver/AndServer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yanzhenjie/andserver/AndServer;-><init>(Lcom/yanzhenjie/andserver/AndServer$Build;Lcom/yanzhenjie/andserver/AndServer$1;)V

    return-object v0
.end method

.method public listener(Lcom/yanzhenjie/andserver/Server$Listener;)Lcom/yanzhenjie/andserver/AndServer$Build;
    .locals 0
    .param p1, "listener"    # Lcom/yanzhenjie/andserver/Server$Listener;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/yanzhenjie/andserver/AndServer$Build;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    .line 158
    return-object p0
.end method

.method public port(I)Lcom/yanzhenjie/andserver/AndServer$Build;
    .locals 0
    .param p1, "mPort"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/yanzhenjie/andserver/AndServer$Build;->mPort:I

    .line 116
    return-object p0
.end method

.method public registerHandler(Ljava/lang/String;Lcom/yanzhenjie/andserver/RequestHandler;)Lcom/yanzhenjie/andserver/AndServer$Build;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/yanzhenjie/andserver/RequestHandler;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yanzhenjie/andserver/AndServer$Build;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-object p0
.end method

.method public timeout(I)Lcom/yanzhenjie/andserver/AndServer$Build;
    .locals 0
    .param p1, "mTimeout"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/yanzhenjie/andserver/AndServer$Build;->mTimeout:I

    .line 126
    return-object p0
.end method

.method public website(Lcom/yanzhenjie/andserver/website/WebSite;)Lcom/yanzhenjie/andserver/AndServer$Build;
    .locals 0
    .param p1, "mWebSite"    # Lcom/yanzhenjie/andserver/website/WebSite;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/yanzhenjie/andserver/AndServer$Build;->mWebSite:Lcom/yanzhenjie/andserver/website/WebSite;

    .line 147
    return-object p0
.end method
