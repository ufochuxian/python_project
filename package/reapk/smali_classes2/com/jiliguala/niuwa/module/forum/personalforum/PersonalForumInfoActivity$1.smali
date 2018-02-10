.class Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    .line 47
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->tgt:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/ag;)V

    goto :goto_0
.end method
