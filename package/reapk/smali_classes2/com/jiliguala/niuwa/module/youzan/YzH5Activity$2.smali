.class Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->requestServer(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/YzData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;->a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/YzData;)V
    .locals 5
    .param p1, "yzData"    # Lcom/jiliguala/niuwa/logic/network/json/YzData;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;->a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;->a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->access$202(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .line 140
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;->a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->access$200(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;->a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->access$200(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;->data:Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;

    if-eqz v2, :cond_0

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;->a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->access$200(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    move-result-object v2

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;->data:Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->setSignUrl(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;->a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->access$200(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    move-result-object v2

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;->data:Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->loadPage(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;->a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 145
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 146
    .local v1, "ft":Landroid/support/v4/app/an;
    const v2, 0x7f090158

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;->a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->access$200(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    move-result-object v3

    sget-object v4, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/an;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 147
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "fm":Landroid/support/v4/app/ag;
    .end local v1    # "ft":Landroid/support/v4/app/an;
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;->a:Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->access$100(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;)V

    .line 134
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;->a(Lcom/jiliguala/niuwa/logic/network/json/YzData;)V

    return-void
.end method
