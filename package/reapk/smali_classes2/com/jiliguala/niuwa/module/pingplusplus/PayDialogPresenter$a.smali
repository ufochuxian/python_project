.class Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    .prologue
    .line 355
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 356
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;->a:Ljava/lang/ref/WeakReference;

    .line 357
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 373
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 365
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$200(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method
