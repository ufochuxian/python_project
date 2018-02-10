.class Lcom/jiliguala/niuwa/module/game/GameActivity$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/game/GameActivity;->doRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/game/GameActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/game/GameActivity;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;)V
    .locals 6
    .param p1, "gameTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;

    .prologue
    .line 281
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GameTemplete$DataBean;

    if-nez v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getDownloadPopDialog()Lcom/jiliguala/niuwa/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/a/b/d;->a()V

    .line 283
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GameTemplete$DataBean;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/GameTemplete$DataBean;->packages:Ljava/util/ArrayList;

    .line 284
    .local v0, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 285
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$102(Lcom/jiliguala/niuwa/module/game/GameActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$100(Lcom/jiliguala/niuwa/module/game/GameActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 288
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$100(Lcom/jiliguala/niuwa/module/game/GameActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$100(Lcom/jiliguala/niuwa/module/game/GameActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$100(Lcom/jiliguala/niuwa/module/game/GameActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$202(Lcom/jiliguala/niuwa/module/game/GameActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-static {v1, p1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$300(Lcom/jiliguala/niuwa/module/game/GameActivity;Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;)V

    .line 292
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$100(Lcom/jiliguala/niuwa/module/game/GameActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->startDownload()V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 277
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 268
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a(Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;)V

    return-void
.end method
