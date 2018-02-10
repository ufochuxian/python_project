.class Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;
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
            "Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;)V
    .locals 1
    .param p1, "ref"    # Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;

    .prologue
    .line 505
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 506
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 507
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 514
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->showConfirmPayResultDialog()V

    goto :goto_0

    .line 517
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->finish()V

    goto :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
