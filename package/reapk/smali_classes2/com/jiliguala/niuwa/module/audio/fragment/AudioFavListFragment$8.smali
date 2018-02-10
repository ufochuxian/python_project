.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->showDeleteFavDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 421
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 422
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/k/a;->c(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;->b:Ljava/lang/String;

    .line 426
    .local v1, "rid":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "bid":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v3

    .line 428
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    .line 429
    invoke-static {v4, v1, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->access$400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/logic/network/d;->c(Lokhttp3/ab;)Lrx/e;

    move-result-object v3

    .line 430
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 431
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 432
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8$1;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;)V

    .line 433
    invoke-virtual {v3, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 427
    invoke-virtual {v2, v3}, Lrx/i/b;->a(Lrx/m;)V

    .line 449
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->notifyDataSetChanged()V

    .line 450
    return-void
.end method
