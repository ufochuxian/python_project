.class Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;
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
            "Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    .prologue
    .line 348
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 349
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 350
    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->access$000(Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->onBackPressed()V

    .line 357
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
