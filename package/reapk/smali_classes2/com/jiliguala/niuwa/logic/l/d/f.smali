.class public Lcom/jiliguala/niuwa/logic/l/d/f;
.super Lcom/jiliguala/niuwa/logic/l/d/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/l/a/a;)V
    .locals 1
    .param p1, "model"    # Lcom/jiliguala/niuwa/logic/l/a/a;

    .prologue
    .line 18
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/b/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/b/f;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/f;->a:Lcom/jiliguala/niuwa/logic/l/b/b;

    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/f;->a:Lcom/jiliguala/niuwa/logic/l/b/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/l/b/b;->a(Lcom/jiliguala/niuwa/logic/l/a/a;)Lcom/jiliguala/niuwa/logic/l/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->a(Lcn/sharesdk/framework/PlatformActionListener;)Lcom/jiliguala/niuwa/logic/l/b/b;

    .line 20
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 1
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "\u5206\u4eab\u6210\u529f"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/l/d/b;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 26
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "i"    # I
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    const-string v0, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/l/d/b;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 32
    return-void
.end method
