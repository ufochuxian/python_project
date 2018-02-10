.class Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;
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
            "Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Ljava/lang/String;)V
    .locals 1
    .param p1, "controller"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;->a:Ljava/lang/ref/WeakReference;

    .line 563
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;->b:Ljava/lang/String;

    .line 564
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$900(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$1100(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$1000(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 575
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$1200(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Ljava/lang/String;)V

    .line 577
    :cond_0
    return-void
.end method
