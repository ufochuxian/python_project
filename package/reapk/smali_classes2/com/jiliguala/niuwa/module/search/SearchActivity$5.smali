.class Lcom/jiliguala/niuwa/module/search/SearchActivity$5;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/search/SearchActivity;->refreshNewSub()Lrx/l;
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
    .line 261
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ad;)V
    .locals 7
    .param p1, "response"    # Lokhttp3/ad;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 277
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$400(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "json":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/ad;->bytes()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "json":Ljava/lang/String;
    .local v1, "json":Ljava/lang/String;
    move-object v0, v1

    .line 288
    .end local v1    # "json":Ljava/lang/String;
    .restart local v0    # "json":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$400(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v6, v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1400(Lcom/jiliguala/niuwa/module/search/SearchActivity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->update(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 289
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1100(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1200(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->notifyDataSetChanged()V

    .line 297
    .end local v0    # "json":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "json":Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 289
    goto :goto_1

    .line 293
    .end local v0    # "json":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$900(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    goto :goto_2

    .line 285
    .restart local v0    # "json":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/16 v1, 0x8

    .line 269
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1100(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1200(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 270
    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 261
    check-cast p1, Lokhttp3/ad;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;->a(Lokhttp3/ad;)V

    return-void
.end method
