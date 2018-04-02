.class Lcom/jiliguala/niuwa/logic/network/f$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/QiNiuTokenTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/logic/network/f;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/network/f;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/f;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/f$1;->b:Lcom/jiliguala/niuwa/logic/network/f;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/QiNiuTokenTemplate;)V
    .locals 3
    .param p1, "qiNiuTokenTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/QiNiuTokenTemplate;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/QiNiuTokenTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/QiNiuTokenTemplate$QiNiuTokenData;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/QiNiuTokenTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/QiNiuTokenTemplate$QiNiuTokenData;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/QiNiuTokenTemplate$QiNiuTokenData;->tok:Ljava/lang/String;

    .line 85
    .local v0, "token":Ljava/lang/String;
    sget-object v1, Lcom/jiliguala/niuwa/logic/network/f;->b:Lcom/qiniu/auth/Authorizer;

    invoke-virtual {v1, v0}, Lcom/qiniu/auth/Authorizer;->setUploadToken(Ljava/lang/String;)V

    .line 87
    .end local v0    # "token":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/f$1;->b:Lcom/jiliguala/niuwa/logic/network/f;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/f$1;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/network/f;->a(Lcom/jiliguala/niuwa/logic/network/f;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f$1;->b:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/f;->a(Lcom/jiliguala/niuwa/logic/network/f;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 69
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f$1;->b:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/f;->a(Lcom/jiliguala/niuwa/logic/network/f;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f$1;->b:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/f;->b(Lcom/jiliguala/niuwa/logic/network/f;)Lcom/jiliguala/niuwa/logic/network/f$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f$1;->b:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/f;->b(Lcom/jiliguala/niuwa/logic/network/f;)Lcom/jiliguala/niuwa/logic/network/f$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/logic/network/f$b;->onFailed()V

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f$1;->b:Lcom/jiliguala/niuwa/logic/network/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/network/f;->a(Lcom/jiliguala/niuwa/logic/network/f;Lcom/jiliguala/niuwa/logic/network/f$b;)Lcom/jiliguala/niuwa/logic/network/f$b;

    .line 78
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/QiNiuTokenTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/network/f$1;->a(Lcom/jiliguala/niuwa/logic/network/json/QiNiuTokenTemplate;)V

    return-void
.end method
