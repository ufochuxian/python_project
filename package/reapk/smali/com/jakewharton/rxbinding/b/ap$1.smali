.class Lcom/jakewharton/rxbinding/b/ap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/ap;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/b/ap;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/ap;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/ap;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/ap$1;->b:Lcom/jakewharton/rxbinding/b/ap;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/ap$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/ap$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/ap$1;->a:Lrx/l;

    invoke-static {p1, p2, p3}, Lcom/jakewharton/rxbinding/b/ar;->a(Landroid/widget/SeekBar;IZ)Lcom/jakewharton/rxbinding/b/ar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/ap$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/ap$1;->a:Lrx/l;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/b/as;->a(Landroid/widget/SeekBar;)Lcom/jakewharton/rxbinding/b/as;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/ap$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/ap$1;->a:Lrx/l;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/b/at;->a(Landroid/widget/SeekBar;)Lcom/jakewharton/rxbinding/b/at;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 38
    :cond_0
    return-void
.end method
