.class public Lcom/yanzhenjie/andserver/AndServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/andserver/AndServer$Build;
    }
.end annotation


# instance fields
.field private final mHandlerMap:Ljava/util/Map;
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

.field private final mListener:Lcom/yanzhenjie/andserver/Server$Listener;

.field private final mPort:I

.field private final mTimeout:I

.field private final mWebSite:Lcom/yanzhenjie/andserver/website/WebSite;


# direct methods
.method private constructor <init>(Lcom/yanzhenjie/andserver/AndServer$Build;)V
    .locals 1
    .param p1, "build"    # Lcom/yanzhenjie/andserver/AndServer$Build;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/yanzhenjie/andserver/AndServer$Build;->access$000(Lcom/yanzhenjie/andserver/AndServer$Build;)I

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/andserver/AndServer;->mPort:I

    .line 60
    invoke-static {p1}, Lcom/yanzhenjie/andserver/AndServer$Build;->access$100(Lcom/yanzhenjie/andserver/AndServer$Build;)I

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/andserver/AndServer;->mTimeout:I

    .line 61
    invoke-static {p1}, Lcom/yanzhenjie/andserver/AndServer$Build;->access$200(Lcom/yanzhenjie/andserver/AndServer$Build;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/AndServer;->mHandlerMap:Ljava/util/Map;

    .line 62
    invoke-static {p1}, Lcom/yanzhenjie/andserver/AndServer$Build;->access$300(Lcom/yanzhenjie/andserver/AndServer$Build;)Lcom/yanzhenjie/andserver/website/WebSite;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/AndServer;->mWebSite:Lcom/yanzhenjie/andserver/website/WebSite;

    .line 63
    invoke-static {p1}, Lcom/yanzhenjie/andserver/AndServer$Build;->access$400(Lcom/yanzhenjie/andserver/AndServer$Build;)Lcom/yanzhenjie/andserver/Server$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/AndServer;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/yanzhenjie/andserver/AndServer$Build;Lcom/yanzhenjie/andserver/AndServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/yanzhenjie/andserver/AndServer$Build;
    .param p2, "x1"    # Lcom/yanzhenjie/andserver/AndServer$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/yanzhenjie/andserver/AndServer;-><init>(Lcom/yanzhenjie/andserver/AndServer$Build;)V

    return-void
.end method


# virtual methods
.method public createServer()Lcom/yanzhenjie/andserver/Server;
    .locals 6

    .prologue
    .line 72
    new-instance v0, Lcom/yanzhenjie/andserver/DefaultServer;

    iget v1, p0, Lcom/yanzhenjie/andserver/AndServer;->mPort:I

    iget v2, p0, Lcom/yanzhenjie/andserver/AndServer;->mTimeout:I

    iget-object v3, p0, Lcom/yanzhenjie/andserver/AndServer;->mHandlerMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/yanzhenjie/andserver/AndServer;->mWebSite:Lcom/yanzhenjie/andserver/website/WebSite;

    iget-object v5, p0, Lcom/yanzhenjie/andserver/AndServer;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    invoke-direct/range {v0 .. v5}, Lcom/yanzhenjie/andserver/DefaultServer;-><init>(IILjava/util/Map;Lcom/yanzhenjie/andserver/website/WebSite;Lcom/yanzhenjie/andserver/Server$Listener;)V

    return-object v0
.end method
