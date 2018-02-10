.class public Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;
.super Landroid/support/v7/widget/RecyclerView$w;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public age:Landroid/widget/TextView;

.field public cTitle:Landroid/widget/TextView;

.field private mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/story/adapter/OnItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public root:Landroid/view/View;

.field public thumb:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/jiliguala/niuwa/module/story/adapter/OnItemClickListener;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/jiliguala/niuwa/module/story/adapter/OnItemClickListener;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    .line 35
    const v0, 0x7f0902a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->root:Landroid/view/View;

    .line 36
    const v0, 0x7f0900af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->thumb:Landroid/widget/ImageView;

    .line 37
    const v0, 0x7f090046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->age:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0900e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->cTitle:Landroid/widget/TextView;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->mListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/adapter/OnItemClickListener;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/story/adapter/OnItemClickListener;->onItemClick(Landroid/view/View;)V

    .line 48
    :cond_0
    return-void
.end method
