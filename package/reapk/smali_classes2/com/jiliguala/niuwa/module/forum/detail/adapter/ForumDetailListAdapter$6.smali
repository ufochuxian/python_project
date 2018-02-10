.class Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

.field final synthetic b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$6;->b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$6;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$6;->b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$600(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jlgl://user?uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$6;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$6;->b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/ag;)V

    .line 531
    return-void
.end method
