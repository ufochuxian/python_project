.class Lcom/jiliguala/niuwa/module/videofav/VideoFavClient$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->reportFavDataToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient$1;->a:Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 105
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->clearData()V

    .line 106
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient$1;->a:Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->access$000(Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 94
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient$1;->a:Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->access$000(Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 100
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 90
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient$1;->a(Ljava/lang/Void;)V

    return-void
.end method
