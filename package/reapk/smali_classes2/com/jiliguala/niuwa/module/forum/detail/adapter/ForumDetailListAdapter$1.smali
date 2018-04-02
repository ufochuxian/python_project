.class Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 73
    const v3, 0x7f090558

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 74
    .local v2, "resId":I
    const v3, 0x7f090557

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "_id":Ljava/lang/String;
    const v3, 0x7f09055a

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 76
    .local v1, "isRoot":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v3

    invoke-virtual {v3, v0, v2, p1, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->showDeleteConfirmDlg(Ljava/lang/String;ILandroid/view/View;Z)V

    .line 80
    .end local v0    # "_id":Ljava/lang/String;
    .end local v1    # "isRoot":Z
    .end local v2    # "resId":I
    :cond_0
    return-void
.end method
