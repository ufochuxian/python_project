.class Lcom/jiliguala/niuwa/module/progress/ProgressActivity$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/progress/ProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/progress/ProgressActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 449
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 450
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 451
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    .line 455
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$1200(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "gvFlag":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x42f00000    # 120.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$100(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;I)V

    move v1, v2

    .line 469
    .end local v0    # "gvFlag":I
    :goto_0
    return v1

    .line 463
    .restart local v0    # "gvFlag":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, -0x3d100000    # -120.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$200(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;I)V

    move v1, v2

    .line 466
    goto :goto_0

    .line 469
    .end local v0    # "gvFlag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
