.class Lcom/jiliguala/niuwa/module/course/main/CourseActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/course/main/CourseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/course/main/CourseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 490
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 494
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    .line 495
    .local v0, "activity":Lcom/jiliguala/niuwa/module/course/main/CourseActivity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->access$600(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->access$700(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)V

    .line 498
    :cond_0
    return-void
.end method
