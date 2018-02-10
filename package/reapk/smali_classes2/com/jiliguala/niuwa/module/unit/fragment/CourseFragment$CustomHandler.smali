.class public Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomHandler"
.end annotation


# instance fields
.field public mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;)V
    .locals 1
    .param p1, "courseFragment"    # Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    .prologue
    .line 506
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 507
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 508
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 515
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->handleSubCourseStart()V

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_0
    .end packed-switch
.end method
