.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

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
    .line 95
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v2, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 97
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    new-instance v1, Lcom/jiliguala/niuwa/logic/db/a/a;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/db/a/a;-><init>()V

    .line 99
    .local v1, "metaData":Lcom/jiliguala/niuwa/logic/db/a/a;
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/db/a/a;->a(Landroid/database/Cursor;)V

    .line 100
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->access$000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;Ljava/lang/String;)V

    .line 101
    const/4 v2, 0x1

    .line 104
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "metaData":Lcom/jiliguala/niuwa/logic/db/a/a;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
