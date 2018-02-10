.class Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;
.super Lcom/jiliguala/niuwa/logic/image/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/logic/image/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;)V
    .locals 1
    .param p1, "listFragment"    # Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->getCurrentRadioIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->a(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->setSelectionPos(I)V

    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->notifyDataSetChanged()V

    .line 66
    :cond_1
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->d()V

    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    :cond_0
    return-void
.end method
