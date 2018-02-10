.class Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->showDeleteFavDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6;->c:Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 212
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/e;->a()Lcom/jiliguala/niuwa/logic/k/e;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/e;->c(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "bid":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6;->c:Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6;->c:Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6;->b:Ljava/lang/String;

    .line 217
    invoke-static {v3, v4, v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->access$400(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->e(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 218
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 219
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 220
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6$1;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6;)V

    .line 221
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 215
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 238
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6;->c:Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->access$500(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->notifyDataSetChanged()V

    .line 239
    return-void
.end method
