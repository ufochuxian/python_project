.class Lcom/jiliguala/niuwa/module/video/VideoActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/video/VideoActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 3276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3277
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 3278
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/module/video/VideoActivity$c;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity$c;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 3272
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3286
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3287
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3400(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    .line 3288
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3200(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextSwitcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 3290
    :cond_0
    return-void
.end method
