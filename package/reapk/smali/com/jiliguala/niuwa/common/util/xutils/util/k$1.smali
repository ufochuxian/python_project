.class Lcom/jiliguala/niuwa/common/util/xutils/util/k$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/util/xutils/util/k;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/xutils/util/k;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/util/k;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k$1;->a:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 1
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k$1;->a:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/k;)Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k$1;->a:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/k;)Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;->reportSuccess()V

    .line 91
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k$1;->a:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/k;)Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k$1;->a:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/k;)Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;->reportFail()V

    .line 83
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/util/k$1;->a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    return-void
.end method