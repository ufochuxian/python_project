.class Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$w;

.field final synthetic b:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$2;->b:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$2;->a:Landroid/support/v7/widget/RecyclerView$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$2;->b:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$2;->a:Landroid/support/v7/widget/RecyclerView$w;

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->root:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->access$100(Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;Landroid/view/View;)V

    .line 152
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$2;->a(Ljava/lang/Void;)V

    return-void
.end method
