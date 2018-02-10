.class Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)V
    .locals 1
    .param p1, "shelfPresenterImpl"    # Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;->a:Ljava/lang/ref/WeakReference;

    .line 141
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    iget v1, p1, Landroid/os/Message;->what:I

    .line 147
    .local v1, "what":I
    packed-switch v1, :pswitch_data_0

    .line 156
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 162
    .end local v1    # "what":I
    :goto_0
    return-void

    .line 149
    .restart local v1    # "what":I
    :pswitch_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->access$200(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)V

    goto :goto_0

    .line 152
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 153
    .local v0, "page":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-static {v2, v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->access$300(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;I)V

    goto :goto_0

    .line 160
    .end local v0    # "page":I
    .end local v1    # "what":I
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
