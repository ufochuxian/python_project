.class Lcom/jakewharton/rxbinding/b/aq$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/aq;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/b/aq;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/aq;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/aq;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/aq$2;->a:Lcom/jakewharton/rxbinding/b/aq;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/aq$2;->a:Lcom/jakewharton/rxbinding/b/aq;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/b/aq;->a:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 42
    return-void
.end method
