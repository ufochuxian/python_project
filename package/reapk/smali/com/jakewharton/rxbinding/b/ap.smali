.class final Lcom/jakewharton/rxbinding/b/ap;
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
        "Lcom/jakewharton/rxbinding/b/ao;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/SeekBar;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/ap;->a:Landroid/widget/SeekBar;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lcom/jakewharton/rxbinding/b/ao;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Lcom/jakewharton/rxbinding/b/ao;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding/b/ap$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/ap$1;-><init>(Lcom/jakewharton/rxbinding/b/ap;Lrx/l;)V

    .line 40
    .local v0, "listener":Landroid/widget/SeekBar$OnSeekBarChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/ap;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 42
    new-instance v1, Lcom/jakewharton/rxbinding/b/ap$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/ap$2;-><init>(Lcom/jakewharton/rxbinding/b/ap;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 49
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/ap;->a:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/jakewharton/rxbinding/b/ap;->a:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/jakewharton/rxbinding/b/ar;->a(Landroid/widget/SeekBar;IZ)Lcom/jakewharton/rxbinding/b/ar;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/ap;->a(Lrx/l;)V

    return-void
.end method
