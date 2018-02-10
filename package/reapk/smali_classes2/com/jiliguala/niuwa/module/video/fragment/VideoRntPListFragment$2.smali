.class Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;->access$000(Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 69
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v1, Lcom/jiliguala/niuwa/logic/db/a/h;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/db/a/h;-><init>()V

    .line 71
    .local v1, "metaData":Lcom/jiliguala/niuwa/logic/db/a/h;
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/db/a/h;->a(Landroid/database/Cursor;)V

    .line 72
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;->access$100(Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;Ljava/lang/String;)V

    .line 73
    const/4 v2, 0x1

    .line 76
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "metaData":Lcom/jiliguala/niuwa/logic/db/a/h;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
