.class final Lcom/jakewharton/rxbinding/b/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/SeekBar;

.field final b:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/aa;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/SeekBar;
    .param p2, "shouldBeFromUser"    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/aq;->a:Landroid/widget/SeekBar;

    .line 17
    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/aq;->b:Ljava/lang/Boolean;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 23
    new-instance v0, Lcom/jakewharton/rxbinding/b/aq$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/aq$1;-><init>(Lcom/jakewharton/rxbinding/b/aq;Lrx/l;)V

    .line 37
    .local v0, "listener":Landroid/widget/SeekBar$OnSeekBarChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/aq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 39
    new-instance v1, Lcom/jakewharton/rxbinding/b/aq$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/aq$2;-><init>(Lcom/jakewharton/rxbinding/b/aq;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 46
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/aq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/aq;->a(Lrx/l;)V

    return-void
.end method
