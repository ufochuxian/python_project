.class Lcom/jiliguala/niuwa/module/search/SearchActivity$6;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/search/SearchActivity;->loadMoreSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lokhttp3/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ad;)V
    .locals 8
    .param p1, "response"    # Lokhttp3/ad;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 337
    if-eqz p1, :cond_0

    .line 338
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "json":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/ad;->bytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "json":Ljava/lang/String;
    .local v1, "json":Ljava/lang/String;
    move-object v0, v1

    .line 345
    .end local v1    # "json":Ljava/lang/String;
    .restart local v0    # "json":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v2

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$400(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v6, v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1400(Lcom/jiliguala/niuwa/module/search/SearchActivity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v6, v7}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->update(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 346
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1100(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/view/View;

    move-result-object v5

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1200(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->notifyDataSetChanged()V

    .line 349
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1302(Lcom/jiliguala/niuwa/module/search/SearchActivity;Z)Z

    .line 352
    .end local v0    # "json":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v0    # "json":Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 346
    goto :goto_1

    .line 342
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1100(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1200(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1302(Lcom/jiliguala/niuwa/module/search/SearchActivity;Z)Z

    .line 333
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 329
    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 320
    check-cast p1, Lokhttp3/ad;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;->a(Lokhttp3/ad;)V

    return-void
.end method
